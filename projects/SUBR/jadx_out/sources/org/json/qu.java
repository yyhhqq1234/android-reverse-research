package org.json;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.c;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000 \u001e2\u00020\u0001:\u0001\tB\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u001c\u0010\u001dJ\"\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\t\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH&J$\u0010\t\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001b\u001a\u00020\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\t\u0010\u001a¨\u0006\u001f"}, d2 = {"Lcom/ironsource/qu;", "", "Lcom/ironsource/j5;", "item", "Lcom/ironsource/g5;", "auctionData", "Lcom/ironsource/b0;", "adInstanceFactory", "Lcom/ironsource/y;", "a", "Lcom/ironsource/ru;", "waterfallFetcherListener", "", "", "waterfallItems", "Lcom/ironsource/su;", "Lcom/ironsource/t2;", "Lcom/ironsource/t2;", "adTools", "Lcom/ironsource/t1;", "b", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/tn;", "c", "Lcom/ironsource/tn;", "()Lcom/ironsource/tn;", "outcomeReporter", "<init>", "(Lcom/ironsource/t2;Lcom/ironsource/t1;)V", "d", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public abstract class qu {

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final t2 adTools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final t1 adUnitData;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final tn outcomeReporter;

    /* JADX INFO: renamed from: com.ironsource.qu$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcom/ironsource/qu$a;", "", "Lcom/ironsource/t2;", "adTools", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/qu;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final qu a(t2 adTools, t1 adUnitData) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            return adUnitData.u() ? new m5(adTools, adUnitData) : new cn(adTools, adUnitData);
        }
    }

    @Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/ironsource/qu$b", "Lcom/ironsource/tn;", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements tn {
        b() {
        }

        @Override // org.json.tn
        public /* synthetic */ void a(y yVar, String str, nj njVar) {
            tn.CC.$default$a(this, yVar, str, njVar);
        }

        @Override // org.json.tn
        public /* synthetic */ void a(List list, y yVar) {
            tn.CC.$default$a(this, list, yVar);
        }
    }

    public qu(t2 adTools, t1 adUnitData) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.adTools = adTools;
        this.adUnitData = adUnitData;
        this.outcomeReporter = new b();
    }

    private final y a(j5 item, g5 auctionData, b0 adInstanceFactory) {
        t1 t1Var = this.adUnitData;
        String strC = item.c();
        Intrinsics.checkNotNullExpressionValue(strC, "item.instanceName");
        NetworkSettings networkSettingsA = t1Var.a(strC);
        if (networkSettingsA != null) {
            c.b().b(networkSettingsA, this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String(), this.adUnitData.getAdProperties().getLevelPlayAdId().getId());
            int iF = this.adTools.f();
            t1 t1Var2 = this.adUnitData;
            return adInstanceFactory.a(new z(t1Var2, networkSettingsA, auctionData, new z2(networkSettingsA, t1Var2.b(networkSettingsA), this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String()), item, iF));
        }
        String str = "could not find matching provider settings for auction response item - item = " + item.c();
        IronLog.INTERNAL.error(l1.a(this.adTools, str, (String) null, 2, (Object) null));
        this.adTools.getEventSender().getTroubleshoot().g(str);
        return null;
    }

    public final su a(List<? extends j5> waterfallItems, g5 auctionData, b0 adInstanceFactory) {
        Intrinsics.checkNotNullParameter(waterfallItems, "waterfallItems");
        Intrinsics.checkNotNullParameter(auctionData, "auctionData");
        Intrinsics.checkNotNullParameter(adInstanceFactory, "adInstanceFactory");
        IronLog.INTERNAL.verbose(l1.a(this.adTools, "waterfall.size() = " + waterfallItems.size(), (String) null, 2, (Object) null));
        ArrayList arrayList = new ArrayList();
        int size = waterfallItems.size();
        for (int i = 0; i < size; i++) {
            y yVarA = a(waterfallItems.get(i), auctionData, adInstanceFactory);
            if (yVarA != null && yVarA.f() != null) {
                arrayList.add(yVarA);
            }
        }
        su suVar = new su(arrayList);
        IronLog.INTERNAL.verbose(l1.a(this.adTools, "updateWaterfall() - next waterfall is " + suVar + ".toWaterfallString()", (String) null, 2, (Object) null));
        return suVar;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public tn getOutcomeReporter() {
        return this.outcomeReporter;
    }

    public abstract void a(b0 adInstanceFactory, ru waterfallFetcherListener);
}
