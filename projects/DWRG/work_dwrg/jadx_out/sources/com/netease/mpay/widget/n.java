package com.netease.mpay.widget;

import android.app.Activity;
import android.content.Context;
import android.view.WindowManager;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class n {
    private static LinearLayout a;

    public static void a(Context context) {
        if (a != null) {
            b(context).removeView(a);
            a = null;
        }
    }

    public static void a(Context context, String str, String str2, String str3, String str4, be beVar) {
        if (a()) {
            return;
        }
        if (beVar == null) {
            r.setText(str);
            a = new r(context);
        } else {
            a = beVar.a();
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (context instanceof Activity) {
            layoutParams.type = 2;
        } else {
            layoutParams.type = 2002;
        }
        layoutParams.format = -2;
        layoutParams.flags = 40;
        if (str2 != null) {
            layoutParams.gravity = Integer.valueOf(str2).intValue();
        } else {
            layoutParams.gravity = 49;
        }
        if (str3 != null) {
            layoutParams.x = Integer.valueOf(str3).intValue();
        }
        if (str4 != null) {
            layoutParams.y = Integer.valueOf(str4).intValue();
        } else {
            layoutParams.y = 35;
        }
        layoutParams.width = beVar == null ? r.a : beVar.b();
        layoutParams.height = beVar == null ? r.b : beVar.c();
        b(context).addView(a, layoutParams);
    }

    public static boolean a() {
        return a != null;
    }

    private static WindowManager b(Context context) {
        return (WindowManager) context.getSystemService("window");
    }
}
