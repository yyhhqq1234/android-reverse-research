package com.netease.mpay.widget.b;

import android.content.Context;
import android.content.res.Resources;
import android.webkit.DownloadListener;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.aq;

/* loaded from: classes.dex */
public class m implements DownloadListener {
    private Context a;
    private Resources b;
    private com.netease.mpay.widget.s c;
    private a d;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(String str);
    }

    public m(Context context, a aVar) {
        this.a = context;
        this.d = aVar;
        this.b = context.getResources();
        this.c = new com.netease.mpay.widget.s(context);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        if (aq.a(this.a) == null) {
            this.c.a(this.b.getString(RIdentifier.h.ca), this.b.getString(RIdentifier.h.Y));
            this.d.a();
        } else if (aq.c(this.a)) {
            this.d.a(str);
        } else {
            this.c.a(this.b.getString(RIdentifier.h.cl), this.b.getString(RIdentifier.h.m), new n(this, str), this.b.getString(RIdentifier.h.h), new o(this), true, new p(this));
        }
    }
}
