package org.json;

import android.view.View;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\t\u000bB_\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0019\u001a\u00020\n¢\u0006\u0004\b5\u00106J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u000f\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\t\u001a\u00020\bHÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010\u0011\u001a\u00020\nHÆ\u0003Je\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0012\u001a\u00020\b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0019\u001a\u00020\nHÆ\u0001J\t\u0010\u001b\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001cHÖ\u0001J\u0013\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b\t\u0010$R$\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010%\u001a\u0004\b&\u0010'\"\u0004\b\u0010\u0010(R$\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010%\u001a\u0004\b)\u0010'\"\u0004\b\t\u0010(R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010%\u001a\u0004\b*\u0010'\"\u0004\b\r\u0010(R$\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010%\u001a\u0004\b+\u0010'\"\u0004\b\u000b\u0010(R$\u0010\u0017\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010%\u001a\u0004\b,\u0010'\"\u0004\b\u000e\u0010(R$\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010%\u001a\u0004\b-\u0010'\"\u0004\b\f\u0010(R\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010%\u001a\u0004\b.\u0010'\"\u0004\b\u000f\u0010(R$\u00104\u001a\u0004\u0018\u00010/8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u00100\u001a\u0004\b1\u00102\"\u0004\b\t\u00103¨\u00067"}, d2 = {"Lcom/ironsource/tg;", "", "", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "s", "Lorg/json/JSONObject;", "t", "()Lorg/json/JSONObject;", "Lcom/ironsource/pg;", "a", "Landroid/view/View;", "b", "c", "d", "e", "f", "g", "h", "containerView", "titleView", "advertiserView", "iconView", "bodyView", "mediaView", "ctaView", "privacyIconView", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/pg;", "k", "()Lcom/ironsource/pg;", "(Lcom/ironsource/pg;)V", "Landroid/view/View;", "q", "()Landroid/view/View;", "(Landroid/view/View;)V", "i", "m", "j", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, "l", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "Lcom/ironsource/tg$a;", "Lcom/ironsource/tg$a;", "n", "()Lcom/ironsource/tg$a;", "(Lcom/ironsource/tg$a;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lcom/ironsource/pg;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final /* data */ class tg {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private pg containerView;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private View titleView;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private View advertiserView;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private View iconView;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private View bodyView;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private View mediaView;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private View ctaView;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private View privacyIconView;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private a listener;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/tg$a;", "", "Lcom/ironsource/tg$b;", "viewName", "", "a", "Lcom/ironsource/ku;", "viewVisibilityParams", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface a {
        void a(ku viewVisibilityParams);

        void a(b viewName);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0005j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/ironsource/tg$b;", "", "", "a", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "c", "d", "e", "f", "g", "h", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public enum b {
        Title("title"),
        Advertiser(y8.h.F0),
        Body(y8.h.E0),
        Cta(y8.h.G0),
        Icon(y8.h.H0),
        Container("container"),
        PrivacyIcon(y8.h.J0);


        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final String value;

        b(String str) {
            this.value = str;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/ironsource/tg$c", "Lcom/ironsource/pg$a;", "Lcom/ironsource/ku;", "viewVisibilityParams", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class c implements pg.a {
        c() {
        }

        @Override // com.ironsource.pg.a
        public void a(ku viewVisibilityParams) {
            Intrinsics.checkNotNullParameter(viewVisibilityParams, "viewVisibilityParams");
            a listener = tg.this.getListener();
            if (listener != null) {
                listener.a(viewVisibilityParams);
            }
        }
    }

    public tg(pg containerView, View view, View view2, View view3, View view4, View view5, View view6, View privacyIconView) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(privacyIconView, "privacyIconView");
        this.containerView = containerView;
        this.titleView = view;
        this.advertiserView = view2;
        this.iconView = view3;
        this.bodyView = view4;
        this.mediaView = view5;
        this.ctaView = view6;
        this.privacyIconView = privacyIconView;
        r();
        s();
    }

    public /* synthetic */ tg(pg pgVar, View view, View view2, View view3, View view4, View view5, View view6, View view7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(pgVar, (i & 2) != 0 ? null : view, (i & 4) != 0 ? null : view2, (i & 8) != 0 ? null : view3, (i & 16) != 0 ? null : view4, (i & 32) != 0 ? null : view5, (i & 64) != 0 ? null : view6, view7);
    }

    private static final void a(final tg tgVar, View view, final b bVar) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.ironsource.tg$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    tg.a(this.f$0, bVar, view2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(tg this$0, b viewName, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewName, "$viewName");
        a aVar = this$0.listener;
        if (aVar != null) {
            aVar.a(viewName);
        }
    }

    private final void r() {
        a(this, this.titleView, b.Title);
        a(this, this.advertiserView, b.Advertiser);
        a(this, this.bodyView, b.Body);
        a(this, this.ctaView, b.Cta);
        a(this, this.iconView, b.Icon);
        a(this, this.containerView, b.Container);
        a(this, this.privacyIconView, b.PrivacyIcon);
    }

    private final void s() {
        this.containerView.setListener$mediationsdk_release(new c());
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final pg getContainerView() {
        return this.containerView;
    }

    public final tg a(pg containerView, View titleView, View advertiserView, View iconView, View bodyView, View mediaView, View ctaView, View privacyIconView) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(privacyIconView, "privacyIconView");
        return new tg(containerView, titleView, advertiserView, iconView, bodyView, mediaView, ctaView, privacyIconView);
    }

    public final void a(View view) {
        this.advertiserView = view;
    }

    public final void a(pg pgVar) {
        Intrinsics.checkNotNullParameter(pgVar, "<set-?>");
        this.containerView = pgVar;
    }

    public final void a(a aVar) {
        this.listener = aVar;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final View getTitleView() {
        return this.titleView;
    }

    public final void b(View view) {
        this.bodyView = view;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final View getAdvertiserView() {
        return this.advertiserView;
    }

    public final void c(View view) {
        this.ctaView = view;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final View getIconView() {
        return this.iconView;
    }

    public final void d(View view) {
        this.iconView = view;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final View getBodyView() {
        return this.bodyView;
    }

    public final void e(View view) {
        this.mediaView = view;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof tg)) {
            return false;
        }
        tg tgVar = (tg) other;
        return Intrinsics.areEqual(this.containerView, tgVar.containerView) && Intrinsics.areEqual(this.titleView, tgVar.titleView) && Intrinsics.areEqual(this.advertiserView, tgVar.advertiserView) && Intrinsics.areEqual(this.iconView, tgVar.iconView) && Intrinsics.areEqual(this.bodyView, tgVar.bodyView) && Intrinsics.areEqual(this.mediaView, tgVar.mediaView) && Intrinsics.areEqual(this.ctaView, tgVar.ctaView) && Intrinsics.areEqual(this.privacyIconView, tgVar.privacyIconView);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final View getMediaView() {
        return this.mediaView;
    }

    public final void f(View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.privacyIconView = view;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final View getCtaView() {
        return this.ctaView;
    }

    public final void g(View view) {
        this.titleView = view;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final View getPrivacyIconView() {
        return this.privacyIconView;
    }

    public int hashCode() {
        int iHashCode = this.containerView.hashCode() * 31;
        View view = this.titleView;
        int iHashCode2 = (iHashCode + (view == null ? 0 : view.hashCode())) * 31;
        View view2 = this.advertiserView;
        int iHashCode3 = (iHashCode2 + (view2 == null ? 0 : view2.hashCode())) * 31;
        View view3 = this.iconView;
        int iHashCode4 = (iHashCode3 + (view3 == null ? 0 : view3.hashCode())) * 31;
        View view4 = this.bodyView;
        int iHashCode5 = (iHashCode4 + (view4 == null ? 0 : view4.hashCode())) * 31;
        View view5 = this.mediaView;
        int iHashCode6 = (iHashCode5 + (view5 == null ? 0 : view5.hashCode())) * 31;
        View view6 = this.ctaView;
        return ((iHashCode6 + (view6 != null ? view6.hashCode() : 0)) * 31) + this.privacyIconView.hashCode();
    }

    public final View i() {
        return this.advertiserView;
    }

    public final View j() {
        return this.bodyView;
    }

    public final pg k() {
        return this.containerView;
    }

    public final View l() {
        return this.ctaView;
    }

    public final View m() {
        return this.iconView;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final a getListener() {
        return this.listener;
    }

    public final View o() {
        return this.mediaView;
    }

    public final View p() {
        return this.privacyIconView;
    }

    public final View q() {
        return this.titleView;
    }

    public final JSONObject t() throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("title", this.titleView != null).put(y8.h.F0, this.advertiserView != null).put(y8.h.E0, this.bodyView != null).put(y8.h.G0, this.ctaView != null).put(y8.h.I0, this.mediaView != null).put(y8.h.H0, this.iconView != null);
        Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "JSONObject()\n        .pu…\"icon\", iconView != null)");
        return jSONObjectPut;
    }

    public String toString() {
        return "ISNNativeAdViewHolder(containerView=" + this.containerView + ", titleView=" + this.titleView + ", advertiserView=" + this.advertiserView + ", iconView=" + this.iconView + ", bodyView=" + this.bodyView + ", mediaView=" + this.mediaView + ", ctaView=" + this.ctaView + ", privacyIconView=" + this.privacyIconView + ')';
    }
}
