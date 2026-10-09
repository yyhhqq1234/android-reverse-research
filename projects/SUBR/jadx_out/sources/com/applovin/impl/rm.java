package com.applovin.impl;

import android.net.Uri;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class rm extends yl {
    private final String h;
    private final List i;
    private final oe j;
    private final Map k;
    private final Map l;
    private final Map m;
    private final MaxError n;

    public rm(String str, List list, Map map, Map map2, MaxError maxError, oe oeVar, com.applovin.impl.sdk.j jVar, boolean z) {
        super("TaskFireMediationPostbacks", jVar);
        this.h = str + "_urls";
        this.i = list;
        this.k = yp.a(map, jVar);
        this.l = map2 == null ? new HashMap() : map2;
        this.n = maxError != null ? maxError : new MaxErrorImpl(-1);
        this.j = oeVar;
        HashMap map3 = new HashMap(7);
        map3.put("AppLovin-Event-Type", str);
        if (z && oeVar != null) {
            map3.put("AppLovin-Ad-Network-Name", oeVar.c());
        }
        if (oeVar instanceof fe) {
            fe feVar = (fe) oeVar;
            map3.put("AppLovin-Ad-Unit-Id", feVar.getAdUnitId());
            map3.put("AppLovin-Ad-Format", feVar.getFormat().getLabel());
            if (z) {
                map3.put("AppLovin-Third-Party-Ad-Placement-Id", feVar.T());
            }
        }
        if (maxError != null) {
            map3.put("AppLovin-Error-Code", String.valueOf(maxError.getCode()));
            map3.put("AppLovin-Error-Message", maxError.getMessage());
        }
        this.m = map3;
    }

    @Override // java.lang.Runnable
    public void run() {
        List listF = f();
        if (CollectionUtils.isEmpty(listF)) {
            return;
        }
        Map mapE = e();
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            Uri uri = Uri.parse(a(b((String) it.next(), this.k), this.n));
            Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
            HashMap map = new HashMap(this.l);
            for (String str : uri.getQueryParameterNames()) {
                String queryParameter = uri.getQueryParameter(str);
                if (mapE.containsKey(queryParameter)) {
                    oe oeVar = this.j;
                    if (oeVar != null) {
                        map.put(str, oeVar.a((String) mapE.get(queryParameter)));
                    }
                } else {
                    builderClearQuery.appendQueryParameter(str, queryParameter);
                }
            }
            map.putAll(this.a.x().e());
            a(builderClearQuery.build().toString(), map);
        }
    }

    private void a(String str, Map map) {
        b().W().e(com.applovin.impl.sdk.network.d.b().d(str).c("POST").a(this.m).a(false).c(map).c(((Boolean) this.a.a(ue.O7)).booleanValue()).a());
    }

    private List f() {
        List list = this.i;
        if (list != null) {
            return list;
        }
        oe oeVar = this.j;
        if (oeVar != null) {
            return oeVar.b(this.h);
        }
        return null;
    }

    private Map e() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) this.a.a(ue.L6)));
        } catch (JSONException unused) {
            return Collections.EMPTY_MAP;
        }
    }

    private String b(String str, Map map) {
        for (String str2 : map.keySet()) {
            str = str.replace(str2, StringUtils.emptyIfNull((String) map.get(str2)));
        }
        return str;
    }

    private String a(String str, MaxError maxError) {
        int mediatedNetworkErrorCode;
        String mediatedNetworkErrorMessage;
        if (maxError instanceof MaxAdapterError) {
            MaxAdapterError maxAdapterError = (MaxAdapterError) maxError;
            mediatedNetworkErrorCode = maxAdapterError.getMediatedNetworkErrorCode();
            mediatedNetworkErrorMessage = maxAdapterError.getMediatedNetworkErrorMessage();
        } else {
            mediatedNetworkErrorCode = 0;
            mediatedNetworkErrorMessage = "";
        }
        return str.replace("{ERROR_CODE}", String.valueOf(maxError.getCode())).replace("{ERROR_MESSAGE}", StringUtils.encodeUriString(maxError.getMessage())).replace("{THIRD_PARTY_SDK_ERROR_CODE}", String.valueOf(mediatedNetworkErrorCode)).replace("{THIRD_PARTY_SDK_ERROR_MESSAGE}", StringUtils.encodeUriString(mediatedNetworkErrorMessage));
    }
}
