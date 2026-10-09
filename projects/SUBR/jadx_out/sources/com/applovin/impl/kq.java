package com.applovin.impl;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class kq implements hh {
    private String a;
    private String b;
    private String c;
    private long d = -1;
    private int f = -1;

    public String toString() {
        return "VastTracker{identifier='" + this.a + "', event='" + this.b + "', uriString='" + this.c + "', offsetSeconds=" + this.d + ", offsetPercent=" + this.f + '}';
    }

    private kq() {
    }

    public static kq a(es esVar, eq eqVar, com.applovin.impl.sdk.j jVar) {
        List<String> listExplode;
        int size;
        long seconds;
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (jVar != null) {
            try {
                String strD = esVar.d();
                if (StringUtils.isValidString(strD)) {
                    kq kqVar = new kq();
                    kqVar.c = strD;
                    kqVar.a = (String) esVar.a().get("id");
                    kqVar.b = (String) esVar.a().get(NotificationCompat.CATEGORY_EVENT);
                    kqVar.f = a(kqVar.b(), eqVar);
                    String str = (String) esVar.a().get("offset");
                    if (StringUtils.isValidString(str)) {
                        String strTrim = str.trim();
                        if (strTrim.contains("%")) {
                            kqVar.f = StringUtils.parseInt(strTrim.substring(0, strTrim.length() - 1));
                        } else if (strTrim.contains(":") && (size = (listExplode = CollectionUtils.explode(strTrim, ":")).size()) > 0) {
                            int i = size - 1;
                            long j = 0;
                            for (int i2 = i; i2 >= 0; i2--) {
                                String str2 = listExplode.get(i2);
                                if (StringUtils.isNumeric(str2)) {
                                    int i3 = Integer.parseInt(str2);
                                    if (i2 == i) {
                                        seconds = i3;
                                    } else if (i2 == size - 2) {
                                        seconds = TimeUnit.MINUTES.toSeconds(i3);
                                    } else if (i2 == size - 3) {
                                        seconds = TimeUnit.HOURS.toSeconds(i3);
                                    }
                                    j += seconds;
                                }
                            }
                            kqVar.d = j;
                            kqVar.f = -1;
                        }
                    }
                    return kqVar;
                }
                jVar.I();
                if (!com.applovin.impl.sdk.n.a()) {
                    return null;
                }
                jVar.I().b("VastTracker", "Unable to create tracker. Could not find URL.");
                return null;
            } catch (Throwable th) {
                jVar.I();
                if (com.applovin.impl.sdk.n.a()) {
                    jVar.I().a("VastTracker", "Error occurred while initializing", th);
                }
                jVar.D().a("VastTracker", th);
                return null;
            }
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kq)) {
            return false;
        }
        kq kqVar = (kq) obj;
        if (this.d != kqVar.d || this.f != kqVar.f) {
            return false;
        }
        String str = this.a;
        if (str == null ? kqVar.a != null : !str.equals(kqVar.a)) {
            return false;
        }
        String str2 = this.b;
        if (str2 == null ? kqVar.b == null : str2.equals(kqVar.b)) {
            return this.c.equals(kqVar.c);
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = (((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.c.hashCode()) * 31;
        long j = this.d;
        return ((iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31) + this.f;
    }

    public static kq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        kq kqVar = new kq();
        String string = JsonUtils.getString(jSONObject, "uri_string", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        kqVar.c = string;
        kqVar.a = JsonUtils.getString(jSONObject, "identifier", "");
        kqVar.b = JsonUtils.getString(jSONObject, NotificationCompat.CATEGORY_EVENT, "");
        kqVar.d = JsonUtils.getLong(jSONObject, "offset_seconds", -1L);
        kqVar.f = JsonUtils.getInt(jSONObject, "offset_percent", -1);
        return kqVar;
    }

    public boolean a(long j, int i) {
        long j2 = this.d;
        boolean z = j2 >= 0;
        boolean z2 = j >= j2;
        int i2 = this.f;
        boolean z3 = i2 >= 0;
        boolean z4 = i >= i2;
        if (z && z2) {
            return true;
        }
        return z3 && z4;
    }

    private static int a(String str, eq eqVar) {
        if ("start".equalsIgnoreCase(str)) {
            return 0;
        }
        if ("firstQuartile".equalsIgnoreCase(str)) {
            return 25;
        }
        if ("midpoint".equalsIgnoreCase(str)) {
            return 50;
        }
        if ("thirdQuartile".equalsIgnoreCase(str)) {
            return 75;
        }
        if (!"complete".equalsIgnoreCase(str)) {
            return -1;
        }
        if (eqVar != null) {
            return eqVar.g();
        }
        return 95;
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "identifier", this.a);
        JsonUtils.putString(jSONObject, NotificationCompat.CATEGORY_EVENT, this.b);
        JsonUtils.putString(jSONObject, "uri_string", this.c);
        JsonUtils.putLong(jSONObject, "offset_seconds", this.d);
        JsonUtils.putInt(jSONObject, "offset_percent", this.f);
        return jSONObject;
    }
}
