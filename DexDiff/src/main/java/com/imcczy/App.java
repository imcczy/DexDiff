package com.imcczy;

import com.android.dx.merge.DexMerger;
import com.ibm.wala.dalvik.classLoader.DexFileModule;
import com.ibm.wala.dalvik.classLoader.DexIClass;
import com.ibm.wala.dalvik.classLoader.DexModuleEntry;
import com.ibm.wala.dalvik.util.AndroidAnalysisScope;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.cha.ClassHierarchyFactory;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.types.ClassLoaderReference;
import com.imcczy.hashtree.HashTree;
import com.imcczy.hashtree.node.MethodNode;
import com.imcczy.utils.OPTIONS;
import org.apache.commons.configuration2.Configuration;
import org.apache.commons.configuration2.builder.fluent.Configurations;
import org.apache.commons.configuration2.ex.ConfigurationException;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.iface.MultiDexContainer;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * Hello world!
 */
public class App {

    public enum MODE {
        MERGE_DEX, DIFF;
    }

    public static void main(String[] args) {
        long t0 = System.nanoTime();
        if (args.length != 1) {
            System.out.println("Usage: java -jar xxx.jar path-to-config-file");
            return;
        }
        if (!parseOptions(args[0])) {
            System.out.println("Error: init parse failed");
            return;
        }
        AppHandler appHandler;
        switch (OPTIONS.instance.getMode()) {
            case DIFF:
                appHandler = new AppHandler(OPTIONS.instance.getOldApkPath(), OPTIONS.instance.getNewAPKPath());
                appHandler.init();
                appHandler.lookupMethod();
                System.out.println("\nTTTTTTTTT" + TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - t0));
                break;
            case MERGE_DEX:
                test2();
                break;
            default:
                break;
        }

    }

    public static void test2() {
        List<String> filters = new ArrayList<>();
        filters.add("Lcom/MobileTicket");
        filters.add("Lcom/alipay");
        List<String> in = new ArrayList<>();
        try {
            MultiDexContainer<? extends DexBackedDexFile> multiDex = DexFileFactory.loadDexContainer(OPTIONS.instance.getNewAPKPath().toFile(), null);

            for (String dexEntry : multiDex.getDexEntryNames()) {
                DexFile file =DexFileFactory.loadDexEntry(OPTIONS.instance.getNewAPKPath().toFile(),
                        dexEntry, true, Opcodes.forApi(DexFileModule.AUTO_INFER_API_LEVEL));
                if (DexFileFactory.writeDexFile(dexEntry,file,filters))
                    in.add(dexEntry);
            }

            DexMerger.main2("test.dex",in);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    public static void test() {
        System.out.println("Hello World!");
        long t0 = System.nanoTime();
        try {
            final AnalysisScope scope1 = AndroidAnalysisScope.setUpAndroidAnalysisScope(new File("/Users/imcczy/Downloads/wechat/weixin703android1400.apk").toURI(), null /* no exclusions */, null /* we always pass an android lib */, new File("/Users/imcczy/Tools/SDK/platforms/android-28/android.jar").toURI());

            IClassHierarchy cha1 = ClassHierarchyFactory.makeWithRoot(scope1);
            HashTree ht1 = new HashTree();
            ht1.generate(cha1, null);
            final AnalysisScope scope2 = AndroidAnalysisScope.setUpAndroidAnalysisScope(new File("/Users/imcczy/Downloads/wechat/weixin700android1380.apk").toURI(), null /* no exclusions */, null /* we always pass an android lib */, new File("/Users/imcczy/Tools/SDK/platforms/android-28/android.jar").toURI());
            IClassHierarchy cha2 = ClassHierarchyFactory.makeWithRoot(scope2);
            HashTree ht2 = new HashTree();
            ht2.generate(cha2, null);
            if (ht2.methodNodeMap.containsKey("com.tencent.mm.sdk.platformtools.bo.JF(I)Ljava/lang/String;")) {
                MethodNode node = ht2.methodNodeMap.get("com.tencent.mm.sdk.platformtools.bo.JF(I)Ljava/lang/String;");
                boolean found = false;
                ht1.methodNodeMap.forEach((k, n) -> {
                    if (n.equals(node)) {
                        System.out.println(n.signature);
                    }
                });
            }
        } catch (Exception ioe) {
            ioe.printStackTrace();
        }

        System.out.println("\nTTTTTTTTT" + TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - t0));

    }

    private static boolean parseOptions(String path) {
        Configuration configuration = null;
        try {
            Configurations configs = new Configurations();
            configuration = configs.properties(new File(path));
        } catch (ConfigurationException e) {
            throw new RuntimeException(e);
        }
        if (configuration == null) {
            return false;
        }

        OPTIONS.instance.setMode(MODE.valueOf(configuration.getString("mode")));
        OPTIONS.instance.setPathToAndroidJar(configuration.getString("AndroidJarPath"));
        OPTIONS.instance.setNewAPKPath(configuration.getString("ApkPath"));
        if (MODE.DIFF == OPTIONS.instance.getMode()) {
            OPTIONS.instance.setOldApkPath(configuration.getString("oldApkPath"));
            OPTIONS.instance.setSigs(configuration.getString("signature").split(","));
        }

        return OPTIONS.instance.init();
    }
}
