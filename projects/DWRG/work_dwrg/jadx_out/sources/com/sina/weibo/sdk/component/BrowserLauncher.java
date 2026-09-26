package com.sina.weibo.sdk.component;

/* compiled from: BrowserRequestParamBase.java */
/* loaded from: classes.dex */
enum BrowserLauncher {
    AUTH,
    SHARE,
    WIDGET,
    COMMON,
    GAME;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static BrowserLauncher[] valuesCustom() {
        BrowserLauncher[] valuesCustom = values();
        int length = valuesCustom.length;
        BrowserLauncher[] browserLauncherArr = new BrowserLauncher[length];
        System.arraycopy(valuesCustom, 0, browserLauncherArr, 0, length);
        return browserLauncherArr;
    }
}
