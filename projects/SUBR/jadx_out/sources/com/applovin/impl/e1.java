package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public class e1 extends d1 {
    private final String f;
    private final com.applovin.impl.sdk.ad.b g;
    private final List h;
    private final u2 i;
    private final c j;
    private StringBuffer k;
    private final Object l;
    private final ExecutorService m;
    private List n;

    public interface c {
        void a(String str, boolean z);
    }

    public e1(String str, com.applovin.impl.sdk.ad.b bVar, List list, u2 u2Var, ExecutorService executorService, com.applovin.impl.sdk.j jVar, c cVar) {
        super("AsyncTaskCacheHTMLResources", jVar);
        this.f = str;
        this.g = bVar;
        this.h = list;
        this.i = u2Var;
        this.m = executorService;
        this.j = cVar;
        this.k = new StringBuffer(str);
        this.l = new Object();
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Boolean call() throws InterruptedException {
        HashSet hashSetD;
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        if (TextUtils.isEmpty(this.f)) {
            a(this.f);
            return Boolean.FALSE;
        }
        if (!((Boolean) this.a.a(sj.E0)).booleanValue()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Resource caching is disabled, skipping cache...");
            }
            a(this.f);
            return Boolean.FALSE;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSetC = c();
        if (hashSetC != null) {
            hashSet.addAll(hashSetC);
        }
        if (((Boolean) this.a.a(sj.W4)).booleanValue() && (hashSetD = d()) != null) {
            hashSet.addAll(hashSetD);
        }
        this.n = new ArrayList(hashSet);
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        List list = this.n;
        if (list != null && !list.isEmpty()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Executing " + this.n.size() + " caching operations...");
            }
            this.m.invokeAll(this.n);
            if (((Boolean) this.a.a(sj.V0)).booleanValue()) {
                synchronized (this.l) {
                    a(this.k.toString());
                }
            } else {
                a(this.k.toString());
            }
            return Boolean.TRUE;
        }
        a(this.f);
        return Boolean.FALSE;
    }

    private void a(String str) {
        c cVar;
        if (this.e.get() || (cVar = this.j) == null) {
            return;
        }
        cVar.a(str, false);
    }

    class a implements f1.a {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            if (uri != null) {
                if (((Boolean) e1.this.a.a(sj.V0)).booleanValue()) {
                    synchronized (e1.this.l) {
                        StringUtils.replaceAll(e1.this.k, this.a, uri.toString());
                    }
                } else {
                    StringUtils.replaceAll(e1.this.k, this.a, uri.toString());
                }
                e1.this.g.a(uri);
                e1.this.i.d();
                return;
            }
            com.applovin.impl.sdk.n nVar = e1.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                e1 e1Var = e1.this;
                e1Var.c.a(e1Var.b, "Failed to cache JavaScript resource " + this.a);
            }
            if (e1.this.j != null) {
                e1.this.j.a(e1.this.f, true);
            }
            e1.this.i.c();
        }
    }

    private HashSet d() {
        HashSet hashSet = new HashSet();
        for (String str : StringUtils.getRegexMatches(StringUtils.match(this.f, (String) this.a.a(sj.Y4)), 1)) {
            if (this.e.get()) {
                return null;
            }
            if (!StringUtils.isValidString(str)) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Skip caching of non-resource " + str);
                }
            } else {
                hashSet.add(new f1(str, this.g, Collections.emptyList(), false, this.i, this.a, new a(str)));
            }
        }
        return hashSet;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00b1  */
    /* JADX WARN: Instruction removed from duplicated block: B:30:0x00b1, please report this as an issue */
    private HashSet c() {
        HashSet hashSet = new HashSet();
        Collection collectionE = e();
        for (String str : this.h) {
            int iIndexOf = 0;
            int i = 0;
            while (iIndexOf < this.f.length()) {
                if (this.e.get()) {
                    return null;
                }
                iIndexOf = this.f.indexOf(str, i);
                if (iIndexOf == -1) {
                    break;
                }
                int length = this.f.length();
                int i2 = iIndexOf;
                while (!collectionE.contains(Character.valueOf(this.f.charAt(i2))) && i2 < length) {
                    i2++;
                }
                if (i2 > iIndexOf && i2 != length) {
                    String strSubstring = this.f.substring(str.length() + iIndexOf, i2);
                    if (StringUtils.isValidString(strSubstring)) {
                        if (this.g.M0()) {
                            if (this.g.Q().equals(str + strSubstring)) {
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.c.a(this.b, "Postponing caching for \"" + strSubstring + "\" video resource");
                                }
                            } else {
                                String str2 = str + strSubstring;
                                hashSet.add(new f1(str2, this.g, Arrays.asList(str), true, this.i, this.a, new b(str2, str, strSubstring)));
                            }
                        } else {
                            String str3 = str + strSubstring;
                            hashSet.add(new f1(str3, this.g, Arrays.asList(str), true, this.i, this.a, new b(str3, str, strSubstring)));
                        }
                    } else if (com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.b, "Skip caching of non-resource " + strSubstring);
                    }
                    i = i2;
                } else {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.b(this.b, "Unable to cache resource; ad HTML is invalid.");
                    }
                    return null;
                }
            }
        }
        return hashSet;
    }

    class b implements f1.a {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            if (uri == null) {
                if (e1.this.g.X().contains(this.b + this.c) && e1.this.j != null) {
                    e1.this.j.a(e1.this.f, true);
                }
                e1.this.i.c();
                return;
            }
            if (((Boolean) e1.this.a.a(sj.V0)).booleanValue()) {
                synchronized (e1.this.l) {
                    StringUtils.replaceAll(e1.this.k, this.a, uri.toString());
                }
            } else {
                StringUtils.replaceAll(e1.this.k, this.a, uri.toString());
            }
            e1.this.g.a(uri);
            e1.this.i.d();
        }
    }

    private Collection e() {
        HashSet hashSet = new HashSet();
        for (char c2 : ((String) this.a.a(sj.D0)).toCharArray()) {
            hashSet.add(Character.valueOf(c2));
        }
        hashSet.add(Character.valueOf(Typography.quote));
        return hashSet;
    }
}
