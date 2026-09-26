package com.netease.mpay.codescanner;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import com.dodola.rocoo.Hack;
import com.netease.codescanner.CodeScanConfig;
import com.netease.codescanner.CodeScanner;
import com.netease.codescanner.widget.ViewfinderView;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.Cdo;
import com.netease.mpay.User;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.al;
import com.netease.mpay.b.am;
import com.netease.mpay.b.an;
import com.netease.mpay.b.ao;
import com.netease.mpay.b.at;
import com.netease.mpay.bj;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bd;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public class e extends com.netease.mpay.a {
    private com.netease.mpay.b.v d;
    private CodeScanner e;
    private Resources f;
    private com.netease.mpay.codescanner.d g;
    private boolean h;
    private a i;
    private b j;
    private boolean k;
    private com.netease.mpay.e.b l;
    private com.netease.mpay.e.b.o m;
    private boolean n;

    /* loaded from: classes.dex */
    public class a extends BroadcastReceiver {
        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                if (bj.b(context)) {
                    e.this.h = true;
                    e.this.w();
                } else {
                    e.this.h = false;
                    e.this.w();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        private b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ b(e eVar, f fVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends b {
        String b;
        String c;

        c(String str, String str2) {
            super(e.this, null);
            this.b = str;
            this.c = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends b {
        String b;

        d(String str) {
            super(e.this, null);
            this.b = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public e(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.h = false;
        this.k = false;
        this.n = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(View view, int i) {
        int i2 = 0;
        while (view.getId() != i) {
            int top = view.getTop() + i2;
            view = (View) view.getParent();
            i2 = top;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.server.response.aa aaVar) {
        com.netease.mpay.b.a(this.a, b.a.ScanCodeLoginActivity, new com.netease.mpay.b.w(new a.C0035a(this.d.a(), "webLogin", this.d.c()), this.d.a, aaVar), null, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        Resources resources = this.a.getResources();
        com.netease.mpay.widget.a aVar = new com.netease.mpay.widget.a(this.a, resources.getString(RIdentifier.h.d), str, resources.getString(RIdentifier.h.cS), new j(this, z), false);
        aVar.a(resources.getDimensionPixelSize(RIdentifier.d.p), 0);
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(View view, int i) {
        int i2 = 0;
        while (view.getId() != i) {
            int left = view.getLeft() + i2;
            view = (View) view.getParent();
            i2 = left;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0053 -> B:19:0x0056). Please report as a decompilation issue!!! */
    public b b(String str) {
        b bVar;
        if (!TextUtils.isEmpty(str) && str.trim().startsWith(com.netease.mpay.server.b.a())) {
            try {
                Map a2 = bd.a(new URL(str.trim()));
                String str2 = (String) a2.get(BaseConstants.NET_KEY_uuid);
                String str3 = (String) a2.get("uid");
                String str4 = (String) a2.get("data_id");
                if (!TextUtils.isEmpty(str4)) {
                    bVar = new c(str3, str4);
                } else if (!TextUtils.isEmpty(str2)) {
                    bVar = new d(str2);
                }
            } catch (Exception e) {
                Cdo.a((Throwable) e);
            }
            return bVar;
        }
        bVar = null;
        return bVar;
    }

    private boolean b(int i) {
        int i2 = this.a.getResources().getConfiguration().orientation;
        switch (i) {
            case 1:
                i = 1;
                break;
            case 2:
            case 3:
            case 4:
                i = 2;
                break;
        }
        return i != i2;
    }

    private void c(String str) {
        this.h = false;
        Resources resources = this.a.getResources();
        com.netease.mpay.widget.a aVar = new com.netease.mpay.widget.a(this.a, resources.getString(RIdentifier.h.d), str, resources.getString(RIdentifier.h.cS), resources.getString(RIdentifier.h.g), new k(this), false);
        aVar.a(resources.getDimensionPixelSize(RIdentifier.d.p), 0);
        aVar.a();
    }

    private int u() {
        if (this.d.c() == null || this.d.c().mScreenOrientation < 0) {
            return 1;
        }
        switch (this.d.c().mScreenOrientation) {
            case 1:
            case 4:
                return this.d.c().mScreenOrientation;
            case 2:
            case 3:
                return 2;
            default:
                return 1;
        }
    }

    private void v() {
        this.a.setContentView(RIdentifier.g.P);
        y();
        w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        View findViewById = this.a.findViewById(RIdentifier.f.aG);
        if (findViewById == null) {
            return;
        }
        if (this.h) {
            findViewById.setVisibility(8);
        } else {
            findViewById.setVisibility(0);
        }
    }

    private void x() {
        this.g = new com.netease.mpay.codescanner.d(this.a);
        CodeScanConfig codeScanConfig = new CodeScanConfig();
        codeScanConfig.decode_generateErrorPreview = true;
        this.e = new f(this, this.a, (SurfaceView) this.a.findViewById(RIdentifier.f.aI), (ViewfinderView) this.a.findViewById(RIdentifier.f.aH), codeScanConfig);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.a.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            int i = displayMetrics.widthPixels;
            displayMetrics.widthPixels = displayMetrics.heightPixels;
            displayMetrics.heightPixels = i;
        }
        this.e.setFindPreviewSizeCallback(new i(this, displayMetrics));
    }

    private void y() {
        super.a(this.f.getString(RIdentifier.h.q));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.v(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, al alVar) {
        super.a(i, i2, intent, alVar);
        com.netease.mpay.e.b.o b2 = this.l.c().b("login");
        if (this.m != null && this.m.m && (b2 == null || (b2.d != null && !b2.d.equals(this.m.d)))) {
            if (this.e != null) {
                this.e.pause();
            }
            this.d.e.onLogout(this.m.c);
            this.d.e.onDialogFinish();
            this.a.finish();
            return;
        }
        if (alVar instanceof an) {
            if (!TextUtils.isEmpty(((an) alVar).b)) {
                c(((an) alVar).b);
                return;
            }
        } else if (alVar instanceof am) {
            return;
        }
        if (this.e != null) {
            this.e.pause();
        }
        if (3 == i && (alVar instanceof at) && this.d.b != null && (this.j instanceof c)) {
            this.a.finish();
            this.d.b.onFetchOrder(((c) this.j).b, ((c) this.j).c);
            return;
        }
        if (1 != i || alVar == null || !(alVar instanceof ao)) {
            this.a.finish();
            this.d.e.onDialogFinish();
            return;
        }
        this.a.finish();
        if (this.d.c.a()) {
            this.d.c.c().onLoginSuccess(new User((ao) alVar));
        } else {
            this.a.finish();
            this.d.e.onDialogFinish();
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        if (this.e != null) {
            return;
        }
        v();
        x();
        this.e.resume();
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f = this.a.getResources();
        this.h = bj.b(this.a);
        this.i = new a();
        this.k = b(u());
        this.l = new com.netease.mpay.e.b(this.a, this.d.a());
        this.m = this.l.c().b("login");
        if (!this.k) {
            v();
            x();
        }
        s();
    }

    @Override // com.netease.mpay.a
    public boolean b(MotionEvent motionEvent) {
        if (this.e == null) {
            return false;
        }
        return this.e.onTouchEvent(motionEvent);
    }

    @Override // com.netease.mpay.a
    public void d() {
        super.d();
    }

    @Override // com.netease.mpay.a
    public void f() {
        if (this.e != null) {
            this.e.resume();
        }
        super.f();
    }

    @Override // com.netease.mpay.a
    public void h() {
        if (this.e != null) {
            this.e.pause();
        }
        super.h();
    }

    @Override // com.netease.mpay.a
    public void i() {
        super.i();
    }

    @Override // com.netease.mpay.a
    public void j() {
        t();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        this.a.finish();
        this.d.e.onDialogFinish();
        return super.l();
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        this.a.finish();
        this.d.e.onDialogFinish();
        return super.o();
    }

    public void s() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.a.registerReceiver(this.i, intentFilter);
        this.n = true;
    }

    public void t() {
        if (this.n) {
            this.a.unregisterReceiver(this.i);
        }
    }
}
