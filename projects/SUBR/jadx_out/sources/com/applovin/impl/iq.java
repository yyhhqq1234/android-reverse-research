package com.applovin.impl;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class iq implements hh {
    private a a;
    private Uri b;
    private String c;

    public enum a {
        UNSPECIFIED,
        STATIC,
        IFRAME,
        HTML
    }

    private iq() {
    }

    public String toString() {
        return "VastNonVideoResource{type=" + this.a + ", resourceUri=" + this.b + ", resourceContents='" + this.c + "'}";
    }

    static iq a(es esVar, iq iqVar, com.applovin.impl.sdk.j jVar) {
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (jVar != null) {
            if (iqVar == null) {
                try {
                    iqVar = new iq();
                } catch (Throwable th) {
                    jVar.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        jVar.I().a("VastNonVideoResource", "Error occurred while initializing", th);
                    }
                    jVar.D().a("VastNonVideoResource", th);
                    return null;
                }
            }
            if (iqVar.b == null && !StringUtils.isValidString(iqVar.c)) {
                String strA = a(esVar, "StaticResource");
                if (URLUtil.isValidUrl(strA)) {
                    iqVar.b = Uri.parse(strA);
                    iqVar.a = a.STATIC;
                    return iqVar;
                }
                String strA2 = a(esVar, "IFrameResource");
                if (StringUtils.isValidString(strA2)) {
                    iqVar.a = a.IFRAME;
                    if (URLUtil.isValidUrl(strA2)) {
                        iqVar.b = Uri.parse(strA2);
                    } else {
                        iqVar.c = strA2;
                    }
                    return iqVar;
                }
                String strA3 = a(esVar, "HTMLResource");
                if (StringUtils.isValidString(strA3)) {
                    iqVar.a = a.HTML;
                    if (URLUtil.isValidUrl(strA3)) {
                        iqVar.b = Uri.parse(strA3);
                    } else {
                        iqVar.c = strA3;
                    }
                }
            }
            return iqVar;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public a d() {
        return this.a;
    }

    public Uri c() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iq)) {
            return false;
        }
        iq iqVar = (iq) obj;
        if (this.a != iqVar.a) {
            return false;
        }
        Uri uri = this.b;
        if (uri == null ? iqVar.b != null : !uri.equals(iqVar.b)) {
            return false;
        }
        String str = this.c;
        String str2 = iqVar.c;
        if (str != null) {
            return str.equals(str2);
        }
        return str2 == null;
    }

    public int hashCode() {
        a aVar = this.a;
        int iHashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        Uri uri = this.b;
        int iHashCode2 = (iHashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public static iq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "type", null);
        a aVarValueOf = string == null ? null : a.valueOf(string);
        String string2 = JsonUtils.getString(jSONObject, "resource_uri", null);
        Uri uri = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        iq iqVar = new iq();
        iqVar.a = aVarValueOf;
        iqVar.b = uri;
        iqVar.c = JsonUtils.getString(jSONObject, "resource_contents", null);
        return iqVar;
    }

    public void a(String str) {
        this.c = str;
    }

    public void a(Uri uri) {
        this.b = uri;
    }

    private static String a(es esVar, String str) {
        es esVarC = esVar.c(str);
        if (esVarC != null) {
            return esVarC.d();
        }
        return null;
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        a aVar = this.a;
        JsonUtils.putString(jSONObject, "type", aVar == null ? null : aVar.toString());
        Uri uri = this.b;
        JsonUtils.putString(jSONObject, "resource_uri", uri != null ? uri.toString() : null);
        JsonUtils.putString(jSONObject, "resource_contents", this.c);
        return jSONObject;
    }
}
