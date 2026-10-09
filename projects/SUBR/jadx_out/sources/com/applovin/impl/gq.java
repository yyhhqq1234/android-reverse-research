package com.applovin.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class gq implements hh {
    public final Set a = new HashSet();
    public final Set b = new HashSet();
    private Uri c;
    private Uri d;
    private int f;
    private int g;

    public String toString() {
        return "VastIndustryIcon{imageUri='" + e() + "', clickUri='" + c() + "', width=" + g() + ", height=" + d() + "}";
    }

    public static gq a(es esVar, com.applovin.impl.sdk.j jVar) {
        if (esVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (jVar != null) {
            es esVarC = esVar.c("StaticResource");
            if (esVarC != null && URLUtil.isValidUrl(esVarC.d())) {
                gq gqVar = new gq();
                gqVar.c = Uri.parse(esVarC.d());
                es esVarB = esVar.b("IconClickThrough");
                if (esVarB != null && URLUtil.isValidUrl(esVarB.d())) {
                    gqVar.d = Uri.parse(esVarB.d());
                }
                String str = (String) esVar.a().get("width");
                int i = 0;
                int i2 = (str == null || Integer.parseInt(str) <= 0) ? 0 : Integer.parseInt(str);
                String str2 = (String) esVar.a().get("height");
                if (str2 != null && Integer.parseInt(str2) > 0) {
                    i = Integer.parseInt(str2);
                }
                int iIntValue = ((Integer) jVar.a(sj.M4)).intValue();
                if (i2 > 0 && i > 0) {
                    double d = i2 / i;
                    int iMin = Math.min(Math.max(i2, i), iIntValue);
                    if (i2 >= i) {
                        gqVar.f = iMin;
                        gqVar.g = (int) (((double) iMin) / d);
                    } else {
                        gqVar.g = iMin;
                        gqVar.f = (int) (((double) iMin) * d);
                    }
                } else {
                    gqVar.g = iIntValue;
                    gqVar.f = iIntValue;
                }
                return gqVar;
            }
            jVar.I();
            if (!com.applovin.impl.sdk.n.a()) {
                return null;
            }
            jVar.I().b("VastIndustryIcon", "Unable to create industry icon.  No valid image URL found.");
            return null;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public Uri e() {
        return this.c;
    }

    public Uri c() {
        return this.d;
    }

    public int g() {
        return this.f;
    }

    public int d() {
        return this.g;
    }

    public Set b() {
        return this.a;
    }

    public Set f() {
        return this.b;
    }

    public static gq a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        kq kqVarA;
        kq kqVarA2;
        if (jSONObject == null) {
            return null;
        }
        gq gqVar = new gq();
        String string = JsonUtils.getString(jSONObject, "image_uri", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        gqVar.c = Uri.parse(string);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null && (kqVarA2 = kq.a(jSONObject2, jVar)) != null) {
                gqVar.a.add(kqVarA2);
            }
        }
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "view_trackers", new JSONArray());
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null);
            if (jSONObject3 != null && (kqVarA = kq.a(jSONObject3, jVar)) != null) {
                gqVar.b.add(kqVarA);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "click_uri", null);
        gqVar.d = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        gqVar.f = JsonUtils.getInt(jSONObject, "width", 0);
        gqVar.g = JsonUtils.getInt(jSONObject, "height", 0);
        return gqVar;
    }

    @Override // com.applovin.impl.hh
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            jSONArray.put(((kq) it.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        JSONArray jSONArray2 = new JSONArray();
        Iterator it2 = this.b.iterator();
        while (it2.hasNext()) {
            jSONArray.put(((kq) it2.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "view_trackers", jSONArray2);
        Uri uri = this.c;
        JsonUtils.putString(jSONObject, "image_uri", uri == null ? null : uri.toString());
        Uri uri2 = this.d;
        JsonUtils.putString(jSONObject, "click_uri", uri2 != null ? uri2.toString() : null);
        JsonUtils.putInt(jSONObject, "width", this.f);
        JsonUtils.putInt(jSONObject, "height", this.g);
        return jSONObject;
    }

    public static ImageView a(Uri uri, Context context, com.applovin.impl.sdk.j jVar) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setClickable(true);
        imageView.setVisibility(8);
        ImageViewUtils.setImageUri(imageView, uri, jVar);
        return imageView;
    }
}
