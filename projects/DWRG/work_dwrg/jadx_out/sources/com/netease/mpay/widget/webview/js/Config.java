package com.netease.mpay.widget.webview.js;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class Config {
    public String appType;
    public boolean debug;
    public boolean isLandscape;
    public b uploadFile = new b(this);
    public String versionCode;

    public Config(boolean z, String str, boolean z2, String str2) {
        this.isLandscape = z;
        this.versionCode = str;
        this.debug = z2;
        this.appType = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public Config enableUploadFile(Integer num) {
        this.uploadFile = new b(this, num);
        return this;
    }
}
