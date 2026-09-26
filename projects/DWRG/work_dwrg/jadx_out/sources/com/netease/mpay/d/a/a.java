package com.netease.mpay.d.a;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.Cdo;
import com.netease.mpay.cq;
import com.netease.mpay.ew;
import com.netease.mpay.fh;
import com.netease.mpay.hi;
import com.netease.mpay.widget.RIdentifier;
import java.io.Serializable;

/* loaded from: classes.dex */
public class a extends ew {
    private static com.netease.mpay.widget.al g = new com.netease.mpay.widget.al();
    private b b;
    private c c;
    private com.netease.mpay.d.a.a.e d;
    private Resources e;
    private com.netease.mpay.e.b.af f;
    private boolean h = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.mpay.d.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0039a {
        ENTER_MOBILE_PARAMS,
        ON_ENTER_MOBILE_CALLBACK;

        EnumC0039a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b extends fh {
        void a();

        void a(String str, com.netease.mpay.server.response.v vVar, boolean z);

        void b();
    }

    /* loaded from: classes.dex */
    public static class c implements Serializable {
        public String a;
        public String b;
        public String c;
        public String d;
        public Integer e;
        public long f;

        public c(String str, String str2, Integer num, AuthenticationCallback authenticationCallback) {
            this(str, str2, null, null, num, authenticationCallback);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public c(String str, String str2, String str3, String str4, AuthenticationCallback authenticationCallback) {
            this(str, str2, str3, str4, null, authenticationCallback);
        }

        public c(String str, String str2, String str3, String str4, Integer num, AuthenticationCallback authenticationCallback) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = num;
            this.f = authenticationCallback == null ? -1L : hi.a().b.a(authenticationCallback);
        }
    }

    public a() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static a a(c cVar, b bVar) {
        a aVar = new a();
        aVar.b(cVar, bVar);
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            this.b.a(this.e.getString(RIdentifier.h.am));
        } else if (!cq.a(str)) {
            this.b.a(this.e.getString(RIdentifier.h.af));
        } else {
            boolean z = this.c.e != null;
            new com.netease.mpay.f.aj(this.a, this.c.a, this.c.b, str, z, new e(this, str, z)).h();
        }
    }

    @Override // com.netease.mpay.ew
    public void a(boolean z) {
        if (z && this.h) {
            if (!TextUtils.isEmpty(this.c.d)) {
                this.b.a(this.c.d);
            }
            this.h = false;
        }
    }

    @Override // com.netease.mpay.ew
    public boolean a() {
        return false;
    }

    public void b(c cVar, b bVar) {
        this.c = cVar;
        this.b = bVar;
        Bundle bundle = new Bundle();
        bundle.putSerializable(EnumC0039a.ENTER_MOBILE_PARAMS.name(), cVar);
        bundle.putLong(EnumC0039a.ON_ENTER_MOBILE_CALLBACK.name(), g != null ? g.a(bVar) : -1L);
        setArguments(bundle);
    }

    @Override // com.netease.mpay.ew, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle arguments = getArguments();
            this.b = (b) g.b(arguments.getLong(EnumC0039a.ON_ENTER_MOBILE_CALLBACK.name()));
            this.c = (c) arguments.getSerializable(EnumC0039a.ENTER_MOBILE_PARAMS.name());
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            if (this.b != null) {
                this.b.d();
            }
        }
        if (this.c == null) {
            throw new NullPointerException("");
        }
        if (getActivity().hasWindowFocus()) {
            if (!TextUtils.isEmpty(this.c.d)) {
                this.b.a(this.c.d);
            }
        } else if (!TextUtils.isEmpty(this.c.d)) {
            this.h = true;
        }
        this.e = this.a.getResources();
        this.f = new com.netease.mpay.e.b(this.a, this.c.a).e().a();
        if (this.c.e == null) {
            this.d = new com.netease.mpay.d.a.a.d(this.c.c, this.c.f <= 0, new com.netease.mpay.d.a.c(this));
        } else {
            com.netease.mpay.server.response.u a = com.netease.mpay.server.response.u.a(this.a, this.c.a);
            this.d = new com.netease.mpay.d.a.a.a(this.c.e.intValue(), a.a(this.a, 1), a.a(this.a), new com.netease.mpay.d.a.b(this));
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.a == null || this.a.isFinishing() || this.b == null) {
            return null;
        }
        return this.d.a(this.a, layoutInflater, viewGroup);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.d.a(this.a);
        this.a.findViewById(RIdentifier.f.at).setOnClickListener(new d(this));
    }
}
