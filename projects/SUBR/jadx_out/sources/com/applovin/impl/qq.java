package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class qq {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final boolean e;
    private final int f;
    private final int g;
    private final int h;
    private final float i;
    private final float j;

    public String toString() {
        return "VideoButtonProperties{widthPercentOfScreen=" + this.a + ", heightPercentOfScreen=" + this.b + ", margin=" + this.c + ", gravity=" + this.d + ", tapToFade=" + this.e + ", tapToFadeDurationMillis=" + this.f + ", fadeInDurationMillis=" + this.g + ", fadeOutDurationMillis=" + this.h + ", fadeInDelay=" + this.i + ", fadeOutDelay=" + this.j + '}';
    }

    public qq(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        jVar.I();
        if (com.applovin.impl.sdk.n.a()) {
            jVar.I().d("VideoButtonProperties", "Updating video button properties with JSON = " + JsonUtils.maybeConvertToIndentedString(jSONObject));
        }
        this.a = JsonUtils.getInt(jSONObject, "width", 64);
        this.b = JsonUtils.getInt(jSONObject, "height", 7);
        this.c = JsonUtils.getInt(jSONObject, "margin", 20);
        this.d = JsonUtils.getInt(jSONObject, "gravity", 85);
        this.e = JsonUtils.getBoolean(jSONObject, "tap_to_fade", Boolean.FALSE).booleanValue();
        this.f = JsonUtils.getInt(jSONObject, "tap_to_fade_duration_milliseconds", 500);
        this.g = JsonUtils.getInt(jSONObject, "fade_in_duration_milliseconds", 500);
        this.h = JsonUtils.getInt(jSONObject, "fade_out_duration_milliseconds", 500);
        this.i = JsonUtils.getFloat(jSONObject, "fade_in_delay_seconds", 1.0f);
        this.j = JsonUtils.getFloat(jSONObject, "fade_out_delay_seconds", 6.0f);
    }

    public int i() {
        return this.a;
    }

    public int f() {
        return this.b;
    }

    public int g() {
        return this.c;
    }

    public int e() {
        return this.d;
    }

    public boolean j() {
        return this.e;
    }

    public long h() {
        return this.f;
    }

    public long b() {
        return this.g;
    }

    public long d() {
        return this.h;
    }

    public float a() {
        return this.i;
    }

    public float c() {
        return this.j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        qq qqVar = (qq) obj;
        return this.a == qqVar.a && this.b == qqVar.b && this.c == qqVar.c && this.d == qqVar.d && this.e == qqVar.e && this.f == qqVar.f && this.g == qqVar.g && this.h == qqVar.h && Float.compare(qqVar.i, this.i) == 0 && Float.compare(qqVar.j, this.j) == 0;
    }

    public int hashCode() {
        int i = ((((((((((((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d) * 31) + (this.e ? 1 : 0)) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31;
        float f = this.i;
        int iFloatToIntBits = (i + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
        float f2 = this.j;
        return iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
    }
}
