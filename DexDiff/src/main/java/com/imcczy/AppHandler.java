package com.imcczy;

import com.android.dx.merge.DexMerger;
import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.dalvik.classLoader.DexFileModule;
import com.ibm.wala.dalvik.classLoader.DexIClass;
import com.ibm.wala.dalvik.classLoader.DexModuleEntry;
import com.ibm.wala.types.ClassLoaderReference;
import com.imcczy.hashtree.HashTree;
import com.imcczy.hashtree.node.MethodNode;
import com.imcczy.utils.OPTIONS;
import info.debatty.java.stringsimilarity.JaroWinkler;
import info.debatty.java.stringsimilarity.Levenshtein;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.MultiDexContainer;

import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * Created by zhangyanghua@meituan.com on 2019-02-01.
 */
public class AppHandler {

    private Path oldApk = null;
    private Path newApk = null;

    private HashTree oldTree = new HashTree();
    private HashTree newTree = new HashTree();

    public AppHandler(Path newApk) {
        this.newApk = newApk;
    }

    public AppHandler(Path oldApk, Path newApk) {
        this.newApk = newApk;
        this.oldApk = oldApk;
    }

    public void init() {
        if (oldApk != null)
            oldTree.generate(null, parseDex(oldApk));
        if (newApk != null)
            newTree.generate(null, parseDex(newApk));
    }

    public Collection<IClass> parseDex(Path path) {
        System.out.println(path.getFileName());

        ArrayList<IClass> classes = new ArrayList<>();

        try {
            MultiDexContainer<? extends DexBackedDexFile> multiDex = DexFileFactory.loadDexContainer(path.toFile(), null);

            for (String dexEntry : multiDex.getDexEntryNames()) {
                classes.addAll(new DexFileModule(path.toFile(), dexEntry, DexFileModule.AUTO_INFER_API_LEVEL, OPTIONS.instance.getFilters())
                        .getEntrysCollection()
                        .stream()
                        .map(moduleEntry -> new DexIClass(ClassLoaderReference.Application, OPTIONS.instance.getCha(), (DexModuleEntry) moduleEntry))
                        .collect(Collectors.toList()));
            }
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
        return classes;
    }

    public void lookupMethod() {
        if (oldApk != null && newApk != null) {
            for (String sig : OPTIONS.instance.getSigs()) {
                if (oldTree.methodNodeMap.containsKey(sig)) {
                    MethodNode methodNode = oldTree.methodNodeMap.get(sig);
                    if (!findDirect(methodNode)) {

                    }
                } else {
                    System.out.println("ERROR: there is no such java method");
                }
            }
        }
    }

    private boolean findDirect(MethodNode node) {
        boolean[] flag = {false};
        newTree.methodNodeMap.forEach((k, n) -> {
            if (n.equals(node)) {
                flag[0] = true;
                System.out.println(n.signature);
            }
        });
        return flag[0];
    }

    private boolean findIndirect(MethodNode node) {
        boolean[] flag = {false};
        newTree.methodNodeMap.forEach((k, n) -> {

        });
        return flag[0];
    }

    public void stripAndMergeDex() {

        List<String> in = new ArrayList<>();
        try {
            MultiDexContainer<? extends DexBackedDexFile> multiDex = DexFileFactory.loadDexContainer(newApk.toFile(), null);

            for (String dexEntry : multiDex.getDexEntryNames()) {
                DexFile file = DexFileFactory.loadDexEntry(newApk.toFile(),
                        dexEntry, true, Opcodes.forApi(DexFileModule.AUTO_INFER_API_LEVEL));
                if (DexFileFactory.writeDexFile(dexEntry, file, OPTIONS.instance.getFilters()))
                    in.add(dexEntry);
            }

            DexMerger.main2("test.dex", in);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    public void diff() {
        JaroWinkler jw = new JaroWinkler();

        Double[] count = {0.0};
        Map<String, MethodNode> s,l;
        if (newTree.methodNodeMap.size() > oldTree.methodNodeMap.size()){
            s = oldTree.methodNodeMap;
            l = newTree.methodNodeMap;
        }else {
            l = oldTree.methodNodeMap;
            s = newTree.methodNodeMap;
        }
        s.forEach((k, n) -> {
            if (l.containsKey(k)) {
                if (n.equals(l.get(k))) {
                    count[0]++;
                }else {
                    System.out.println("sig not equal: "+k);
                    if (jw.similarity(n.opCodes, l.get(k).opCodes) > 0.8){
                        count[0]++;
                    }
                }
            }else {
                System.out.println("not found sig: "+k);
            }
        });

        System.out.println(count[0]/s.size());
    }

}
