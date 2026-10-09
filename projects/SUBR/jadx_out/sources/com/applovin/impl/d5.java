package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d5 {
    private final JSONObject a;

    public d5(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    protected String b() {
        return JsonUtils.getString(this.a, "digital_asset_link_url", null);
    }

    protected Integer e() {
        return JsonUtils.getInteger(this.a, "session_url_relation", null);
    }

    protected String d() {
        return JsonUtils.getString(this.a, "referrer", null);
    }

    protected Integer h() {
        return JsonUtils.getInteger(this.a, "toolbar_color", null);
    }

    protected Integer a() {
        return JsonUtils.getInteger(this.a, "dark_mode_toolbar_color", null);
    }

    protected Integer f() {
        return JsonUtils.getInteger(this.a, "share_state", null);
    }

    protected Boolean c() {
        return JsonUtils.getBoolean(this.a, "instant_apps_enabled", null);
    }

    protected Boolean i() {
        return JsonUtils.getBoolean(this.a, "url_bar_hiding_enabled", null);
    }

    protected Boolean g() {
        return JsonUtils.getBoolean(this.a, "should_show_title", null);
    }
}
