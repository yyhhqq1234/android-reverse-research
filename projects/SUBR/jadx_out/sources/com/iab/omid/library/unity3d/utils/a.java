package com.iab.omid.library.unity3d.utils;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.unity3d.adsession.DeviceCategory;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    private static UiModeManager a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = a;
        if (uiModeManager == null) {
            return DeviceCategory.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        if (currentModeType != 1) {
            return currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV;
        }
        return DeviceCategory.MOBILE;
    }

    public static void a(Context context) {
        if (context != null) {
            a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
