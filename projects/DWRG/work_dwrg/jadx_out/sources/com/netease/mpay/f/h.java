package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.a.d;

/* loaded from: classes.dex */
public class h extends com.netease.mpay.f.a.d {
    private boolean a;
    private String b;
    private String j;
    private int k;
    private String l;
    private String m;
    private String n;
    private String o;
    private a p;

    /* loaded from: classes.dex */
    public interface a {
        void a(String str);

        void a(String str, b.a aVar, String str2);
    }

    public h(Activity activity, String str, String str2, String str3, boolean z, int i, String str4, String str5, String str6, String str7, String str8, a aVar) {
        super(activity, str, str2, null);
        this.b = str3;
        this.a = z;
        this.k = i;
        this.l = str4;
        this.j = str5;
        this.m = str6;
        this.n = str7;
        this.o = str8;
        this.p = aVar;
        super.c();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(d.C0045d c0045d) {
        if (this.a) {
            this.j = ((com.netease.mpay.server.response.ae) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.i(this.d, c0045d.a().j, this.b, this.m, this.k, this.l))).a;
        }
        new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ae(this.d, c0045d.a().j, this.b, this.j, this.m, this.n, this.o));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        super.a(bVar, new i(this));
    }
}
