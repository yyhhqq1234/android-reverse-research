package org.json;

import android.content.Context;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class lg {
    public static dg.e a(la laVar, dg.e eVar) {
        if (laVar == null || laVar.g() == null || laVar.g().get("rewarded") == null) {
            return eVar;
        }
        return Boolean.parseBoolean(laVar.g().get("rewarded")) ? dg.e.RewardedVideo : dg.e.Interstitial;
    }

    public static ig a(Context context, String str, String str2, Map<String, String> map) throws Exception {
        ig.b bVar = new ig.b();
        if (map != null && map.containsKey("sessionid")) {
            bVar.c(map.get("sessionid"));
        }
        bVar.a(context);
        return bVar.d(str).a(str2).a();
    }

    public static tb a(JSONObject jSONObject) {
        return new tb.a(jSONObject.optString(rb.r)).b().b(jSONObject.optBoolean("enabled")).a(new jg()).a(a()).a(false).a();
    }

    private static ArrayList<Pair<String, String>> a() {
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("Content-Type", rb.L));
        arrayList.add(new Pair<>(rb.M, rb.N));
        return arrayList;
    }

    public static boolean a(la laVar) {
        if (laVar == null || laVar.g().get("inAppBidding") == null) {
            return false;
        }
        return Boolean.parseBoolean(laVar.g().get("inAppBidding"));
    }
}
