package org.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import org.json.cg;
import org.json.dv;
import org.json.fg;
import org.json.hu;
import org.json.jl;
import org.json.kg;
import org.json.l;
import org.json.l9;
import org.json.m;
import org.json.mediationsdk.logger.IronLog;
import org.json.oe;
import org.json.pn;
import org.json.r5;
import org.json.rb;
import org.json.sdk.utils.Logger;
import org.json.sdk.utils.SDKUtils;
import org.json.si;
import org.json.x2;
import org.json.y8;
import org.json.zp;

/* JADX INFO: loaded from: classes3.dex */
public class ControllerActivity extends Activity implements pn, hu {
    private static final String n = "ControllerActivity";
    private static final int o = 1;
    private static String p = "removeWebViewContainerView | mContainer is null";
    private static String q = "removeWebViewContainerView | view is null";
    private String a;
    private v b;
    private RelativeLayout c;
    private FrameLayout d;
    private oe e;
    private String g;
    private x2 k;
    private boolean l;
    private boolean m;
    public int currentRequestedRotation = -1;
    private boolean f = false;
    private Handler h = new Handler();
    private final Runnable i = new a();
    final RelativeLayout.LayoutParams j = new RelativeLayout.LayoutParams(-1, -1);

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(ControllerActivity.this.f));
        }
    }

    class b implements View.OnSystemUiVisibilityChangeListener {
        b() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 0) {
                ControllerActivity.this.h.removeCallbacks(ControllerActivity.this.i);
                ControllerActivity.this.h.postDelayed(ControllerActivity.this.i, 500L);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().addFlags(128);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().clearFlags(128);
        }
    }

    private View a(ViewGroup viewGroup) {
        return d() ? viewGroup.findViewById(1) : cg.a().a(this.a).getPresentingView();
    }

    private FrameLayout a(String str) {
        return !b(str) ? this.b.s() : dv.a(getApplicationContext(), cg.a().a(str).getPresentingView());
    }

    private void a() {
        runOnUiThread(new d());
    }

    private void a(String str, int i) {
        int i2;
        if (str != null) {
            if (y8.h.C.equalsIgnoreCase(str)) {
                g();
                return;
            }
            if (y8.h.D.equalsIgnoreCase(str)) {
                h();
                return;
            }
            if (y8.h.G.equalsIgnoreCase(str)) {
                if (!this.e.B(this)) {
                    return;
                } else {
                    i2 = 1;
                }
            } else if (getRequestedOrientation() != -1) {
                return;
            } else {
                i2 = 4;
            }
            setRequestedOrientation(i2);
        }
    }

    private void b() {
        String str = n;
        Logger.i(str, "clearWebviewController");
        v vVar = this.b;
        if (vVar == null) {
            Logger.i(str, "clearWebviewController, null");
            return;
        }
        vVar.a(v.u.Gone);
        this.b.C();
        this.b.D();
        this.b.g(this.g, "onDestroy");
    }

    private boolean b(String str) {
        return (TextUtils.isEmpty(str) || str.equals(Integer.toString(1))) ? false : true;
    }

    private void c() {
        Intent intent = getIntent();
        a(intent.getStringExtra(y8.h.A), intent.getIntExtra(y8.h.B, 0));
    }

    private boolean d() {
        return this.a == null;
    }

    private void e() {
        runOnUiThread(new c());
    }

    private void f() {
        ViewGroup viewGroup;
        try {
            if (this.c == null) {
                throw new Exception(p);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.d.getParent();
            View viewA = a(viewGroup2);
            if (viewA == null) {
                throw new Exception(q);
            }
            if (isFinishing() && (viewGroup = (ViewGroup) viewA.getParent()) != null) {
                viewGroup.removeView(viewA);
            }
            viewGroup2.removeView(this.d);
        } catch (Exception e) {
            l9.d().a(e);
            kg.a(zp.s, new fg().a(rb.A, e.getMessage()).a());
            Logger.i(n, "removeWebViewContainerView fail " + e.getMessage());
        }
    }

    private void g() {
        String str;
        String str2;
        int I = this.e.I(this);
        String str3 = n;
        Logger.i(str3, "setInitiateLandscapeOrientation");
        if (I != 0) {
            if (I == 2) {
                str2 = "ROTATION_180";
            } else if (I == 3) {
                str2 = "ROTATION_270 Right Landscape";
            } else {
                if (I != 1) {
                    Logger.i(str3, "No Rotation");
                    return;
                }
                str = "ROTATION_90 Left Landscape";
            }
            Logger.i(str3, str2);
            setRequestedOrientation(8);
            return;
        }
        str = "ROTATION_0";
        Logger.i(str3, str);
        setRequestedOrientation(0);
    }

    private void h() {
        String str;
        int I = this.e.I(this);
        String str2 = n;
        Logger.i(str2, "setInitiatePortraitOrientation");
        if (I == 0) {
            str = "ROTATION_0";
        } else if (I == 2) {
            Logger.i(str2, "ROTATION_180");
            setRequestedOrientation(9);
            return;
        } else if (I == 1) {
            str = "ROTATION_270 Right Landscape";
        } else {
            if (I != 3) {
                Logger.i(str2, "No Rotation");
                return;
            }
            str = "ROTATION_90 Left Landscape";
        }
        Logger.i(str2, str);
        setRequestedOrientation(1);
    }

    @Override // org.json.pn
    public boolean onBackButtonPressed() {
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Logger.i(n, "onBackPressed");
        if (r5.a().a(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // org.json.pn
    public void onCloseRequested() {
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = jl.P().f();
        try {
            new m(this).a();
            new l(this).a();
            v vVar = (v) si.a((Context) this).a().j();
            this.b = vVar;
            vVar.s().setId(1);
            this.b.a((pn) this);
            this.b.a((hu) this);
            Intent intent = getIntent();
            this.g = intent.getStringExtra(y8.h.m);
            this.f = intent.getBooleanExtra(y8.h.v, false);
            this.a = intent.getStringExtra("adViewId");
            this.l = false;
            this.m = intent.getBooleanExtra(y8.h.z0, false);
            if (this.f) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new b());
                runOnUiThread(this.i);
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.c = relativeLayout;
            setContentView(relativeLayout, this.j);
            this.d = a(this.a);
            if (this.c.findViewById(1) == null && this.d.getParent() != null) {
                finish();
            }
            c();
            this.c.addView(this.d, this.j);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        String str = n;
        Logger.i(str, "onDestroy");
        f();
        if (this.l) {
            return;
        }
        Logger.i(str, "onDestroy | destroyedFromBackground");
        b();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.b.y()) {
            this.b.x();
            return true;
        }
        if (this.f && (i == 25 || i == 24)) {
            this.h.removeCallbacks(this.i);
            this.h.postDelayed(this.i, 500L);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // org.json.pn
    public void onOrientationChanged(String str, int i) {
        a(str, i);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Logger.i(n, "onPause, isFinishing=" + isFinishing());
        t.a(this);
        v vVar = this.b;
        if (vVar != null) {
            vVar.a((Context) this);
            if (!this.m) {
                this.b.B();
            }
            this.b.a(false, y8.h.Z);
            this.b.g(this.g, y8.h.t0);
        }
        if (isFinishing()) {
            this.l = true;
            b();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.i(n, y8.h.u0);
        v vVar = this.b;
        if (vVar != null) {
            vVar.b(this);
            if (!this.m) {
                this.b.F();
            }
            this.b.a(true, y8.h.Z);
            this.b.g(this.g, y8.h.u0);
        }
        t.b(this);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Logger.i(n, "onStart");
        v vVar = this.b;
        if (vVar != null) {
            vVar.g(this.g, "onStart");
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Logger.i(n, "onStop");
        v vVar = this.b;
        if (vVar != null) {
            vVar.g(this.g, "onStop");
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Logger.i(n, "onUserLeaveHint");
        v vVar = this.b;
        if (vVar != null) {
            vVar.g(this.g, "onUserLeaveHint");
        }
    }

    @Override // org.json.hu
    public void onVideoEnded() {
        toggleKeepScreen(false);
    }

    @Override // org.json.hu
    public void onVideoPaused() {
        toggleKeepScreen(false);
    }

    @Override // org.json.hu
    public void onVideoResumed() {
        toggleKeepScreen(true);
    }

    @Override // org.json.hu
    public void onVideoStarted() {
        toggleKeepScreen(true);
    }

    @Override // org.json.hu
    public void onVideoStopped() {
        toggleKeepScreen(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.f && z) {
            runOnUiThread(this.i);
        }
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i) {
        if (this.currentRequestedRotation != i) {
            Logger.i(n, "Rotation: Req = " + i + " Curr = " + this.currentRequestedRotation);
            this.currentRequestedRotation = i;
            super.setRequestedOrientation(i);
        }
    }

    public void toggleKeepScreen(boolean z) {
        if (z) {
            e();
        } else {
            a();
        }
    }
}
