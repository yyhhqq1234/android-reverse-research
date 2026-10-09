package com.applovin.impl;

import android.R;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.core.net.MailTo;
import androidx.webkit.internal.AssetHelper;
import com.applovin.creative.MaxCreativeDebuggerActivity;
import com.applovin.creative.MaxCreativeDebuggerDisplayedAdActivity;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class x4 implements r6.a {
    private static WeakReference m;
    private static final AtomicBoolean n = new AtomicBoolean();
    private final com.applovin.impl.sdk.j a;
    private final Context b;
    private final w4 e;
    private r6 g;
    private go h;
    private int i;
    private boolean j;
    private long k;
    private boolean l;
    private final List c = new ArrayList(10);
    private final Object d = new Object();
    private WeakReference f = new WeakReference(null);

    private Drawable f() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.rgb(5, 131, 170));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(Color.rgb(2, 98, WorkQueueKt.MASK));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        WeakReference weakReference = m;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public x4(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        Context contextM = com.applovin.impl.sdk.j.m();
        this.b = contextM;
        this.e = new w4(contextM);
    }

    public void l() {
        if (g()) {
            this.j = ((Boolean) this.a.a(sj.s1)).booleanValue();
            if (this.g == null) {
                this.g = new r6(this.a, this);
            }
            this.g.a();
        }
    }

    public void k() {
        r6 r6Var = this.g;
        if (r6Var != null) {
            r6Var.b();
        }
    }

    public void d(Object obj) {
        if (g() && obj != null) {
            if (!ze.a(obj) || c(obj)) {
                if (ze.b(obj) && c(obj)) {
                    return;
                }
                synchronized (this.d) {
                    this.c.add(0, new v6(obj, System.currentTimeMillis()));
                    if (this.c.size() > 10) {
                        List list = this.c;
                        list.remove(list.size() - 1);
                    }
                }
            }
        }
    }

    public void n() {
        ArrayList arrayList;
        if (!h() && n.compareAndSet(false, true)) {
            Object objA = this.a.B().a();
            if (objA != null) {
                e(objA);
                return;
            }
            synchronized (this.d) {
                arrayList = new ArrayList(this.c);
            }
            this.e.a(arrayList, this.a);
            if (!this.l) {
                m();
                this.l = true;
            }
            com.applovin.impl.sdk.n.g("AppLovinSdk", "Starting Creative Debugger...");
            r.a(this.b, MaxCreativeDebuggerActivity.class);
            return;
        }
        com.applovin.impl.sdk.n.h("AppLovinSdk", "Creative Debugger is already showing");
    }

    public boolean g() {
        return ((Boolean) this.a.a(sj.r1)).booleanValue() && this.a.f0().isCreativeDebuggerEnabled();
    }

    class a extends p {
        a() {
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxCreativeDebuggerActivity) {
                com.applovin.impl.sdk.n.g("AppLovinSdk", "Started Creative Debugger");
                if (!x4.this.h() || x4.m.get() != activity) {
                    MaxCreativeDebuggerActivity maxCreativeDebuggerActivity = (MaxCreativeDebuggerActivity) activity;
                    WeakReference unused = x4.m = new WeakReference(maxCreativeDebuggerActivity);
                    maxCreativeDebuggerActivity.a(x4.this.e, x4.this.a.e());
                }
                x4.n.set(false);
            }
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof MaxCreativeDebuggerActivity) {
                com.applovin.impl.sdk.n.g("AppLovinSdk", "Creative Debugger destroyed");
                WeakReference unused = x4.m = null;
            }
        }
    }

    private void m() {
        this.a.e().a(new a());
    }

    class b implements r.b {
        final /* synthetic */ Object a;

        b(Object obj) {
            this.a = obj;
        }

        @Override // com.applovin.impl.r.b
        public void a(MaxCreativeDebuggerDisplayedAdActivity maxCreativeDebuggerDisplayedAdActivity) {
            maxCreativeDebuggerDisplayedAdActivity.a(new v6(this.a, x4.this.a.B().b()), x4.this.a);
            x4.n.set(false);
        }
    }

    private boolean c(Object obj) {
        MaxAdFormat format;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            format = ((com.applovin.impl.sdk.ad.b) obj).getAdZone().d();
        } else {
            format = obj instanceof fe ? ((fe) obj).getFormat() : null;
        }
        return format != null && format.isFullscreenAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        this.i = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (g() && this.f.get() == null && !h()) {
            Activity activityB = this.a.e().b();
            if (activityB == null) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().b("AppLovinSdk", "Failed to display Creative Debugger button");
                    return;
                }
                return;
            }
            View viewFindViewById = activityB.findViewById(R.id.content);
            if (viewFindViewById instanceof FrameLayout) {
                final FrameLayout frameLayout = (FrameLayout) viewFindViewById;
                final View viewA = a(frameLayout, activityB);
                frameLayout.addView(viewA);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(150L);
                viewA.startAnimation(alphaAnimation);
                final ViewTreeObserver viewTreeObserver = viewFindViewById.getViewTreeObserver();
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        this.f$0.a(viewA, frameLayout);
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(viewA, frameLayout, viewTreeObserver, onGlobalLayoutListener);
                    }
                }, TimeUnit.SECONDS.toMillis(5L));
                this.f = new WeakReference(viewA);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        long seconds = TimeUnit.MILLISECONDS.toSeconds(SystemClock.elapsedRealtime() - this.k);
        if (this.k == 0 || seconds < 10) {
            return;
        }
        this.a.D().a(ka.d, "showingMediationDebuggerFromHoldingCreativeDebuggerButton");
        this.a.T0();
    }

    private View a(final FrameLayout frameLayout, Activity activity) {
        View view;
        int iDpToPx = AppLovinSdkUtils.dpToPx(activity, 40);
        int i = iDpToPx / 10;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDpToPx, iDpToPx, 8388629);
        layoutParams.setMargins(i, i, i, i);
        try {
            ImageButton imageButton = new ImageButton(activity);
            imageButton.setImageDrawable(activity.getResources().getDrawable(com.applovin.sdk.R.drawable.applovin_ic_white_small));
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setPadding(i, i, i, i * 2);
            view = imageButton;
        } catch (Throwable unused) {
            Button button = new Button(activity);
            button.setText("ⓘ");
            button.setTextColor(-1);
            button.setAllCaps(false);
            button.setTextSize(2, 20.0f);
            button.setPadding(0, 0, 0, 0);
            view = button;
        }
        view.setLayoutParams(layoutParams);
        view.setBackground(f());
        if (this.j) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda5
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.f$0.a(frameLayout, view2, motionEvent);
                }
            });
        } else {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.a(view2);
                }
            });
        }
        if (z3.f()) {
            view.setElevation(AppLovinSdkUtils.dpToPx(activity, 5));
        }
        return view;
    }

    public String b(Object obj) {
        JSONObject jSONObjectA;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            return ((com.applovin.impl.sdk.ad.b) obj).getOriginalFullResponse().toString();
        }
        if (!(obj instanceof fe)) {
            return null;
        }
        String strD = ((fe) obj).D();
        return (!ze.b(obj) || (jSONObjectA = new w(strD, this.a).a()) == null) ? strD : jSONObjectA.toString();
    }

    private void e(Object obj) {
        com.applovin.impl.sdk.n.g("AppLovinSdk", "Starting Creative Debugger for current fullscreen ad...");
        r.a(this.b, MaxCreativeDebuggerDisplayedAdActivity.class, this.a.e(), new b(obj));
    }

    @Override // com.applovin.impl.r6.a
    public void b() {
        if (this.i == 0) {
            this.h = go.a(TimeUnit.SECONDS.toMillis(3L), this.a, new Runnable() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.j();
                }
            });
        }
        int i = this.i;
        if (i % 2 == 0) {
            this.i = i + 1;
        }
    }

    public void a(v6 v6Var, Context context, boolean z) {
        Object objA = v6Var.a();
        String strA = a(v6Var);
        pc pcVar = new pc();
        if (z) {
            pcVar.b("Please describe the issue you had with this ad:\n\n\n\n");
        }
        pcVar.b(strA);
        String strB = this.a.v().b(objA);
        if (strB != null) {
            pcVar.a("\nBid Response:\n");
            pcVar.a(strB);
        }
        String str = "AppLovin Ad Report";
        Intent intentCreateChooser = Intent.createChooser(new Intent("android.intent.action.SEND").setType(AssetHelper.DEFAULT_MIME_TYPE).putExtra("android.intent.extra.SUBJECT", objA instanceof com.applovin.impl.sdk.ad.b ? "AppLovin Ad Report" : "MAX Ad Report").putExtra("android.intent.extra.TEXT", pcVar.toString()).setPackage(null), "Share Ad Report");
        if (z) {
            try {
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(MailTo.MAILTO_SCHEME));
                if (!(objA instanceof com.applovin.impl.sdk.ad.b)) {
                    str = "MAX Ad Report";
                }
                context.startActivity(intent.putExtra("android.intent.extra.SUBJECT", str).putExtra("android.intent.extra.TEXT", pcVar.toString()).setPackage("com.google.android.gm"));
                return;
            } catch (ActivityNotFoundException unused) {
                context.startActivity(intentCreateChooser);
                return;
            }
        }
        context.startActivity(intentCreateChooser);
    }

    private void b(View view, FrameLayout frameLayout) {
        if (this.j) {
            view.setOnTouchListener(null);
            this.k = 0L;
        }
        frameLayout.removeView(view);
        this.f = new WeakReference(null);
    }

    public String a(v6 v6Var) {
        Object objA = v6Var.a();
        pc pcVar = new pc();
        pcVar.b("Ad Info:\n");
        if (objA instanceof com.applovin.impl.sdk.ad.b) {
            com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) objA;
            pcVar.a(AndroidInitializeBoldSDK.MSG_NETWORK, "APPLOVIN").a(bVar).b(bVar);
        } else if (objA instanceof fe) {
            pcVar.a((fe) objA);
        }
        pcVar.a(this.a);
        pcVar.a("Epoch Timestamp (ms)", Long.valueOf(v6Var.b()));
        pcVar.a("\nDebug Info:\n").a("Platform", "fireos".equals(this.a.x().w()) ? "Fire OS" : org.json.y8.d).a("AppLovin SDK Version", AppLovinSdk.VERSION).a("Plugin Version", this.a.a(sj.K3)).a("App Package Name", this.b.getPackageName()).a("Device", String.format("%s %s (%s)", Build.BRAND, Build.MODEL, Build.DEVICE)).a("OS Version", Build.VERSION.RELEASE).a("AppLovin Random Token", this.a.Z()).a("Ad Review Version", v.b()).a(a(objA)).a("User ID", this.a.o0().c() != null ? this.a.o0().c() : "None").a("MD", this.a.a(sj.v));
        return pcVar.toString();
    }

    private Bundle a(Object obj) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CreativeDebuggerService", "Retrieving Ad Review info for ad: " + obj);
        }
        String strA = yp.a(obj);
        Bundle bundleA = this.a.i().a(strA);
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CreativeDebuggerService", "Serve id: " + strA);
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CreativeDebuggerService", "Public data: " + bundleA);
        }
        if (bundleA == null) {
            return null;
        }
        for (String str : bundleA.keySet()) {
            Object obj2 = bundleA.get(str);
            bundleA.remove(str);
            BundleUtils.put(StringUtils.toHumanReadableString(str), obj2, bundleA);
        }
        return bundleA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, FrameLayout frameLayout) {
        if (view.getParent() != null || this.f.get() == null) {
            return;
        }
        frameLayout.addView(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, FrameLayout frameLayout, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (this.k > 0 && this.j) {
            view.setVisibility(4);
        } else {
            b(view, frameLayout);
        }
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(FrameLayout frameLayout, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.k = SystemClock.elapsedRealtime();
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.i();
                }
            }, TimeUnit.SECONDS.toMillis(10L));
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (view.getVisibility() == 0) {
                this.k = 0L;
                n();
            } else {
                b(view, frameLayout);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        n();
    }

    @Override // com.applovin.impl.r6.a
    public void a() {
        int i = this.i;
        if (i % 2 == 1) {
            this.i = i + 1;
        }
        if (this.i / 2 == 2) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e();
                }
            });
            this.i = 0;
            this.h.a();
        }
    }
}
