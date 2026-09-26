package com.netease.dwrg;

import android.os.Build;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class OutlawDeviceDetector {
    private static boolean canExecuteSuCommand() {
        try {
            Runtime.getRuntime().exec("su");
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    private static boolean hasSuperuserApk() {
        return new File("/system/app/Superuser.apk").exists();
    }

    private static boolean isTestKeyBuild() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    /* JADX WARN: Unreachable blocks removed: 7, instructions: 7 */
    public static boolean isRooted() {
        return false;
    }
}
