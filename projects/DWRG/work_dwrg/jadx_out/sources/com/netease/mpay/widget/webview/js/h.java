package com.netease.mpay.widget.webview.js;

import android.content.Context;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class h {
    public static String a(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, ResIdReader.RES_TYPE_STRING, context.getPackageName());
        return identifier > 0 ? context.getString(identifier) : "";
    }
}
