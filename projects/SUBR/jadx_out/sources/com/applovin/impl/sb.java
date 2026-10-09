package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.adview.AppLovinFullscreenAdViewObserver;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.drive.DriveFile;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class sb implements AppLovinInterstitialAdDialog {
    protected final com.applovin.impl.sdk.j a;
    private final WeakReference b;
    private final Map c = Collections.synchronizedMap(new HashMap());
    private volatile AppLovinAdLoadListener d;
    private volatile AppLovinAdDisplayListener e;
    private volatile AppLovinAdVideoPlaybackListener f;
    private volatile AppLovinAdClickListener g;
    private volatile com.applovin.impl.sdk.ad.b h;

    public String toString() {
        return "AppLovinInterstitialAdDialog{}";
    }

    public Map h() {
        return this.c;
    }

    public AppLovinAdDisplayListener c() {
        return this.e;
    }

    public AppLovinAdVideoPlaybackListener d() {
        return this.f;
    }

    public com.applovin.impl.sdk.ad.b f() {
        return this.h;
    }

    public sb(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (context != null) {
            this.a = appLovinSdk.a();
            this.b = new WeakReference(context);
            return;
        }
        throw new IllegalArgumentException("No context specified");
    }

    class a implements AppLovinAdLoadListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            sb.this.b(appLovinAd);
            sb.this.showAndRender(appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            sb.this.b(i);
        }
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        a(new a());
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        AppLovinAd appLovinAdA = yp.a(appLovinAd, this.a);
        Context contextE = e();
        String strA = a(appLovinAdA, appLovinAd, contextE);
        if (StringUtils.isValidString(strA)) {
            a(appLovinAd, strA);
        } else {
            a((com.applovin.impl.sdk.ad.b) appLovinAdA, contextE);
        }
    }

    public AppLovinAdClickListener b() {
        return this.g;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.d = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.e = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.g = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setExtraInfo(String str, Object obj) {
        if (str != null) {
            this.c.put(str, obj);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle) {
        if (viewGroup != null && lifecycle != null) {
            AppLovinAd appLovinAdA = yp.a(appLovinAd, this.a);
            Context contextE = e();
            String strA = a(appLovinAdA, appLovinAd, contextE);
            if (StringUtils.isValidString(strA)) {
                a(appLovinAd, strA);
                return;
            }
            AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver = new AppLovinFullscreenAdViewObserver(lifecycle, this, this.a);
            lifecycle.addObserver(appLovinFullscreenAdViewObserver);
            a((com.applovin.impl.sdk.ad.b) appLovinAdA, viewGroup, appLovinFullscreenAdViewObserver, contextE);
            return;
        }
        com.applovin.impl.sdk.n.h("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
        a(appLovinAd, "Failed to show interstitial: attempting to show ad with null container view or lifecycle object");
    }

    class b implements o9.d {
        final /* synthetic */ Context a;
        final /* synthetic */ AppLovinFullscreenAdViewObserver b;
        final /* synthetic */ ViewGroup c;

        b(Context context, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, ViewGroup viewGroup) {
            this.a = context;
            this.b = appLovinFullscreenAdViewObserver;
            this.c = viewGroup;
        }

        @Override // com.applovin.impl.o9.d
        public void a(o9 o9Var) {
            if (r.a((Activity) this.a)) {
                com.applovin.impl.sdk.n.h("InterstitialAdDialogWrapper", "Failed to show interstitial: attempting to show ad when parent activity is finishing");
                sb.a(sb.this.h, sb.this.e, "Failed to show interstitial: attempting to show ad when parent activity is finishing", null, null);
                return;
            }
            this.b.setPresenter(o9Var);
            try {
                o9Var.a(this.c);
            } catch (Throwable th) {
                String str = "Failed to show interstitial: presenter threw exception " + th;
                com.applovin.impl.sdk.n.h("InterstitialAdDialogWrapper", str);
                sb.a(sb.this.h, sb.this.e, str, null, null);
            }
        }

        @Override // com.applovin.impl.o9.d
        public void a(String str, Throwable th) {
            sb.a(sb.this.h, sb.this.e, str, th, null);
        }
    }

    private long g() {
        String str = this.a.f0().getExtraParameters().get("fullscreen_ad_display_delay_enabled");
        if (str == null || Boolean.parseBoolean(str)) {
            return Math.max(0L, ((Long) this.a.a(sj.c2)).longValue());
        }
        return 0L;
    }

    private void i() {
        if (this.a.e().a() == null) {
            this.a.C().c(ba.r);
        }
    }

    private Context e() {
        return (Context) this.b.get();
    }

    public void a() {
        this.g = null;
        this.d = null;
        this.f = null;
        this.e = null;
    }

    private void b(Context context) {
        Intent intent = new Intent(context, (Class<?>) AppLovinFullscreenActivity.class);
        intent.putExtra("com.applovin.interstitial.sdk_key", this.a.a0());
        AppLovinFullscreenActivity.parentInterstitialWrapper = this;
        if (this.a.e().a() == null && ((Boolean) this.a.a(sj.B2)).booleanValue()) {
            intent.addFlags(8388608);
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (context instanceof Activity) {
            context.startActivity(intent);
            ((Activity) context).overridePendingTransition(0, 0);
        } else {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        }
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
    }

    private void a(AppLovinAd appLovinAd, String str) {
        if (this.e != null) {
            if (this.e instanceof pb) {
                ((pb) this.e).onAdDisplayFailed(str);
            } else {
                this.e.adHidden(appLovinAd);
            }
        }
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdDisplayListener appLovinAdDisplayListener, String str, Throwable th, AppLovinFullscreenActivity appLovinFullscreenActivity) {
        com.applovin.impl.sdk.n.c("InterstitialAdDialogWrapper", str, th);
        if (appLovinAdDisplayListener instanceof pb) {
            fc.a(appLovinAdDisplayListener, str);
        } else {
            fc.b(appLovinAdDisplayListener, bVar);
        }
        if (appLovinFullscreenActivity != null) {
            appLovinFullscreenActivity.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinAd appLovinAd) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sb$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAd appLovinAd) {
        if (this.d != null) {
            this.d.adReceived(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        if (this.d != null) {
            this.d.failedToReceiveAd(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("InterstitialAdDialogWrapper", "Presenting ad in a fullscreen activity");
        }
        b(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Context context, AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("InterstitialAdDialogWrapper", "Presenting ad in a containerView(" + viewGroup + ")");
        }
        viewGroup.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        o9.a(this.h, this.g, this.e, this.f, this.c, this.a, (Activity) context, new b(context, appLovinFullscreenAdViewObserver, viewGroup));
    }

    private void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.a.j().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinAdLoadListener);
    }

    private String a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2, Context context) {
        if (context == null) {
            com.applovin.impl.sdk.n.h("InterstitialAdDialogWrapper", "Failed to show interstitial: stale activity reference provided");
            return "Failed to show interstitial: stale activity reference provided";
        }
        if (appLovinAd == null) {
            com.applovin.impl.sdk.n.h("InterstitialAdDialogWrapper", "Unable to retrieve the loaded ad: " + appLovinAd2);
            return "Unable to retrieve the loaded ad";
        }
        if (!((AppLovinAdImpl) appLovinAd).hasShown() || !((Boolean) this.a.a(sj.M1)).booleanValue()) {
            return null;
        }
        com.applovin.impl.sdk.n.h("InterstitialAdDialogWrapper", "Attempting to show ad again: " + appLovinAd);
        return "Attempting to show ad again";
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, Context context, final Runnable runnable) {
        if (TextUtils.isEmpty(bVar.I()) && bVar.e1() && !e4.a(context) && (context instanceof Activity)) {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setTitle(bVar.P()).setMessage(bVar.O()).setPositiveButton(bVar.N(), (DialogInterface.OnClickListener) null).create();
            alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.sb$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    runnable.run();
                }
            });
            alertDialogCreate.show();
            return;
        }
        runnable.run();
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, final Context context) {
        i();
        this.a.f().a(bVar);
        this.h = bVar;
        final long jG = g();
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("InterstitialAdDialogWrapper", "Presenting ad with delay " + jG + "ms...");
        }
        if (((Boolean) this.a.a(sj.Y0)).booleanValue()) {
            this.a.g().a(this.h);
        }
        a(bVar, context, new Runnable() { // from class: com.applovin.impl.sb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(context, jG);
            }
        });
    }

    private void a(com.applovin.impl.sdk.ad.b bVar, final ViewGroup viewGroup, final AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, final Context context) {
        i();
        this.a.f().a(bVar);
        this.h = bVar;
        final long jG = g();
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("InterstitialAdDialogWrapper", "Presenting ad with delay " + jG + "ms...");
        }
        if (((Boolean) this.a.a(sj.Y0)).booleanValue()) {
            this.a.g().a(this.h);
        }
        a(bVar, context, new Runnable() { // from class: com.applovin.impl.sb$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(context, viewGroup, appLovinFullscreenAdViewObserver, jG);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final Context context, long j) {
        new Handler(context.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.sb$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(context);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final Context context, final ViewGroup viewGroup, final AppLovinFullscreenAdViewObserver appLovinFullscreenAdViewObserver, long j) {
        new Handler(context.getMainLooper()).postDelayed(new Runnable() { // from class: com.applovin.impl.sb$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(viewGroup, context, appLovinFullscreenAdViewObserver);
            }
        }, j);
    }
}
