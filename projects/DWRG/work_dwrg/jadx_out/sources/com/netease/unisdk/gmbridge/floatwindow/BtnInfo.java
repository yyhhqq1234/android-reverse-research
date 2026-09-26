package com.netease.unisdk.gmbridge.floatwindow;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class BtnInfo {
    public static final String BTN_CLOSE = "close";
    public static final String ICON_PREFIX = "uni_gm_f_";
    public Bitmap iconBmp;
    public String id;
    public String name;
    public String url;

    public String toString() {
        return "BtnInfo{id='" + this.id + "', name='" + this.name + "', url='" + this.url + "'}";
    }
}
