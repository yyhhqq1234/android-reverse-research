package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o6 {
    private final String a;
    private final String b;
    private final boolean c;

    o6(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        this.a = JsonUtils.getString(jSONObject, "name", "");
        this.b = JsonUtils.getString(jSONObject, "description", "");
        List list = JsonUtils.getList(jSONObject, "existence_classes", null);
        if (list != null) {
            this.c = yp.a(list);
        } else {
            this.c = yp.a(JsonUtils.getString(jSONObject, "existence_class", ""));
        }
    }

    public String b() {
        return this.a;
    }

    public String a() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    public static boolean a(String str, String str2, String str3) {
        if (str == null) {
            return true;
        }
        if (str2 == null || yp.a(str2, str) != 1) {
            return str3 == null || yp.a(str3, str) != -1;
        }
        return false;
    }
}
