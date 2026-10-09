package org.json;

import androidx.core.app.NotificationCompat;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B3\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u00105\u001a\u000204\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000106\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u000107¢\u0006\u0004\b9\u0010:J\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0001J\u000e\u0010\u0007\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\rR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0019\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001e\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010#\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b\u001c\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010'\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b!\u0010%\u001a\u0004\b\u0010\u0010&R\u0017\u0010,\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b\u0007\u0010+R\u0017\u00101\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b)\u00100¨\u0006;"}, d2 = {"Lcom/ironsource/pb;", "Lcom/ironsource/a2;", "Lcom/ironsource/y1;", NotificationCompat.CATEGORY_EVENT, "", "", "", "a", "eventInterface", "", "", "isPublisherLoad", "Lcom/ironsource/b2;", "Lcom/ironsource/b2;", "wrapper", "", "b", "Ljava/util/List;", "c", "()Ljava/util/List;", "eventsInterfaces", "Lcom/ironsource/hh;", "Lcom/ironsource/hh;", "d", "()Lcom/ironsource/hh;", y8.a.e, "Lcom/ironsource/wk;", "Lcom/ironsource/wk;", "e", "()Lcom/ironsource/wk;", "load", "Lcom/ironsource/ut;", "Lcom/ironsource/ut;", "f", "()Lcom/ironsource/ut;", "token", "Lcom/ironsource/o4;", "Lcom/ironsource/o4;", "()Lcom/ironsource/o4;", y3.f, "Lcom/ironsource/k0;", "g", "Lcom/ironsource/k0;", "()Lcom/ironsource/k0;", "adInteraction", "Lcom/ironsource/zt;", "h", "Lcom/ironsource/zt;", "()Lcom/ironsource/zt;", "troubleshoot", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "Lcom/ironsource/b2$b;", "level", "", "Lcom/ironsource/p7;", "eventManager", "<init>", "(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/b2$b;Ljava/util/List;Lcom/ironsource/p7;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class pb implements a2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final b2 wrapper;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final List<a2> eventsInterfaces;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final hh init;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final wk load;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final ut token;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final o4 auction;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final k0 adInteraction;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final zt troubleshoot;

    public pb(IronSource.AD_UNIT adFormat, b2.b level, List<? extends a2> eventsInterfaces, p7 p7Var) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(eventsInterfaces, "eventsInterfaces");
        b2 b2Var = new b2(adFormat, level, this, p7Var);
        this.wrapper = b2Var;
        this.eventsInterfaces = CollectionsKt.toMutableList((Collection) eventsInterfaces);
        hh hhVar = b2Var.f;
        Intrinsics.checkNotNullExpressionValue(hhVar, "wrapper.init");
        this.init = hhVar;
        wk wkVar = b2Var.g;
        Intrinsics.checkNotNullExpressionValue(wkVar, "wrapper.load");
        this.load = wkVar;
        ut utVar = b2Var.h;
        Intrinsics.checkNotNullExpressionValue(utVar, "wrapper.token");
        this.token = utVar;
        o4 o4Var = b2Var.i;
        Intrinsics.checkNotNullExpressionValue(o4Var, "wrapper.auction");
        this.auction = o4Var;
        k0 k0Var = b2Var.j;
        Intrinsics.checkNotNullExpressionValue(k0Var, "wrapper.adInteraction");
        this.adInteraction = k0Var;
        zt ztVar = b2Var.k;
        Intrinsics.checkNotNullExpressionValue(ztVar, "wrapper.troubleshoot");
        this.troubleshoot = ztVar;
    }

    public /* synthetic */ pb(IronSource.AD_UNIT ad_unit, b2.b bVar, List list, p7 p7Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ad_unit, bVar, (i & 4) != 0 ? CollectionsKt.emptyList() : list, (i & 8) != 0 ? null : p7Var);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final k0 getAdInteraction() {
        return this.adInteraction;
    }

    @Override // org.json.a2
    public Map<String, Object> a(y1 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        HashMap map = new HashMap();
        Iterator<T> it = this.eventsInterfaces.iterator();
        while (it.hasNext()) {
            Map<String, Object> mapA = ((a2) it.next()).a(event);
            Intrinsics.checkNotNullExpressionValue(mapA, "it.getEventsAdditionalDataMap(event)");
            map.putAll(mapA);
        }
        return map;
    }

    public final void a(a2 eventInterface) {
        Intrinsics.checkNotNullParameter(eventInterface, "eventInterface");
        this.eventsInterfaces.add(eventInterface);
    }

    public final void a(boolean isPublisherLoad) {
        if (isPublisherLoad) {
            this.load.a(true);
        } else {
            if (isPublisherLoad) {
                throw new NoWhenBranchMatchedException();
            }
            this.load.a();
        }
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final o4 getAuction() {
        return this.auction;
    }

    public final List<a2> c() {
        return this.eventsInterfaces;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final hh getInit() {
        return this.init;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final wk getLoad() {
        return this.load;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final ut getToken() {
        return this.token;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final zt getTroubleshoot() {
        return this.troubleshoot;
    }
}
