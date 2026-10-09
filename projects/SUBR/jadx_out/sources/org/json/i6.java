package org.json;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.AdapterUtils;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.l;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0005B\u001f\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001e\u001a\u00020\u0018\u0012\u0006\u0010\u0013\u001a\u00020\u000f¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\u0005\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bJ\b\u0010\u0005\u001a\u00020\u000bH\u0014J\b\u0010\r\u001a\u00020\fH\u0016R\"\u0010\u0013\u001a\u0010\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u000f0\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u00060\u0014R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006!"}, d2 = {"Lcom/ironsource/i6;", "Lcom/ironsource/m1;", "Lcom/ironsource/mediationsdk/ISBannerSize;", "m", h6.u, "a", "Lcom/ironsource/iu;", "viewBinder", "Lcom/ironsource/v1;", "displayListener", "", "Lcom/ironsource/b0;", "Lcom/ironsource/o1;", "b", "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/l6;", "kotlin.jvm.PlatformType", "i", "Ljava/lang/ref/WeakReference;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/i6$a;", "j", "Lcom/ironsource/i6$a;", "adInstanceListener", "Lcom/ironsource/j6;", "k", "Lcom/ironsource/j6;", "bannerAdUnitData", "Lcom/ironsource/l1;", "tools", "adUnitData", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/j6;Lcom/ironsource/l6;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class i6 extends m1 {

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final WeakReference<l6> listener;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final a adInstanceListener;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final j6 bannerAdUnitData;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\bH\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\bH\u0016¨\u0006\r"}, d2 = {"Lcom/ironsource/i6$a;", "Lcom/ironsource/m1$a;", "Lcom/ironsource/m1;", "Lcom/ironsource/w5;", "Lcom/ironsource/y;", j5.p, "", "b", "Lcom/ironsource/u5;", "c", "a", "<init>", "(Lcom/ironsource/i6;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    private final class a extends m1.a implements w5 {
        public a() {
            super();
        }

        @Override // org.json.w5
        public void a(u5 instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(i6.this.a(instance.getInstanceSignature()));
            l6 l6Var = (l6) i6.this.listener.get();
            if (l6Var != null) {
                l6Var.c();
            }
        }

        @Override // org.json.w5
        public void b(u5 instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(i6.this.a(instance.getInstanceSignature()));
            l6 l6Var = (l6) i6.this.listener.get();
            if (l6Var != null) {
                l6Var.f();
            }
        }

        @Override // com.ironsource.m1.a, org.json.c0
        public void b(y instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            super.b(instance);
            v1 v1Var = i6.this.j().get();
            if (v1Var != null) {
                v1Var.a();
            }
        }

        @Override // org.json.w5
        public void c(u5 instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(i6.this.a(instance.getInstanceSignature()));
            l6 l6Var = (l6) i6.this.listener.get();
            if (l6Var != null) {
                l6Var.d();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i6(l1 tools, j6 adUnitData, l6 listener) {
        String str;
        int iB;
        super(tools, adUnitData, listener);
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = new WeakReference<>(listener);
        this.adInstanceListener = new a();
        this.bannerAdUnitData = adUnitData;
        Placement placementH = h();
        IronLog.INTERNAL.verbose("placement = " + placementH);
        if (placementH == null || TextUtils.isEmpty(placementH.getCom.ironsource.oo.d java.lang.String())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Object[] objArr = new Object[1];
            objArr[0] = placementH == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load banner - %s", Arrays.copyOf(objArr, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            iB = x1.b(adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String());
        } else {
            str = null;
            iB = 510;
        }
        if (str != null) {
            IronLog.API.error(a(str));
            a(iB, str);
        }
    }

    private final ISBannerSize a(ISBannerSize bannerSize) {
        if (bannerSize.isSmart()) {
            return AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? l.a() : ISBannerSize.BANNER;
        }
        return bannerSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final y a(i6 this$0, z instanceData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        return new u5(new t2(this$0.getAdUnitTools(), b2.b.PROVIDER), instanceData, this$0.adInstanceListener);
    }

    private final ISBannerSize m() {
        return getAdUnitTools().a(this.bannerAdUnitData.getAdProperties().getAdSize());
    }

    @Override // org.json.m1
    protected b0 a() {
        return new b0() { // from class: com.ironsource.i6$$ExternalSyntheticLambda0
            @Override // org.json.b0
            public final y a(z zVar) {
                return i6.a(this.f$0, zVar);
            }
        };
    }

    public final void a(iu viewBinder, v1 displayListener) {
        Intrinsics.checkNotNullParameter(displayListener, "displayListener");
        if (viewBinder != null) {
            a(new y5(viewBinder), displayListener);
        }
    }

    @Override // org.json.m1
    public o1 b() {
        return new p6(this.bannerAdUnitData.getAdProperties(), a(m()));
    }
}
