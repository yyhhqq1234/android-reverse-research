package com.applovin.impl;

import android.text.TextUtils;
import android.webkit.URLUtil;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class km extends yl {
    private final b h;

    public interface b {
        void a(y0.b bVar);

        void a(String str);
    }

    public km(com.applovin.impl.sdk.j jVar, b bVar) {
        super("TaskFetchDeveloperUri", jVar);
        this.h = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strValueOf = String.valueOf(this.a.x().B().get(com.ironsource.y8.h.V));
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Looking up developer URI for package name: " + strValueOf);
        }
        this.a.i0().a(new a(com.applovin.impl.sdk.network.a.a(this.a).c("GET").b("https://play.google.com/store/apps/details?id=" + strValueOf).a((Object) "").a(false).a(), this.a));
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
            super(aVar, jVar);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, String str2, int i) {
            if (TextUtils.isEmpty(str2)) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "No developer URI found - response from the Play Store is empty");
                }
                km.this.h.a(y0.b.APP_DETAILS_NOT_FOUND);
                return;
            }
            Matcher matcher = Pattern.compile("(?<=\"appstore:developer_url\" content=\").*?(?=\">)").matcher(str2);
            if (!matcher.find()) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "No developer URI found - unable to find the developer_url meta tag from the Play Store listing");
                }
                km.this.h.a(y0.b.INVALID_DEVELOPER_URI);
                return;
            }
            String strGroup = matcher.group();
            if (!URLUtil.isValidUrl(strGroup)) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "Developer URI (" + strGroup + ") is not valid");
                }
                km.this.h.a(y0.b.INVALID_DEVELOPER_URI);
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Found developer URI: " + strGroup);
            }
            km.this.h.a(strGroup);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, String str3) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to fetch app details due to: " + str2 + ", and received error code: " + i);
            }
            km.this.h.a(y0.b.APP_DETAILS_NOT_FOUND);
        }
    }
}
