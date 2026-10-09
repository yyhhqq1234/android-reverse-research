package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class wn {
    private final com.applovin.impl.sdk.j a;
    private boolean b;
    private List c;

    public wn(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        uj ujVar = uj.J;
        this.b = ((Boolean) jVar.a(ujVar, Boolean.FALSE)).booleanValue() || t0.a(com.applovin.impl.sdk.j.m()).a("applovin.sdk.is_test_environment") || AppLovinSdkUtils.isEmulator() || jVar.x().M();
        jVar.c(ujVar);
    }

    public boolean c() {
        return this.b;
    }

    public boolean d() {
        List list = this.c;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public List b() {
        return this.c;
    }

    public void a() {
        this.a.b(uj.J, Boolean.TRUE);
    }

    private void e() {
        com.applovin.impl.sdk.i iVarQ = this.a.q();
        if (this.b) {
            iVarQ.b(this.c);
        } else {
            iVarQ.a(this.c);
        }
    }

    public void a(String str) {
        if (StringUtils.isValidString(str)) {
            a(Collections.singletonList(str));
        } else {
            a((List) null);
        }
    }

    public void a(List list) {
        if (list == null && this.c == null) {
            return;
        }
        if (list == null || !list.equals(this.c)) {
            this.c = list;
            e();
        }
    }

    public void a(JSONObject jSONObject) {
        if (this.b) {
            return;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "test_mode_idfas", new JSONArray());
        com.applovin.impl.sdk.k kVarX = this.a.x();
        boolean zM = kVarX.M();
        String strA = kVarX.f().a();
        com.applovin.impl.sdk.k.b bVarC = kVarX.C();
        this.b = zM || JsonUtils.containsCaseInsensitiveString(strA, jSONArray) || JsonUtils.containsCaseInsensitiveString(bVarC != null ? bVarC.a : null, jSONArray);
    }
}
