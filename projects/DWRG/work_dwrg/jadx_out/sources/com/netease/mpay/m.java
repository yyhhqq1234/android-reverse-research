package com.netease.mpay;

import android.content.Context;
import android.content.pm.PackageManager;

/* loaded from: classes.dex */
public class m {
    public static boolean a(Context context) {
        return a(context, "com.tencent.mm");
    }

    private static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean b(Context context) {
        return a(context, "com.tencent.mobileqq");
    }
}
