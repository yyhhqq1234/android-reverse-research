package com.applovin.impl;

import android.text.TextUtils;
import android.util.Base64;
import com.applovin.impl.sdk.utils.StringUtils;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class w {
    private final com.applovin.impl.sdk.j a;
    private final String b;

    public enum a {
        UNSPECIFIED("UNSPECIFIED"),
        REGULAR("REGULAR"),
        AD_RESPONSE_JSON("AD_RESPONSE_JSON");

        private final String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    public w(String str, com.applovin.impl.sdk.j jVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Identifier is empty");
        }
        if (jVar != null) {
            this.b = str;
            this.a = jVar;
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public String b() {
        return this.b;
    }

    public a c() {
        if (a(sj.y0) != null) {
            return a.REGULAR;
        }
        if (a(sj.z0) != null) {
            return a.AD_RESPONSE_JSON;
        }
        return a.UNSPECIFIED;
    }

    public String d() {
        String strA = a(sj.y0);
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        String strA2 = a(sj.z0);
        if (TextUtils.isEmpty(strA2)) {
            return null;
        }
        return strA2;
    }

    public JSONObject a() {
        if (c() != a.AD_RESPONSE_JSON) {
            return null;
        }
        try {
            try {
                JSONObject jSONObject = new JSONObject(new String(Base64.decode(this.b.substring(d().length()), 0), "UTF-8"));
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().a("AdToken", "Decoded token into ad response: " + jSONObject);
                }
                return jSONObject;
            } catch (JSONException e) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().a("AdToken", "Unable to decode token '" + this.b + "' into JSON", e);
                }
                this.a.D().a("AdToken", "decodeFullAdResponseStr", e);
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("AdToken", "Unable to process ad response from token '" + this.b + "'", e2);
            }
            this.a.D().a("AdToken", "decodeFullAdResponse", e2);
            return null;
        }
    }

    public String toString() {
        return "AdToken{id=" + StringUtils.prefixToIndex(32, this.b) + ", type=" + c() + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        String str = this.b;
        String str2 = ((w) obj).b;
        if (str != null) {
            return str.equals(str2);
        }
        return str2 == null;
    }

    public int hashCode() {
        String str = this.b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    private String a(sj sjVar) {
        for (String str : this.a.c(sjVar)) {
            if (this.b.startsWith(str)) {
                return str;
            }
        }
        return null;
    }
}
