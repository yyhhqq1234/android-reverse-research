package com.applovin.impl.adview.activity;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.h0;
import com.applovin.impl.o9;
import com.applovin.impl.sb;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.um;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements ServiceConnection {
    private final j a;
    private final n b;
    private final WeakReference c;
    private final AtomicBoolean d = new AtomicBoolean();
    private Messenger e;

    private class b implements AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {
        private b() {
        }

        private void a(FullscreenAdService.c cVar) {
            a(null, cVar);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_CLICKED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_DISPLAYED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_HIDDEN);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            a(FullscreenAdService.c.AD_VIDEO_STARTED);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            Bundle bundle = new Bundle();
            bundle.putDouble("percent_viewed", d);
            bundle.putBoolean("fully_watched", z);
            a(bundle, FullscreenAdService.c.AD_VIDEO_ENDED);
        }

        /* synthetic */ b(a aVar, C0014a c0014a) {
            this();
        }

        private void a(Bundle bundle, FullscreenAdService.c cVar) {
            Message messageObtain = Message.obtain((Handler) null, cVar.b());
            if (bundle != null) {
                messageObtain.setData(bundle);
            }
            try {
                a.this.e.send(messageObtain);
            } catch (RemoteException e) {
                n unused = a.this.b;
                if (n.a()) {
                    a.this.b.a("AppLovinFullscreenActivity", "Failed to forward callback (" + cVar.b() + ")", e);
                }
            }
        }
    }

    private static class c extends Handler {
        private final WeakReference a;

        /* synthetic */ c(a aVar, C0014a c0014a) {
            this(aVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar;
            if (message.what != FullscreenAdService.c.AD.b() || (aVar = (a) this.a.get()) == null) {
                super.handleMessage(message);
            } else {
                aVar.a(message.getData().getString(FullscreenAdService.DATA_KEY_RAW_FULL_AD_RESPONSE));
            }
        }

        private c(a aVar) {
            this.a = new WeakReference(aVar);
        }
    }

    public a(AppLovinFullscreenActivity appLovinFullscreenActivity, j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        this.c = new WeakReference(appLovinFullscreenActivity);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.d.compareAndSet(false, true)) {
            if (n.a()) {
                this.b.a("AppLovinFullscreenActivity", "Fullscreen ad service connected to " + componentName);
            }
            this.e = new Messenger(iBinder);
            Message messageObtain = Message.obtain((Handler) null, FullscreenAdService.c.AD.b());
            messageObtain.replyTo = new Messenger(new c(this, null));
            try {
                if (n.a()) {
                    this.b.a("AppLovinFullscreenActivity", "Requesting ad from FullscreenAdService...");
                }
                this.e.send(messageObtain);
            } catch (RemoteException e) {
                if (n.a()) {
                    this.b.a("AppLovinFullscreenActivity", "Failed to send ad request message to FullscreenAdService", e);
                }
                a();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (this.d.compareAndSet(true, false) && n.a()) {
            this.b.a("AppLovinFullscreenActivity", "FullscreenAdService disconnected from " + componentName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        AppLovinFullscreenActivity appLovinFullscreenActivity = (AppLovinFullscreenActivity) this.c.get();
        if (appLovinFullscreenActivity != null) {
            if (n.a()) {
                this.b.a("AppLovinFullscreenActivity", "Dismissing...");
            }
            appLovinFullscreenActivity.dismiss();
        } else if (n.a()) {
            this.b.b("AppLovinFullscreenActivity", "Unable to dismiss parent Activity");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = JsonUtils.getString(jSONObject, "zone_id", "");
            if (!TextUtils.isEmpty(string)) {
                this.a.i0().a(new um(jSONObject, h0.a(string), true, new C0014a(), this.a));
            } else {
                throw new IllegalStateException("No zone identifier found in ad response: " + jSONObject);
            }
        } catch (JSONException e) {
            if (n.a()) {
                this.b.a("AppLovinFullscreenActivity", "Unable to process ad: " + str, e);
            }
            a();
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.adview.activity.a$a, reason: collision with other inner class name */
    class C0014a implements AppLovinAdLoadListener {
        C0014a() {
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            AppLovinFullscreenActivity appLovinFullscreenActivity = (AppLovinFullscreenActivity) a.this.c.get();
            if (appLovinFullscreenActivity != null) {
                n unused = a.this.b;
                if (n.a()) {
                    a.this.b.a("AppLovinFullscreenActivity", "Presenting ad...");
                }
                b bVar = new b(a.this, null);
                o9.a((com.applovin.impl.sdk.ad.b) appLovinAd, bVar, bVar, bVar, null, a.this.a, appLovinFullscreenActivity, new C0015a(appLovinFullscreenActivity, appLovinAd, bVar));
                return;
            }
            n unused2 = a.this.b;
            if (n.a()) {
                a.this.b.b("AppLovinFullscreenActivity", "Unable to present ad, parent activity has been GC'd - " + appLovinAd);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            a.this.a();
        }

        /* JADX INFO: renamed from: com.applovin.impl.adview.activity.a$a$a, reason: collision with other inner class name */
        class C0015a implements o9.d {
            final /* synthetic */ AppLovinFullscreenActivity a;
            final /* synthetic */ AppLovinAd b;
            final /* synthetic */ b c;

            C0015a(AppLovinFullscreenActivity appLovinFullscreenActivity, AppLovinAd appLovinAd, b bVar) {
                this.a = appLovinFullscreenActivity;
                this.b = appLovinAd;
                this.c = bVar;
            }

            @Override // com.applovin.impl.o9.d
            public void a(o9 o9Var) {
                this.a.setPresenter(o9Var);
                o9Var.y();
            }

            @Override // com.applovin.impl.o9.d
            public void a(String str, Throwable th) {
                sb.a((com.applovin.impl.sdk.ad.b) this.b, this.c, str, th, this.a);
            }
        }
    }
}
