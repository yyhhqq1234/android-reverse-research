package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.Cdo;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class at extends ax {
    String a;
    String b;
    String c;
    String d;
    String e;

    public at(String str, String str2, String str3, String str4, String str5) {
        super(1, "/api/qrcode/confirm_login");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(BaseConstants.NET_KEY_uuid, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        if (!TextUtils.isEmpty(this.d)) {
            arrayList.add(new com.netease.mpay.widget.a.a("udid", this.d));
        }
        if (!TextUtils.isEmpty(this.e)) {
            try {
                JSONObject jSONObject = new JSONObject(this.e);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object obj = jSONObject.get(next);
                    if (obj != null) {
                        arrayList.add(new com.netease.mpay.widget.a.a(next, obj.toString()));
                    }
                }
            } catch (JSONException e) {
                Cdo.a((Throwable) e);
            } catch (Exception e2) {
                Cdo.a((Throwable) e2);
            }
        }
        return arrayList;
    }
}
