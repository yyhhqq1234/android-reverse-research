package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.a.ax;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class l extends ax {
    String a;
    com.netease.mpay.e.b.f b;
    String c;

    public l(String str, com.netease.mpay.e.b.f fVar, String str2) {
        super(1, "/api/devices/upload");
        this.a = str;
        this.b = fVar;
        this.c = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList a(com.netease.mpay.e.b.f fVar) {
        ArrayList arrayList = new ArrayList();
        if (fVar != null) {
            arrayList.add(new com.netease.mpay.widget.a.a("unique_id", fVar.l));
            arrayList.add(new com.netease.mpay.widget.a.a("brand", fVar.a));
            arrayList.add(new com.netease.mpay.widget.a.a("device_name", fVar.c));
            arrayList.add(new com.netease.mpay.widget.a.a("device_type", fVar.b));
            arrayList.add(new com.netease.mpay.widget.a.a("device_model", fVar.d));
            arrayList.add(new com.netease.mpay.widget.a.a("resolution", fVar.e));
            arrayList.add(new com.netease.mpay.widget.a.a("system_name", fVar.f));
            arrayList.add(new com.netease.mpay.widget.a.a("system_version", fVar.g));
            if (!TextUtils.isEmpty(fVar.n)) {
                arrayList.add(new com.netease.mpay.widget.a.a("udid", fVar.n));
            }
            if (!TextUtils.isEmpty(fVar.m)) {
                arrayList.add(new com.netease.mpay.widget.a.a("app_channel", fVar.m));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.g b(Context context, JSONObject jSONObject) {
        return new com.netease.mpay.server.response.g(a(jSONObject, "upload_time", 0L));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("version", ax.a.a(context).c));
        if (!TextUtils.isEmpty(this.c)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.c));
        }
        arrayList.addAll(a(this.b));
        return arrayList;
    }
}
