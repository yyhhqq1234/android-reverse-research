package org.json.mediationsdk.demandOnly;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.logger.IronLog;
import org.json.p5;

/* JADX INFO: loaded from: classes3.dex */
public class ISDemandOnlyBannerLayout extends FrameLayout {
    private View a;
    private ISBannerSize b;
    private String c;
    private Activity d;
    private boolean e;
    private p5 f;

    class a implements Runnable {
        final /* synthetic */ View a;
        final /* synthetic */ FrameLayout.LayoutParams b;

        a(View view, FrameLayout.LayoutParams layoutParams) {
            this.a = view;
            this.b = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            ISDemandOnlyBannerLayout.this.removeAllViews();
            ViewParent parent = this.a.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.a);
            }
            ISDemandOnlyBannerLayout.this.a = this.a;
            ISDemandOnlyBannerLayout.this.addView(this.a, 0, this.b);
        }
    }

    public ISDemandOnlyBannerLayout(Activity activity, ISBannerSize iSBannerSize) {
        super(activity);
        this.e = false;
        this.d = activity;
        this.b = iSBannerSize == null ? ISBannerSize.BANNER : iSBannerSize;
        this.f = new p5();
    }

    private ISDemandOnlyBannerLayout(Context context) {
        super(context);
        this.e = false;
    }

    protected void a() {
        this.e = true;
        this.d = null;
        this.b = null;
        this.c = null;
        this.a = null;
        removeBannerListener();
    }

    void a(View view, FrameLayout.LayoutParams layoutParams) {
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(view, layoutParams));
    }

    public Activity getActivity() {
        return this.d;
    }

    public ISDemandOnlyBannerListener getBannerDemandOnlyListener() {
        return this.f.a();
    }

    public View getBannerView() {
        return this.a;
    }

    public p5 getListener() {
        return this.f;
    }

    public String getPlacementName() {
        return this.c;
    }

    public ISBannerSize getSize() {
        return this.b;
    }

    public boolean isDestroyed() {
        return this.e;
    }

    public void removeBannerListener() {
        IronLog.API.info();
        this.f.b((Object) null);
    }

    public void setBannerDemandOnlyListener(ISDemandOnlyBannerListener iSDemandOnlyBannerListener) {
        IronLog.API.info();
        this.f.b(iSDemandOnlyBannerListener);
    }

    public void setPlacementName(String str) {
        this.c = str;
    }
}
