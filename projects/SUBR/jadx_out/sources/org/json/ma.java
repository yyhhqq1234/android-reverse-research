package org.json;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ma {
    private final Map<String, la> a = new LinkedHashMap();
    private final Map<String, la> b = new LinkedHashMap();
    private final Map<String, la> c = new LinkedHashMap();

    private void a(dg.e eVar, String str, la laVar) {
        Map<String, la> mapB;
        if (TextUtils.isEmpty(str) || laVar == null || (mapB = b(eVar)) == null) {
            return;
        }
        mapB.put(str, laVar);
    }

    private Map<String, la> b(dg.e eVar) {
        if (eVar.name().equalsIgnoreCase(dg.e.RewardedVideo.name())) {
            return this.a;
        }
        if (eVar.name().equalsIgnoreCase(dg.e.Interstitial.name())) {
            return this.b;
        }
        if (eVar.name().equalsIgnoreCase(dg.e.Banner.name())) {
            return this.c;
        }
        return null;
    }

    public la a(dg.e eVar, oi oiVar) {
        la laVar = new la(oiVar);
        a(eVar, oiVar.e(), laVar);
        return laVar;
    }

    public la a(dg.e eVar, String str) {
        Map<String, la> mapB;
        if (TextUtils.isEmpty(str) || (mapB = b(eVar)) == null) {
            return null;
        }
        return mapB.get(str);
    }

    public la a(dg.e eVar, String str, Map<String, String> map, fn fnVar) {
        la laVar = new la(str, str, map, fnVar);
        a(eVar, str, laVar);
        return laVar;
    }

    public Collection<la> a(dg.e eVar) {
        Map<String, la> mapB = b(eVar);
        return mapB != null ? mapB.values() : new ArrayList();
    }

    public void b(dg.e eVar, String str) {
        Map<String, la> mapB;
        la laVarRemove;
        if (TextUtils.isEmpty(str) || (mapB = b(eVar)) == null || (laVarRemove = mapB.remove(str)) == null) {
            return;
        }
        laVarRemove.a();
    }
}
