package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0010\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0017\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b$\u0010%J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\"\u0010\r\u001a\u00020\f2\n\u0010\t\u001a\u00060\u0007j\u0002`\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\nH\u0016J#\u0010\r\u001a\u00020\f2\u0012\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u000e\"\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\u0010J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0015R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR(\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00030\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b\u0006\u0010!\"\u0004\b\r\u0010\"¨\u0006&"}, d2 = {"Lcom/ironsource/f3;", "Lcom/ironsource/n3;", "", "Lcom/ironsource/k3;", "list", "Lorg/json/JSONObject;", "b", "", "Lcom/unity3d/ironsourceads/internal/analytics/EventCode;", "code", "", "arrayList", "", "a", "", "analyticsEventEntity", "([Lcom/ironsource/k3;)V", "Lcom/ironsource/i3;", "Lcom/ironsource/i3;", "eventBaseData", "Lcom/ironsource/se;", "Lcom/ironsource/se;", "eventsManager", "Lcom/ironsource/il;", "c", "Lcom/ironsource/il;", "eventsMapper", "Lcom/ironsource/n9;", "d", "Lcom/ironsource/n9;", "currentTimeProvider", "e", "Ljava/util/List;", "()Ljava/util/List;", "(Ljava/util/List;)V", "additionalData", "<init>", "(Lcom/ironsource/i3;Lcom/ironsource/se;Lcom/ironsource/il;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class f3 implements n3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final i3 eventBaseData;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final se eventsManager;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final il<Integer, Integer> eventsMapper;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final n9 currentTimeProvider;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private List<k3> additionalData;

    public f3(i3 eventBaseData, se eventsManager, il<Integer, Integer> eventsMapper, n9 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(eventBaseData, "eventBaseData");
        Intrinsics.checkNotNullParameter(eventsManager, "eventsManager");
        Intrinsics.checkNotNullParameter(eventsMapper, "eventsMapper");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.eventBaseData = eventBaseData;
        this.eventsManager = eventsManager;
        this.eventsMapper = eventsMapper;
        this.currentTimeProvider = currentTimeProvider;
        this.additionalData = new ArrayList();
    }

    public /* synthetic */ f3(i3 i3Var, se seVar, il ilVar, n9 n9Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i3Var, seVar, ilVar, (i & 8) != 0 ? new n9.a() : n9Var);
    }

    private final JSONObject b(List<? extends k3> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((k3) it.next()).a(linkedHashMap);
        }
        return new JSONObject(linkedHashMap);
    }

    @Override // org.json.n3
    public void a() {
        this.additionalData.clear();
    }

    @Override // org.json.n3
    public void a(int code, List<k3> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "arrayList");
        try {
            Iterator<T> it = this.eventBaseData.a().iterator();
            while (it.hasNext()) {
                arrayList.add((k3) it.next());
            }
            Iterator<T> it2 = this.additionalData.iterator();
            while (it2.hasNext()) {
                arrayList.add((k3) it2.next());
            }
            this.eventsManager.a(new ob(this.eventsMapper.a(Integer.valueOf(code)).intValue(), this.currentTimeProvider.a(), b(arrayList)));
        } catch (Exception e) {
            l9.d().a(e);
            System.out.println((Object) ("LogRemote | Exception: " + e.getMessage()));
        }
    }

    public final void a(List<k3> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.additionalData = list;
    }

    @Override // org.json.n3
    public void a(k3... analyticsEventEntity) {
        Intrinsics.checkNotNullParameter(analyticsEventEntity, "analyticsEventEntity");
        for (k3 k3Var : analyticsEventEntity) {
            this.additionalData.add(k3Var);
        }
    }

    public final List<k3> b() {
        return this.additionalData;
    }
}
