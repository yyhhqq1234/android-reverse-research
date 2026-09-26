package com.netease.download.storage;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Build;
import android.os.StatFs;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.File;

@SuppressLint({"NewApi"})
@TargetApi(18)
/* loaded from: classes.dex */
public class StorageUtil {
    public static boolean canStore(String pStoragePath, long pNeedSize) {
        return getFreeSpaceSize(pStoragePath) > pNeedSize;
    }

    private static long getFreeSpaceSize(String pStoragePath) {
        long blockSize;
        long availableBlocks;
        File path = new File(pStoragePath);
        if (!path.isDirectory()) {
            path = path.getParentFile();
        }
        if (path != null && !path.exists()) {
            path.mkdirs();
        }
        try {
            StatFs sf = new StatFs(path.getPath());
            try {
                if (isVersionOrGreaterThan(18)) {
                    blockSize = sf.getBlockSizeLong();
                    availableBlocks = sf.getAvailableBlocksLong();
                } else {
                    blockSize = sf.getBlockSize();
                    availableBlocks = sf.getAvailableBlocks();
                }
                return blockSize * availableBlocks;
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
                return 0L;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private static boolean isVersionOrGreaterThan(int version) {
        return Build.VERSION.SDK_INT >= version;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
