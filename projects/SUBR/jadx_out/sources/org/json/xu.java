package org.json;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u000f2\u00020\u0001:\u0001\tB\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0002J\u001c\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004J \u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002H&J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H&J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0002H&J\b\u0010\t\u001a\u00020\u0006H&R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/ironsource/xu;", "", "Lcom/ironsource/y;", "winnerInstance", "", "orderedInstances", "", "b", "instanceToShow", "a", j5.p, "", oo.d, "Lcom/ironsource/nj;", "publisherDataHolder", "c", "Lcom/ironsource/l1;", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/tn;", "Lcom/ironsource/tn;", "outcomeReporter", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/tn;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public abstract class xu {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final tn outcomeReporter;

    /* JADX INFO: renamed from: com.ironsource.xu$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ.\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¨\u0006\u0010"}, d2 = {"Lcom/ironsource/xu$a;", "", "Lcom/ironsource/t2;", "adTools", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/tn;", "outcomeReporter", "Lcom/ironsource/su;", "waterfallInstances", "Lcom/ironsource/e0;", "adInstanceLoadStrategy", "Lcom/ironsource/xu;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final xu a(t2 adTools, t1 adUnitData, tn outcomeReporter, su waterfallInstances, e0 adInstanceLoadStrategy) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
            Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
            Intrinsics.checkNotNullParameter(adInstanceLoadStrategy, "adInstanceLoadStrategy");
            return adUnitData.getShowPriorityEnabled() ? new is(adTools, outcomeReporter, waterfallInstances, adInstanceLoadStrategy) : new ba(adTools, outcomeReporter, waterfallInstances);
        }
    }

    public xu(l1 adTools, tn outcomeReporter) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
        this.adTools = adTools;
        this.outcomeReporter = outcomeReporter;
    }

    private final void b(y winnerInstance, List<? extends y> orderedInstances) {
        for (y yVar : orderedInstances) {
            if (yVar == winnerInstance) {
                winnerInstance.a(true);
                return;
            }
            yVar.a(false);
            IronLog.INTERNAL.verbose(l1.a(this.adTools, yVar.getInstanceSignature() + " - not ready to show", (String) null, 2, (Object) null));
        }
    }

    public abstract void a();

    public abstract void a(y instance);

    public final void a(y instance, String placementName, nj publisherDataHolder) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
        this.outcomeReporter.a(instance, placementName, publisherDataHolder);
    }

    public final void a(y instanceToShow, List<? extends y> orderedInstances) {
        Intrinsics.checkNotNullParameter(instanceToShow, "instanceToShow");
        Intrinsics.checkNotNullParameter(orderedInstances, "orderedInstances");
        b(instanceToShow, orderedInstances);
        c(instanceToShow);
    }

    public abstract void b(y instance);

    public abstract void c(y instanceToShow);
}
