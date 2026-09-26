package com.netease.download.listener;

import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DownloadResult {
    private static DownloadResult sDownloadResult = null;
    public ArrayList<DownloadResultUnit> mDownloadResultList = new ArrayList<>();

    private DownloadResult() {
    }

    public static DownloadResult getInstances() {
        if (sDownloadResult == null) {
            sDownloadResult = new DownloadResult();
        }
        return sDownloadResult;
    }

    public void add(String fileName, int code) {
        DownloadResultUnit downloadResultUnit = new DownloadResultUnit(fileName, code);
        this.mDownloadResultList.add(downloadResultUnit);
    }

    /* loaded from: classes.dex */
    public static class DownloadResultUnit {
        public int mCode;
        public String mFileName;

        public DownloadResultUnit(String fileName, int code) {
            this.mFileName = fileName;
            this.mCode = code;
        }

        public String toString() {
            return "mFileName=" + this.mFileName + ", mCode=" + this.mCode;
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
