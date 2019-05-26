package com.imcczy.utils;

import com.ibm.wala.dalvik.util.AndroidAnalysisScope;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ipa.cha.SeqClassHierarchyFactory;
import com.imcczy.App;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by zhangyanghua@meituan.com on 2019-02-01.
 */
public enum OPTIONS {

    //单例模式
    instance;
    private IClassHierarchy cha;
    private Path pathToAndroidJar;
    private Path oldApkPath;
    private Path newAPKPath;
    private App.MODE mode;
    private String[] sigs;
    public boolean init(){
        boolean flag = false;
        try {
            this.cha = SeqClassHierarchyFactory.make(AndroidAnalysisScope.setUpAndroidAnalysisScope(null,
                    null, OPTIONS.instance.getPathToAndroidJar()));
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    public Path getPathToAndroidJar() {
        return pathToAndroidJar;
    }

    public void setPathToAndroidJar(Path pathToAndroidJar) {
        this.pathToAndroidJar = pathToAndroidJar;
    }
    public void setPathToAndroidJar(String pathToAndroidJar) {
        this.pathToAndroidJar = Paths.get(pathToAndroidJar);
    }

    public IClassHierarchy getCha() {
        return cha;
    }

    public Path getOldApkPath() {
        return oldApkPath;
    }

    public void setOldApkPath(Path oldApkPath) {
        this.oldApkPath = oldApkPath;
    }
    public void setOldApkPath(String oldApkPath) {
        this.oldApkPath = Paths.get(oldApkPath);
    }

    public Path getNewAPKPath() {
        return newAPKPath;
    }

    public void setNewAPKPath(Path newAPKPath) {
        this.newAPKPath = newAPKPath;
    }

    public void setNewAPKPath(String  newAPKPath) {
        this.newAPKPath = Paths.get(newAPKPath);
    }

    public String[] getSigs() {
        return sigs;
    }

    public void setSigs(String[] sigs) {
        this.sigs = sigs;
    }


    public App.MODE getMode() {
        return mode;
    }

    public void setMode(App.MODE mode) {
        this.mode = mode;
    }
}
