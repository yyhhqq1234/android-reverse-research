package com.netease.mpay.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.PermissionChecker;
import com.netease.mpay.Cdo;
import com.netease.mpay.MpayConfig;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.ja;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class at {
    public static void a(Activity activity, String str, String str2, MpayConfig mpayConfig, String[] strArr, ja.b bVar) {
        if (bVar == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23 || strArr == null || strArr.length < 1) {
            bVar.a(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : strArr) {
            if (!b(activity, str3)) {
                arrayList.add(str3);
            }
        }
        if (arrayList.size() < 1) {
            bVar.a(null);
        } else {
            com.netease.mpay.b.a(activity, b.a.PermissionActivity, new com.netease.mpay.b.q(new a.C0035a(str, str2, mpayConfig), new ja.a(arrayList), bVar), null, null);
        }
    }

    public static boolean a(Context context) {
        return c(context, "android.permission.SYSTEM_ALERT_WINDOW");
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().queryIntentServices(new Intent(context, Class.forName(str)), 65536).size() > 0;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion;
        } catch (PackageManager.NameNotFoundException e) {
            Cdo.a((Throwable) e);
            return 0;
        } catch (Exception e2) {
            Cdo.a((Throwable) e2);
            return 0;
        }
    }

    public static boolean b(Context context, String str) {
        try {
            return (b(context) >= 23 ? ContextCompat.checkSelfPermission(context, str) : PermissionChecker.checkSelfPermission(context, str)) == 0;
        } catch (NullPointerException e) {
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    private static boolean c(Context context, String str) {
        try {
            return context.checkCallingOrSelfPermission(str) == 0;
        } catch (NullPointerException e) {
            return false;
        } catch (Exception e2) {
            return false;
        }
    }
}
