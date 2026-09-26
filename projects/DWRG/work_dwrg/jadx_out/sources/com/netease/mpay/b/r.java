package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.server.response.e;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class r extends t {
    public a e;
    public boolean f;

    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public String b;

        @Nullable
        public e.b c;

        a(Intent intent) {
            String b = com.netease.mpay.b.a.b(intent, ak.DEPOSIT_CHANNEL_KEY);
            if (TextUtils.isEmpty(b)) {
                this.c = null;
            } else {
                this.c = new e.b(b);
                String b2 = com.netease.mpay.b.a.b(intent, ak.DEPOSIT_CHANNEL_JSON_CONTENT);
                if (TextUtils.isEmpty(b2)) {
                    this.c = null;
                } else {
                    try {
                        this.c.a(new JSONObject(b2));
                    } catch (JSONException e) {
                        this.c = null;
                        Cdo.a((Throwable) e);
                    }
                }
            }
            this.a = com.netease.mpay.b.a.b(intent, ak.PREPAY_BALANCE);
            this.b = com.netease.mpay.b.a.b(intent, ak.PREPAY_TRACK_PATH);
        }

        public a(e.b bVar, String str, String str2) {
            this.c = bVar;
            this.a = str;
            this.b = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        void a(Bundle bundle) {
            if (this.c != null) {
                com.netease.mpay.b.a.a(bundle, ak.DEPOSIT_CHANNEL_KEY, this.c.g);
                try {
                    com.netease.mpay.b.a.a(bundle, ak.DEPOSIT_CHANNEL_JSON_CONTENT, this.c.a());
                } catch (JSONException e) {
                    Cdo.a((Throwable) e);
                }
            }
            com.netease.mpay.b.a.a(bundle, ak.PREPAY_BALANCE, this.a);
            com.netease.mpay.b.a.a(bundle, ak.PREPAY_TRACK_PATH, this.b);
        }
    }

    public r(Intent intent) {
        super(intent);
        this.e = new a(intent);
        this.f = a(intent, ak.IS_PREPAY);
    }

    public r(t tVar, a aVar) {
        super(tVar);
        this.e = aVar;
        this.f = aVar != null;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.t, com.netease.mpay.b.o, com.netease.mpay.b.p, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        if (this.e != null) {
            this.e.a(bundle);
        }
        a(bundle, ak.IS_PREPAY, this.f);
    }

    public String n() {
        return this.f ? (this.e == null || this.e.c == null) ? "" : this.e.c.h : f();
    }

    public String o() {
        return this.f ? (this.e == null || this.e.c == null) ? "" : this.e.c.g : g();
    }

    public String p() {
        if (!this.f) {
            return h();
        }
        if (this.e != null) {
            return this.e.b;
        }
        return null;
    }
}
