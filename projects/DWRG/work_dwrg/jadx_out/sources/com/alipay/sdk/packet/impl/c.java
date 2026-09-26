package com.alipay.sdk.packet.impl;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.gwprotocol.JsonSerializer;
import im.yixin.sdk.http.multipart.FilePart;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c extends com.alipay.sdk.packet.d {
    public static final String t = "log_v";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final List<Header> a(boolean z, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.a, String.valueOf(z)));
        arrayList.add(new BasicHeader("content-type", FilePart.DEFAULT_CONTENT_TYPE));
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.g, "CBC"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final String c() throws JSONException {
        HashMap hashMap = new HashMap();
        hashMap.put(com.alipay.sdk.packet.d.i, "/sdk/log");
        hashMap.put(com.alipay.sdk.packet.d.j, JsonSerializer.VERSION);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(t, "1.0");
        return a((HashMap<String, String>) hashMap, (HashMap<String, String>) hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final JSONObject a() throws JSONException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.sdk.packet.d
    public final String a(String str, JSONObject jSONObject) {
        return str;
    }

    @Override // com.alipay.sdk.packet.d
    public final com.alipay.sdk.packet.b a(Context context, String str) throws Throwable {
        return a(context, str, "http://mcgw.alipay.com/sdklog.do", true);
    }
}
