package org.json;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.c;
import org.json.mediationsdk.d;
import org.json.mediationsdk.p;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0001\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*B\u0019\b\u0016\u0012\u0006\u0010+\u001a\u00020\u0000\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010,J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\u000e\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u0011J\u0016\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\bJ\b\u0010\u0016\u001a\u0004\u0018\u00010\bR\u0014\u0010\u0019\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001e\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001b\u0010\u001dR$\u0010$\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b \u0010\"\"\u0004\b\u000e\u0010#¨\u0006-"}, d2 = {"Lcom/ironsource/t2;", "Lcom/ironsource/l1;", "Lcom/ironsource/cq;", "task", "", "c", "Lcom/ironsource/mediationsdk/IronSourceSegment;", "l", "", j5.s, "e", "Lcom/ironsource/z;", "instanceData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;", "a", "Lcom/ironsource/zg$a;", "m", "", "k", "", "timeStamp", "instanceName", "j", "g", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/p2;", "h", "Lcom/ironsource/p2;", "()Lcom/ironsource/p2;", "auctionHistory", "Lcom/ironsource/d5;", "i", "Lcom/ironsource/d5;", "()Lcom/ironsource/d5;", "(Lcom/ironsource/d5;)V", "auctionRequestEnricher", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/b2$b;", "level", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/b2$b;)V", "adUnitTools", "(Lcom/ironsource/t2;Lcom/ironsource/b2$b;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class t2 extends l1 {

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final p2 auctionHistory;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private d5 auctionRequestEnricher;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t2(l1 adTools, t1 adUnitData, b2.b level) {
        super(adTools, level);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(level, "level");
        this.adTools = adTools;
        p2 p2VarA = os.a(adUnitData, adUnitData.getAuctionSettings().c());
        Intrinsics.checkNotNullExpressionValue(p2VarA, "getAdUnitPerformance(\n  …auctionSavedHistoryLimit)");
        this.auctionHistory = p2VarA;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t2(t2 adUnitTools, b2.b level) {
        super(adUnitTools, level);
        Intrinsics.checkNotNullParameter(adUnitTools, "adUnitTools");
        Intrinsics.checkNotNullParameter(level, "level");
        this.adTools = adUnitTools.adTools;
        this.auctionHistory = adUnitTools.auctionHistory;
        this.auctionRequestEnricher = adUnitTools.auctionRequestEnricher;
    }

    public final BaseAdAdapter<?, ?> a(z instanceData) {
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        return c.b().a(instanceData.u(), instanceData.getAdFormat(), instanceData.i().getAdProperties().getLevelPlayAdId().getId());
    }

    public final String a(long timeStamp, String instanceName) {
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        String transId = IronSourceUtils.getTransId(timeStamp, instanceName);
        Intrinsics.checkNotNullExpressionValue(transId, "getTransId(timeStamp, instanceName)");
        return transId;
    }

    public final void a(d5 d5Var) {
        this.auctionRequestEnricher = d5Var;
    }

    public final void c(cq task) {
        Intrinsics.checkNotNullParameter(task, "task");
        ps.a(ps.a, task, 0L, 2, null);
    }

    public final String e(String serverData) {
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        String strC = d.b().c(serverData);
        Intrinsics.checkNotNullExpressionValue(strC, "getInstance().getDynamic…romServerData(serverData)");
        return strC;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final p2 getAuctionHistory() {
        return this.auctionHistory;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final d5 getAuctionRequestEnricher() {
        return this.auctionRequestEnricher;
    }

    public final String j() {
        return p.m().l();
    }

    public final Map<String, String> k() {
        return p.m().s();
    }

    public final IronSourceSegment l() {
        return os.a();
    }

    public final zg.a m() {
        return jl.INSTANCE.a().e();
    }
}
