package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class j extends ax {
    com.netease.mpay.e.b.f a;
    String b;

    public j(String str, com.netease.mpay.e.b.f fVar, String str2) {
        super(1, "/games/" + str + "/devices");
        this.a = fVar;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.f b(Context context, JSONObject jSONObject) {
        JSONObject a = a(jSONObject, com.alipay.sdk.packet.d.n);
        return new com.netease.mpay.server.response.f(e(a, "urs_device_id"), e(a, ResIdReader.RES_TYPE_ID), com.netease.mpay.widget.bd.a(e(a, "key")));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("mac", com.netease.mpay.widget.az.a(context)));
        if (!TextUtils.isEmpty(this.b)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.b));
        }
        arrayList.addAll(l.a(this.a));
        return arrayList;
    }
}
