package com.netease.mpay.server.response;

import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.pay.PayConstants;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class e extends ac {
    public int a;
    public ArrayList b;

    /* loaded from: classes.dex */
    public static class a extends b {
        public String a;
        public int b;
        public int c;

        public a(String str) {
            super(str);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.server.response.e.b
        public void a(JSONObject jSONObject) {
            super.a(jSONObject);
            this.a = jSONObject.optString("verify_url");
            this.b = jSONObject.optInt("limit_time");
            this.c = jSONObject.optInt("limit_amount");
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        public boolean d = false;
        public boolean e = false;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public int k;

        public b(String str) {
            this.g = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public String a() {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("enabled", this.d);
            jSONObject.put("hot", this.e);
            jSONObject.put("reason", this.f);
            jSONObject.put("name", this.h);
            jSONObject.put("description", this.i);
            jSONObject.put("icon_url", this.j);
            jSONObject.put("status", this.k);
            return jSONObject.toString();
        }

        public void a(JSONObject jSONObject) {
            this.d = jSONObject.getBoolean("enabled");
            this.e = jSONObject.optBoolean("hot");
            this.f = jSONObject.optString("reason");
            this.h = jSONObject.optString("name");
            this.i = jSONObject.optString("description");
            this.j = jSONObject.optString("icon_url");
            this.k = jSONObject.optInt("status");
        }
    }

    /* loaded from: classes.dex */
    public static class c extends b {
        public int a;
        public boolean b;

        public c(String str) {
            super(str);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.server.response.e.b
        public void a(JSONObject jSONObject) {
            super.a(jSONObject);
            this.b = jSONObject.getBoolean("only_urs");
            this.a = jSONObject.optInt(PayConstants.PAY_METHOD_BALABCE);
        }
    }

    public e() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static b a(String str) {
        if (str == null) {
            return null;
        }
        return str.equals("alipay") ? new a(str) : str.equals("ecard") ? new c(str) : new b(str);
    }
}
