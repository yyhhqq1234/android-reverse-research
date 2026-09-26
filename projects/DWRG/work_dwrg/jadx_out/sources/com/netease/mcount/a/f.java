package com.netease.mcount.a;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class f {
    protected abstract c a(int i, String str, HashMap hashMap, byte[] bArr, int i2, int i3);

    public c a(String str, HashMap hashMap, JSONObject jSONObject, int i, int i2) {
        byte[] bArr = null;
        if (jSONObject != null) {
            try {
                bArr = g.a(new ByteArrayInputStream(jSONObject.toString().getBytes("UTF-8")));
            } catch (UnsupportedEncodingException e) {
                throw new b(1, e.getMessage());
            } catch (IOException e2) {
                throw new b(4, e2.getMessage());
            }
        }
        return a(1, str, hashMap, bArr, i, i2);
    }
}
