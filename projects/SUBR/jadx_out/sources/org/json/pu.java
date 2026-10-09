package org.json;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0018¢\u0006\u0004\b0\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eR\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000e0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010/\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/ironsource/pu;", "Lcom/ironsource/d0;", "Lcom/ironsource/su;", "waterfallInstances", "", "a", "d", "", "c", "Lcom/ironsource/b0;", "adInstanceFactory", "b", "Lcom/ironsource/g0;", "adInstancePresenter", "Lcom/ironsource/y;", j5.p, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "Lcom/ironsource/t2;", "Lcom/ironsource/t2;", "adTools", "Lcom/ironsource/t1;", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/vu;", "Lcom/ironsource/vu;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/qu;", "Lcom/ironsource/qu;", "waterfallFetcher", "Lcom/ironsource/e0;", "e", "Lcom/ironsource/e0;", "adInstanceLoadStrategy", "Lcom/ironsource/xu;", "f", "Lcom/ironsource/xu;", "waterfallReporter", "", "g", "Ljava/util/List;", "instancesReadyToShow", "h", "Lcom/ironsource/y;", "showingAdInstance", "i", "Z", "isDestroyed", "<init>", "(Lcom/ironsource/t2;Lcom/ironsource/t1;Lcom/ironsource/vu;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class pu implements d0 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final t2 adTools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final t1 adUnitData;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final vu listener;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final qu waterfallFetcher;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private e0 adInstanceLoadStrategy;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private xu waterfallReporter;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final List<y> instancesReadyToShow;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private y showingAdInstance;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private boolean isDestroyed;

    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"com/ironsource/pu$a", "Lcom/ironsource/ru;", "Lcom/ironsource/su;", "waterfallInstances", "", "a", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "errorReason", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements ru {
        a() {
        }

        @Override // org.json.ru
        public void a(int errorCode, String errorReason) {
            Intrinsics.checkNotNullParameter(errorReason, "errorReason");
            if (pu.this.isDestroyed) {
                return;
            }
            pu.this.listener.a(errorCode, errorReason);
        }

        @Override // org.json.ru
        public void a(su waterfallInstances) {
            Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
            if (pu.this.isDestroyed) {
                return;
            }
            pu.this.a(waterfallInstances);
        }
    }

    public pu(t2 adTools, t1 adUnitData, vu listener) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.adTools = adTools;
        this.adUnitData = adUnitData;
        this.listener = listener;
        this.waterfallFetcher = qu.INSTANCE.a(adTools, adUnitData);
        this.instancesReadyToShow = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(su waterfallInstances) {
        this.adInstanceLoadStrategy = e0.INSTANCE.a(this.adUnitData, waterfallInstances);
        xu.Companion companion = xu.INSTANCE;
        t2 t2Var = this.adTools;
        t1 t1Var = this.adUnitData;
        tn outcomeReporter = this.waterfallFetcher.getOutcomeReporter();
        e0 e0Var = this.adInstanceLoadStrategy;
        if (e0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adInstanceLoadStrategy");
            e0Var = null;
        }
        this.waterfallReporter = companion.a(t2Var, t1Var, outcomeReporter, waterfallInstances, e0Var);
        d();
    }

    private final boolean c() {
        return this.showingAdInstance != null;
    }

    private final void d() {
        e0 e0Var = this.adInstanceLoadStrategy;
        xu xuVar = null;
        if (e0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adInstanceLoadStrategy");
            e0Var = null;
        }
        e0.b bVarD = e0Var.d();
        if (bVarD.e()) {
            this.listener.a(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, "Mediation No fill");
            return;
        }
        if (!bVarD.f()) {
            Iterator<y> it = bVarD.a().iterator();
            while (it.hasNext()) {
                it.next().a(this);
            }
        } else {
            xu xuVar2 = this.waterfallReporter;
            if (xuVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("waterfallReporter");
            } else {
                xuVar = xuVar2;
            }
            xuVar.a();
        }
    }

    public final void a() {
        this.isDestroyed = true;
        y yVar = this.showingAdInstance;
        if (yVar != null) {
            yVar.b();
        }
    }

    public final void a(b0 adInstanceFactory) {
        Intrinsics.checkNotNullParameter(adInstanceFactory, "adInstanceFactory");
        this.waterfallFetcher.a(adInstanceFactory, new a());
    }

    public final void a(g0 adInstancePresenter) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        e0 e0Var = this.adInstanceLoadStrategy;
        xu xuVar = null;
        if (e0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adInstanceLoadStrategy");
            e0Var = null;
        }
        e0.c cVarC = e0Var.c();
        y yVarC = cVarC.c();
        if (yVarC != null) {
            this.showingAdInstance = yVarC;
            xu xuVar2 = this.waterfallReporter;
            if (xuVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("waterfallReporter");
            } else {
                xuVar = xuVar2;
            }
            xuVar.a(cVarC.c(), cVarC.d());
            this.instancesReadyToShow.clear();
            cVarC.c().a(adInstancePresenter);
        }
    }

    @Override // org.json.d0
    public void a(IronSourceError error, y instance) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (this.isDestroyed) {
            return;
        }
        d();
    }

    @Override // org.json.d0
    public void a(y instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (this.isDestroyed || c()) {
            return;
        }
        xu xuVar = this.waterfallReporter;
        e0 e0Var = null;
        xu xuVar2 = null;
        if (xuVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("waterfallReporter");
            xuVar = null;
        }
        xuVar.a(instance);
        this.instancesReadyToShow.add(instance);
        if (this.instancesReadyToShow.size() == 1) {
            xu xuVar3 = this.waterfallReporter;
            if (xuVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("waterfallReporter");
            } else {
                xuVar2 = xuVar3;
            }
            xuVar2.b(instance);
            this.listener.b(instance);
            return;
        }
        e0 e0Var2 = this.adInstanceLoadStrategy;
        if (e0Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adInstanceLoadStrategy");
        } else {
            e0Var = e0Var2;
        }
        if (e0Var.a(instance)) {
            this.listener.a(instance);
        }
    }

    public final void b(y instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        xu xuVar = this.waterfallReporter;
        if (xuVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("waterfallReporter");
            xuVar = null;
        }
        xuVar.a(instance, this.adUnitData.m(), this.adUnitData.getPublisherDataHolder());
    }

    public final boolean b() {
        Iterator<y> it = this.instancesReadyToShow.iterator();
        while (it.hasNext()) {
            if (it.next().x()) {
                return true;
            }
        }
        return false;
    }
}
