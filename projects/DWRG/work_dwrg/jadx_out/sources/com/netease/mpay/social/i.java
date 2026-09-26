package com.netease.mpay.social;

import com.alipay.android.phone.mrpc.core.Headers;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class i {
    public String A;
    public String B;
    public String C;
    public boolean D;
    public int E;
    public int F;
    public String G;
    public String H;
    public String I;
    public String J;
    public String K;
    public String a;
    public String b;
    public String c;
    public String d;
    public int e;
    public int f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public int o;
    public int p;
    public int q;
    public int r;
    public String s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public int x;
    public String y;
    public boolean z;

    public i() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static i a(String str) {
        try {
            return a(new JSONObject(str));
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static i a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        i iVar = new i();
        iVar.a = jSONObject.optString(ResIdReader.RES_TYPE_ID, "");
        iVar.b = jSONObject.optString("idstr", "");
        iVar.c = jSONObject.optString("screen_name", "");
        iVar.d = jSONObject.optString("name", "");
        iVar.e = jSONObject.optInt("province", -1);
        iVar.f = jSONObject.optInt("city", -1);
        iVar.g = jSONObject.optString(Headers.LOCATION, "");
        iVar.h = jSONObject.optString("description", "");
        iVar.i = jSONObject.optString("url", "");
        iVar.j = jSONObject.optString("profile_image_url", "");
        iVar.k = jSONObject.optString("profile_url", "");
        iVar.l = jSONObject.optString(Const.NT_PARAM_DOMAIN, "");
        iVar.m = jSONObject.optString("weihao", "");
        iVar.n = jSONObject.optString("gender", "");
        iVar.o = jSONObject.optInt("followers_count", 0);
        iVar.p = jSONObject.optInt("friends_count", 0);
        iVar.q = jSONObject.optInt("statuses_count", 0);
        iVar.r = jSONObject.optInt("favourites_count", 0);
        iVar.s = jSONObject.optString("created_at", "");
        iVar.t = jSONObject.optBoolean("following", false);
        iVar.u = jSONObject.optBoolean("allow_all_act_msg", false);
        iVar.v = jSONObject.optBoolean("geo_enabled", false);
        iVar.w = jSONObject.optBoolean("verified", false);
        iVar.x = jSONObject.optInt("verified_type", -1);
        iVar.y = jSONObject.optString("remark", "");
        iVar.z = jSONObject.optBoolean("allow_all_comment", true);
        iVar.A = jSONObject.optString("avatar_large", "");
        iVar.B = jSONObject.optString("avatar_hd", "");
        iVar.C = jSONObject.optString("verified_reason", "");
        iVar.D = jSONObject.optBoolean("follow_me", false);
        iVar.E = jSONObject.optInt("online_status", 0);
        iVar.F = jSONObject.optInt("bi_followers_count", 0);
        iVar.G = jSONObject.optString("lang", "");
        iVar.H = jSONObject.optString("star", "");
        iVar.I = jSONObject.optString("mbtype", "");
        iVar.J = jSONObject.optString("mbrank", "");
        iVar.K = jSONObject.optString("block_word", "");
        return iVar;
    }
}
