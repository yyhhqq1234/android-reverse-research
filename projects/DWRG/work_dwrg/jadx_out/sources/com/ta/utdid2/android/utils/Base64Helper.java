package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;

/* loaded from: classes.dex */
public class Base64Helper {
    @TargetApi(8)
    public static String encodeToString(byte[] bArr, int i) {
        return android.util.Base64.encodeToString(bArr, i);
    }
}
