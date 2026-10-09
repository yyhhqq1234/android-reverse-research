package com.applovin.impl;

import android.graphics.Color;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class bd {
    private final JSONObject a;

    public bd(JSONObject jSONObject) {
        this.a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    public int a() {
        String string = JsonUtils.getString(this.a, "background_color", null);
        return string != null ? Color.parseColor(string) : ViewCompat.MEASURED_STATE_MASK;
    }

    public int f() {
        return JsonUtils.getInt(this.a, "close_button_top_margin", 20);
    }

    public int d() {
        return JsonUtils.getInt(this.a, "close_button_h_margin", 5);
    }

    public int e() {
        return JsonUtils.getInt(this.a, "close_button_size", 30);
    }

    public int c() {
        return JsonUtils.getInt(this.a, "close_button_extended_touch_area_size", 10);
    }

    public long b() {
        return JsonUtils.getLong(this.a, "close_button_delay_ms", 3000L);
    }
}
