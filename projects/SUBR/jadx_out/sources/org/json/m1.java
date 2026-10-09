package org.json;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.d;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0091\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0002\b&\u0018\u00002\u00020\u0001:\u0001\u0006B\u001f\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010\u001a\u001a\u00020\u0016\u0012\u0006\u0010.\u001a\u00020,¢\u0006\u0004\bA\u0010BJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0006\u001a\u00020\u0005H$J\u000e\u0010\u0006\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J\u0016\u0010\u0006\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\tJ\u0018\u0010\u0006\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0004J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\u0012\u0010\u0006\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0011H\u0004R\u001a\u0010\u001a\u001a\u00020\u00168\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001f\u001a\u00020\u001b8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070 8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\u0003\u0010!\u001a\u0004\b\"\u0010#\"\u0004\b\u0014\u0010$R(\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0 8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\u000e\u0010!\u001a\u0004\b%\u0010#\"\u0004\b\u0006\u0010$R\u001a\u0010+\u001a\u00020&8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\"\u0010.\u001a\u0010\u0012\f\u0012\n -*\u0004\u0018\u00010,0,0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010!R\u0018\u00101\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00108\u001a\u0004\u0018\u0001068DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b3\u00107R\u0014\u0010;\u001a\u00020\u00118DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R\u0014\u0010>\u001a\u00020<8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010=¨\u0006C"}, d2 = {"Lcom/ironsource/m1;", "", "com/ironsource/m1$b", "c", "()Lcom/ironsource/m1$b;", "Lcom/ironsource/b0;", "a", "Lcom/ironsource/j2;", "loadListener", "", "Lcom/ironsource/g0;", "adInstancePresenter", "Lcom/ironsource/v1;", "displayListener", "d", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "errorReason", "Lcom/ironsource/o1;", "b", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "Lcom/ironsource/t1;", "Lcom/ironsource/t1;", "f", "()Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/t2;", "Lcom/ironsource/t2;", "g", "()Lcom/ironsource/t2;", "adUnitTools", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "k", "()Ljava/lang/ref/WeakReference;", "(Ljava/lang/ref/WeakReference;)V", "j", "Lcom/ironsource/pu;", "e", "Lcom/ironsource/pu;", "l", "()Lcom/ironsource/pu;", d.h, "Lcom/ironsource/h2;", "kotlin.jvm.PlatformType", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/xa;", "Lcom/ironsource/xa;", "loadDuration", "Lcom/ironsource/pb;", "h", "Lcom/ironsource/pb;", "eventsWrapper", "Lcom/ironsource/mediationsdk/model/Placement;", "()Lcom/ironsource/mediationsdk/model/Placement;", "currentPlacement", "i", "()Ljava/lang/String;", "currentPlacementName", "Lcom/ironsource/g1;", "()Lcom/ironsource/g1;", "adReadyStatus", "Lcom/ironsource/l1;", "adTools", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/h2;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public abstract class m1 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final t1 adUnitData;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final t2 adUnitTools;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    protected WeakReference<j2> loadListener;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    protected WeakReference<v1> displayListener;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final pu waterfall;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final WeakReference<h2> listener;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private xa loadDuration;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final pb eventsWrapper;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0094\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"Lcom/ironsource/m1$a;", "Lcom/ironsource/c0;", "Lcom/ironsource/y;", j5.p, "", "b", "a", "<init>", "(Lcom/ironsource/m1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    protected class a implements c0 {
        public a() {
        }

        @Override // org.json.c0
        public void a(y instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            m1.this.eventsWrapper.getAdInteraction().a(m1.this.i());
            h2 h2Var = (h2) m1.this.listener.get();
            if (h2Var != null) {
                h2Var.b();
            }
        }

        @Override // org.json.c0
        public void b(y instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(m1.this.a(instance.getInstanceSignature()));
            m1.this.getWaterfall().b(instance);
            m1.this.eventsWrapper.getAdInteraction().g(m1.this.i());
            m1.this.getAdUnitTools().m().b(m1.this.getAdUnitData().getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String());
        }
    }

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u000b"}, d2 = {"com/ironsource/m1$b", "Lcom/ironsource/vu;", "Lcom/ironsource/y;", j5.p, "", "b", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "errorReason", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements vu {
        b() {
        }

        @Override // org.json.vu
        public void a(int errorCode, String errorReason) {
            Intrinsics.checkNotNullParameter(errorReason, "errorReason");
            m1.this.a(errorCode, errorReason);
        }

        @Override // org.json.vu
        public void a(y instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            m1.this.getAdUnitTools().getEventSender().getAdInteraction().e(m1.this.i());
            j2 j2Var = m1.this.k().get();
            if (j2Var != null) {
                j2Var.c(new q1(m1.this, instance.d()));
            }
        }

        @Override // org.json.vu
        public void b(y instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            m1.this.eventsWrapper.getLoad().a(xa.a(m1.this.loadDuration), false);
            j2 j2Var = m1.this.k().get();
            if (j2Var != null) {
                j2Var.e(new q1(m1.this, instance.d()));
            }
        }
    }

    public m1(l1 adTools, t1 adUnitData, h2 listener) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.adUnitData = adUnitData;
        t2 t2Var = new t2(adTools, adUnitData, b2.b.MEDIATION);
        this.adUnitTools = t2Var;
        this.waterfall = new pu(t2Var, adUnitData, c());
        this.listener = new WeakReference<>(listener);
        this.eventsWrapper = t2Var.getEventSender();
        IronLog.INTERNAL.verbose("adFormat = " + adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String() + ", adUnitId = " + adUnitData.getAdProperties().getAdUnitId());
    }

    private final b c() {
        return new b();
    }

    protected abstract b0 a();

    protected final String a(String message) {
        return l1.a(this.adUnitTools, message, (String) null, 2, (Object) null);
    }

    protected final void a(int errorCode, String errorReason) {
        Intrinsics.checkNotNullParameter(errorReason, "errorReason");
        IronLog.INTERNAL.verbose(a("errorCode = " + errorCode + ", errorReason = " + errorReason));
        this.eventsWrapper.getLoad().a(xa.a(this.loadDuration), errorCode, errorReason);
        j2 j2Var = k().get();
        if (j2Var != null) {
            j2Var.a(new IronSourceError(errorCode, errorReason));
        }
    }

    public final void a(g0 adInstancePresenter, v1 displayListener) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        Intrinsics.checkNotNullParameter(displayListener, "displayListener");
        a(new WeakReference<>(displayListener));
        this.waterfall.a(adInstancePresenter);
    }

    public final void a(j2 loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        IronLog.INTERNAL.verbose(l1.a(this.adUnitTools, (String) null, (String) null, 3, (Object) null));
        this.adUnitTools.a(b());
        b(new WeakReference<>(loadListener));
        this.eventsWrapper.a(this.adUnitData.getIsPublisherLoad());
        this.loadDuration = new xa();
        this.waterfall.a(a());
    }

    protected final void a(WeakReference<v1> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.displayListener = weakReference;
    }

    public o1 b() {
        return new o1(this.adUnitData.getAdProperties());
    }

    protected final void b(WeakReference<j2> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.loadListener = weakReference;
    }

    public final void d() {
        IronLog.INTERNAL.verbose(l1.a(this.adUnitTools, (String) null, (String) null, 3, (Object) null));
        this.waterfall.a();
    }

    public g1 e() {
        return this.waterfall.b() ? new g1.b(false, 1, null) : new g1.a(false, null, 3, null);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    protected final t1 getAdUnitData() {
        return this.adUnitData;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    protected final t2 getAdUnitTools() {
        return this.adUnitTools;
    }

    protected final Placement h() {
        return this.adUnitData.getAdProperties().getPlacement();
    }

    protected final String i() {
        return this.adUnitData.m();
    }

    protected final WeakReference<v1> j() {
        WeakReference<v1> weakReference = this.displayListener;
        if (weakReference != null) {
            return weakReference;
        }
        Intrinsics.throwUninitializedPropertyAccessException("displayListener");
        return null;
    }

    protected final WeakReference<j2> k() {
        WeakReference<j2> weakReference = this.loadListener;
        if (weakReference != null) {
            return weakReference;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loadListener");
        return null;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    protected final pu getWaterfall() {
        return this.waterfall;
    }
}
