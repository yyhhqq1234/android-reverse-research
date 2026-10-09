package org.json;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class wf extends FrameLayout implements ug {
    private static final String b = "IronSourceAdContainer";
    private bg a;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            wf wfVar = wf.this;
            wfVar.removeView(wfVar.a.getPresentingView());
            wf.this.a.a(this.a, this.b);
            wf.this.a = null;
        }
    }

    public wf(Context context) {
        super(context);
    }

    public wf(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public wf(bg bgVar, Context context) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(bgVar.d().c(), bgVar.d().a()));
        this.a = bgVar;
        addView(bgVar.getPresentingView());
    }

    private void b() throws Exception {
        JSONObject jSONObject;
        try {
            jSONObject = this.a.c().a().getJSONObject(vf.p).getJSONObject(vf.s);
        } catch (Exception e) {
            l9.d().a(e);
            jSONObject = new JSONObject();
        }
        jSONObject.put("adViewId", this.a.b());
        this.a.c().a(y8.g.R, jSONObject);
    }

    public void a() throws Exception {
        bg bgVar = this.a;
        if (bgVar == null || bgVar.c() == null) {
            throw new Exception("mAdPresenter or mAdPresenter.getAdViewLogic() are null");
        }
        b();
    }

    @Override // org.json.ug
    public synchronized void a(String str, String str2) {
        bg bgVar = this.a;
        if (bgVar != null && bgVar.c() != null && this.a.getPresentingView() != null) {
            this.a.c().e();
            Cif.a.d(new a(str, str2));
        }
    }

    @Override // org.json.ug
    public void a(String str, String str2, String str3) {
        bg bgVar = this.a;
        if (bgVar == null) {
            return;
        }
        bgVar.a(str, str2, str3);
    }

    @Override // org.json.ug
    public void a(JSONObject jSONObject, String str, String str2) {
        this.a.a(jSONObject, str, str2);
    }

    @Override // org.json.ug
    public void b(JSONObject jSONObject, String str, String str2) {
        this.a.b(jSONObject, str, str2);
    }

    @Override // org.json.ug
    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        this.a.c(jSONObject, str, str2);
    }

    @Override // org.json.ug
    public WebView getPresentingView() {
        return this.a.getPresentingView();
    }

    public uf getSize() {
        bg bgVar = this.a;
        return bgVar != null ? bgVar.d() : new uf();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        Logger.i(b, "onVisibilityChanged: " + i);
        bg bgVar = this.a;
        if (bgVar == null) {
            return;
        }
        try {
            bgVar.c().a(vf.k, i, isShown());
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        Logger.i(b, "onWindowVisibilityChanged: " + i);
        bg bgVar = this.a;
        if (bgVar == null) {
            return;
        }
        try {
            bgVar.c().a(vf.l, i, isShown());
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }
}
