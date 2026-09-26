package com.netease.androidcrashhandler;

import android.text.TextUtils;
import com.netease.androidcrashhandler.util.LogUtils;

/* loaded from: classes.dex */
public class MyConfigController {
    public static MyPostEntity getEntity(boolean onlyUseJavaCfg) {
        LogUtils.i("trace", "[MyConfigController] [getEntity]");
        MyPostEntity myPostEntity = null;
        if (0 == 0 && !onlyUseJavaCfg) {
            LogUtils.i("trace", "[getEntityFromFile] get entity from jnicfg");
            myPostEntity = getEntityFromCfg(".jnicfg");
        }
        if (myPostEntity == null) {
            LogUtils.i("trace", "[getEntityFromFile] get entity from javacfg");
            myPostEntity = getEntityFromCfg(".javacfg");
        }
        if (myPostEntity == null && !onlyUseJavaCfg) {
            LogUtils.i("trace", "[getEntityFromFile] get entity from current param");
            MyNetworkUtils myNetworkUtils = AndroidCrashHandler.getInstance().getNetworkUtils();
            if (myNetworkUtils != null) {
                myPostEntity = myNetworkUtils.getDefaultPostEntity();
            }
        }
        if (myPostEntity != null) {
            LogUtils.i("trace", "[getEntityFromFile] final entity content:");
            myPostEntity.showInfo();
        }
        return myPostEntity;
    }

    public static MyPostEntity getEntityFromCfg(String suffixName) {
        String[] CfgFileNames;
        LogUtils.i("trace", "[getEntityFromCfg] suffixName=" + suffixName);
        if (TextUtils.isEmpty(suffixName)) {
            LogUtils.i("trace", "[getEntityFromCfg] param error");
            return null;
        }
        MyPostEntity myPostEntity = null;
        MyFileUtils myFileUtils = AndroidCrashHandler.getInstance().getFileUtils();
        if (myFileUtils == null || (CfgFileNames = myFileUtils.getFilesBySuffix(suffixName)) == null || CfgFileNames.length <= 0) {
            return null;
        }
        for (String CfgFileName : CfgFileNames) {
            LogUtils.i("trace", "---------------------------------------------------------");
            LogUtils.i("trace", "getEntityFromJnicfg jnicfg file name:" + CfgFileName + " content:");
            myPostEntity = myFileUtils.getPostEntityByFile(CfgFileName, "");
            if (myPostEntity != null) {
                myPostEntity.showInfo();
            } else {
                LogUtils.i("trace", "content is null");
            }
        }
        return myPostEntity;
    }
}
