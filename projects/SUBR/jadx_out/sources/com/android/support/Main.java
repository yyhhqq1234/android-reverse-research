package com.android.support;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes4.dex */
public class Main {
    private static native void CheckOverlayPermission(Context context);

    static {
        System.loadLibrary("MyLibName");
    }

    public static void StartWithoutPermission(Context context) {
        CrashHandler.init(context, true);
        if (context instanceof Activity) {
            Menu menu = new Menu(context);
            menu.SetWindowManagerActivity();
            menu.ShowMenu();
            return;
        }
        Toast.makeText(context, "Failed to launch the mod menu\n", 1).show();
    }

    public static void Start(Context context) {
        CrashHandler.init(context, false);
        CheckOverlayPermission(context);
    }
}
