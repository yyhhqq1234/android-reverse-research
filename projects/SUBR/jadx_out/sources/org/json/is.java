package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, d2 = {"Lcom/ironsource/is;", "Lcom/ironsource/xu;", "Lcom/ironsource/y;", "instanceToShow", "", "c", j5.p, "b", "a", "Lcom/ironsource/tn;", "d", "Lcom/ironsource/tn;", "outcomeReporter", "Lcom/ironsource/su;", "e", "Lcom/ironsource/su;", "waterfallInstances", "Lcom/ironsource/e0;", "f", "Lcom/ironsource/e0;", "adInstanceLoadStrategy", "Lcom/ironsource/t2;", "adTools", "<init>", "(Lcom/ironsource/t2;Lcom/ironsource/tn;Lcom/ironsource/su;Lcom/ironsource/e0;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class is extends xu {

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final tn outcomeReporter;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final su waterfallInstances;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final e0 adInstanceLoadStrategy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public is(t2 adTools, tn outcomeReporter, su waterfallInstances, e0 adInstanceLoadStrategy) {
        super(adTools, outcomeReporter);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        Intrinsics.checkNotNullParameter(adInstanceLoadStrategy, "adInstanceLoadStrategy");
        this.outcomeReporter = outcomeReporter;
        this.waterfallInstances = waterfallInstances;
        this.adInstanceLoadStrategy = adInstanceLoadStrategy;
    }

    @Override // org.json.xu
    public void a() {
        y instanceToShow = this.adInstanceLoadStrategy.c().getInstanceToShow();
        if (instanceToShow != null) {
            this.outcomeReporter.a(this.waterfallInstances.b(), instanceToShow);
        }
    }

    @Override // org.json.xu
    public void a(y instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (!this.adInstanceLoadStrategy.a(instance) && (!this.adInstanceLoadStrategy.a() || (instance = this.adInstanceLoadStrategy.c().getInstanceToShow()) == null)) {
            return;
        }
        this.outcomeReporter.a(this.waterfallInstances.b(), instance);
    }

    @Override // org.json.xu
    public void b(y instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // org.json.xu
    public void c(y instanceToShow) {
        Intrinsics.checkNotNullParameter(instanceToShow, "instanceToShow");
        this.outcomeReporter.a(this.waterfallInstances.b(), instanceToShow);
    }
}
