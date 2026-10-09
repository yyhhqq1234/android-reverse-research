package com.applovin.impl;

import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class da {
    private final Map a;
    private final com.applovin.impl.sdk.j b;

    public String b() {
        return "google watermark";
    }

    public da(Map map, com.applovin.impl.sdk.j jVar) {
        this.a = map == null ? Collections.emptyMap() : map;
        this.b = jVar;
    }

    public Drawable a() {
        Object obj = this.a.get("google_watermark");
        if (!a(obj)) {
            this.b.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.b.I().b("GoogleWatermarkGenerator", "Unable to render invalid watermark: " + obj);
            }
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode((String) obj, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(com.applovin.impl.sdk.j.m().getResources(), BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            return bitmapDrawable;
        } catch (Throwable th) {
            this.b.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.b.I().a("GoogleWatermarkGenerator", "Failed to render watermark", th);
            }
            return null;
        }
    }

    public boolean c() {
        return a(this.a.get("google_watermark"));
    }

    private boolean a(Object obj) {
        return (obj instanceof String) && StringUtils.isValidString((String) obj);
    }
}
