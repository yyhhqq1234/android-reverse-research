package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class oq implements hh {
    private Uri a;
    private Uri b;
    private a c;
    private String d;
    private int f;
    private int g;
    private long h;

    public enum a {
        Progressive,
        Streaming
    }

    private oq() {
    }

    public String toString() {
        return "VastVideoFile{sourceVideoUri=" + this.a + ", videoUri=" + this.b + ", deliveryType=" + this.c + ", fileType='" + this.d + "', width=" + this.f + ", height=" + this.g + ", bitrate=" + this.h + '}';
    }

    public static oq a(es esVar, com.applovin.impl.sdk.j jVar) {
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (jVar != null) {
            try {
                String strD = esVar.d();
                if (URLUtil.isValidUrl(strD)) {
                    Uri uri = Uri.parse(strD);
                    oq oqVar = new oq();
                    oqVar.a = uri;
                    oqVar.b = uri;
                    oqVar.h = a(esVar);
                    oqVar.c = a((String) esVar.a().get(org.json.s.g));
                    oqVar.g = StringUtils.parseInt((String) esVar.a().get("height"));
                    oqVar.f = StringUtils.parseInt((String) esVar.a().get("width"));
                    oqVar.d = ((String) esVar.a().get("type")).toLowerCase(Locale.ENGLISH);
                    return oqVar;
                }
                jVar.I();
                if (!com.applovin.impl.sdk.n.a()) {
                    return null;
                }
                jVar.I().b("VastVideoFile", "Unable to create video file. Could not find URL.");
                return null;
            } catch (Throwable th) {
                jVar.I();
                if (com.applovin.impl.sdk.n.a()) {
                    jVar.I().a("VastVideoFile", "Error occurred while initializing", th);
                }
                jVar.D().a("VastVideoFile", th);
                return null;
            }
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public Uri d() {
        return this.a;
    }

    public Uri e() {
        return this.b;
    }

    public String c() {
        return this.d;
    }

    public long b() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oq)) {
            return false;
        }
        oq oqVar = (oq) obj;
        if (this.f != oqVar.f || this.g != oqVar.g || this.h != oqVar.h) {
            return false;
        }
        Uri uri = this.a;
        if (uri == null ? oqVar.a != null : !uri.equals(oqVar.a)) {
            return false;
        }
        Uri uri2 = this.b;
        if (uri2 == null ? oqVar.b != null : !uri2.equals(oqVar.b)) {
            return false;
        }
        if (this.c != oqVar.c) {
            return false;
        }
        String str = this.d;
        String str2 = oqVar.d;
        if (str != null) {
            return str.equals(str2);
        }
        return str2 == null;
    }

    public int hashCode() {
        Uri uri = this.a;
        int iHashCode = (uri != null ? uri.hashCode() : 0) * 31;
        Uri uri2 = this.b;
        int iHashCode2 = (iHashCode + (uri2 != null ? uri2.hashCode() : 0)) * 31;
        a aVar = this.c;
        int iHashCode3 = (iHashCode2 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        String str = this.d;
        return ((((((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + this.f) * 31) + this.g) * 31) + Long.valueOf(this.h).hashCode();
    }

    public static oq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "source_video_uri", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        Uri uri = Uri.parse(string);
        if (TextUtils.isEmpty(JsonUtils.getString(jSONObject, "video_uri", null))) {
            return null;
        }
        Uri uri2 = Uri.parse(string);
        String string2 = JsonUtils.getString(jSONObject, "file_type", null);
        if (TextUtils.isEmpty(string2)) {
            return null;
        }
        a aVarValueOf = a.valueOf(JsonUtils.getString(jSONObject, "delivery_type", a.Progressive.toString()));
        int i = JsonUtils.getInt(jSONObject, "width", 0);
        int i2 = JsonUtils.getInt(jSONObject, "height", 0);
        int i3 = JsonUtils.getInt(jSONObject, "bitrate", 0);
        oq oqVar = new oq();
        oqVar.a = uri;
        oqVar.b = uri2;
        oqVar.c = aVarValueOf;
        oqVar.d = string2;
        oqVar.f = i;
        oqVar.g = i2;
        oqVar.h = i3;
        return oqVar;
    }

    private static long a(es esVar) {
        Map mapA = esVar.a();
        long j = StringUtils.parseLong((String) mapA.get("bitrate"), 0L);
        return j != 0 ? j : (StringUtils.parseLong((String) mapA.get("minBitrate"), 0L) + StringUtils.parseLong((String) mapA.get("maxBitrate"), 0L)) / 2;
    }

    private static a a(String str) {
        if (StringUtils.isValidString(str)) {
            if ("progressive".equalsIgnoreCase(str)) {
                return a.Progressive;
            }
            if ("streaming".equalsIgnoreCase(str)) {
                return a.Streaming;
            }
        }
        return a.Progressive;
    }

    public void a(Uri uri) {
        this.b = uri;
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        Uri uri = this.a;
        if (uri != null) {
            JsonUtils.putString(jSONObject, "source_video_uri", uri.toString());
        }
        Uri uri2 = this.b;
        if (uri2 != null) {
            JsonUtils.putString(jSONObject, "video_uri", uri2.toString());
        }
        a aVar = this.c;
        JsonUtils.putString(jSONObject, "delivery_type", aVar == null ? null : aVar.toString());
        JsonUtils.putString(jSONObject, "file_type", this.d);
        JsonUtils.putInt(jSONObject, "width", this.f);
        JsonUtils.putInt(jSONObject, "height", this.g);
        JsonUtils.putLong(jSONObject, "bitrate", this.h);
        return jSONObject;
    }
}
