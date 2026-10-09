package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f1 extends d1 {
    private final String f;
    private final com.applovin.impl.sdk.ad.b g;
    private final List h;
    private final boolean i;
    private final u2 j;
    private final com.applovin.impl.sdk.j k;
    private final a l;

    public interface a {
        void a(Uri uri);
    }

    public f1(String str, com.applovin.impl.sdk.ad.b bVar, u2 u2Var, com.applovin.impl.sdk.j jVar, a aVar) {
        this(str, bVar, bVar.Y(), true, u2Var, jVar, aVar);
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Boolean call() {
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        String strA = this.k.A().a(a(), this.f, this.g.getCachePrefix(), this.h, this.i, this.j, this.k.A().a(this.f, this.g));
        if (TextUtils.isEmpty(strA)) {
            a((Uri) null);
            return Boolean.FALSE;
        }
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        File fileA = this.k.A().a(strA, a());
        if (fileA == null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to retrieve File for cached filename = " + strA);
            }
            a((Uri) null);
            return Boolean.FALSE;
        }
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        Uri uriFromFile = Uri.fromFile(fileA);
        if (uriFromFile == null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to extract Uri from file");
            }
            a((Uri) null);
            return Boolean.FALSE;
        }
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        a(uriFromFile);
        return Boolean.TRUE;
    }

    public f1(String str, com.applovin.impl.sdk.ad.b bVar, List list, boolean z, u2 u2Var, com.applovin.impl.sdk.j jVar, a aVar) {
        super("AsyncTaskCacheResource", jVar);
        this.f = str;
        this.g = bVar;
        this.h = list;
        this.i = z;
        this.j = u2Var;
        this.k = jVar;
        this.l = aVar;
    }

    private void a(Uri uri) {
        a aVar;
        if (this.e.get() || (aVar = this.l) == null) {
            return;
        }
        aVar.a(uri);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f.equals(((f1) obj).f);
    }

    public int hashCode() {
        String str = this.f;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }
}
