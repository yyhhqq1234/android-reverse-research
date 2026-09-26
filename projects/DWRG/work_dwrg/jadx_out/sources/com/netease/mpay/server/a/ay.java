package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.ad;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ay extends ax {
    String a;
    String b;
    String c;
    ArrayList d;
    int e;

    public ay(String str, String str2, String str3, ArrayList arrayList, int i) {
        super(0, "/api/friends/sync/sina_weibo");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = arrayList;
        this.e = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ad b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.ad adVar = new com.netease.mpay.server.response.ad();
        JSONArray c = c(jSONObject, "friend_suggestions");
        int length = c.length();
        for (int i = 0; i < length; i++) {
            ad.a aVar = new ad.a();
            JSONObject a = a(c, i);
            aVar.a = f(a, "sina_weibo_uid");
            aVar.b = f(a, "user_id");
            adVar.a.add(aVar);
        }
        return adVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        JSONArray jSONArray = new JSONArray();
        if (this.d != null) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                com.netease.mpay.social.m mVar = (com.netease.mpay.social.m) it.next();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("sina_weibo_uid", mVar.a);
                    jSONObject.put("fans_type", mVar.b);
                    if (mVar.a()) {
                        jSONObject.put("user_id", mVar.c);
                    }
                    jSONObject.put("op_type", this.e);
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        arrayList.add(new com.netease.mpay.widget.a.a("friends_data", jSONArray.toString()));
        return arrayList;
    }
}
