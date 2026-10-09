package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class rn {
    private final a a;
    private final Integer b;
    private final String c;
    private final String d;
    private Boolean e;

    public enum a {
        TCF_VENDOR,
        ATP_NETWORK,
        OTHER;

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(int i) {
            if (i == 0) {
                return TCF_VENDOR;
            }
            if (i != 1) {
                return OTHER;
            }
            return ATP_NETWORK;
        }
    }

    public a f() {
        return this.a;
    }

    public Integer d() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String b() {
        return this.d;
    }

    public Boolean a() {
        return this.e;
    }

    public rn(JSONObject jSONObject, String str) {
        this.d = str;
        this.a = a.b(JsonUtils.getInt(jSONObject, "type", a.OTHER.ordinal()));
        this.b = JsonUtils.getInteger(jSONObject, "id", null);
        this.c = JsonUtils.getString(jSONObject, "name", null);
    }

    public String e() {
        Boolean bool = this.e;
        return "\n" + this.d + " - " + (bool != null ? String.valueOf(bool) : a4.b().a(com.applovin.impl.sdk.j.m()));
    }

    public void a(Boolean bool) {
        this.e = bool;
    }
}
