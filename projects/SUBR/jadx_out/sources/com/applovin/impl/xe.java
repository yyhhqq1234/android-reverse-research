package com.applovin.impl;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class xe {
    private static final HashMap b = new HashMap();
    private static final HashMap c = new HashMap();
    private static final HashMap d = new HashMap();
    private final com.applovin.impl.sdk.j a;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l, Long l2) {
        return l;
    }

    public xe(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
    }

    private void b(ve veVar, we weVar, ve.a aVar) {
        HashMap map;
        if (a(veVar, weVar, aVar)) {
            String strB = weVar.b();
            HashMap mapA = a(weVar.a());
            synchronized (mapA) {
                if (mapA.containsKey(strB)) {
                    map = (HashMap) mapA.get(strB);
                } else {
                    HashMap map2 = new HashMap();
                    mapA.put(strB, map2);
                    map = map2;
                }
                map.put(veVar, aVar.a(map.get(veVar)));
            }
        }
    }

    private boolean a(ve veVar, we weVar, ve.a aVar) {
        if (veVar == null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().b("MediationStatsManager", "Failed to update stat, no stat provided");
            }
            return false;
        }
        if (weVar == null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().b("MediationStatsManager", "Failed to update stat, no dimension key provided");
            }
            return false;
        }
        if (aVar != null) {
            return true;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().b("MediationStatsManager", "Failed to update stat, no stat updater provided");
        }
        return false;
    }

    public Map a(ve veVar, we.a aVar) {
        HashMap mapA = a(aVar);
        HashMap map = new HashMap();
        synchronized (mapA) {
            for (String str : mapA.keySet()) {
                map.put(str, ((HashMap) mapA.get(str)).get(veVar));
            }
        }
        return map;
    }

    private HashMap a(we.a aVar) {
        if (aVar == we.a.AD_UNIT_ID) {
            return b;
        }
        if (aVar == we.a.AD_FORMAT) {
            return c;
        }
        return d;
    }

    public void a(ve veVar, we weVar) {
        b(veVar, weVar, new ve.a() { // from class: com.applovin.impl.xe$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.ve.a
            public final Object a(Object obj) {
                return xe.a((Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l) {
        return Long.valueOf(l != null ? 1 + l.longValue() : 1L);
    }

    public void a(ve veVar, we weVar, final Long l) {
        b(veVar, weVar, new ve.a() { // from class: com.applovin.impl.xe$$ExternalSyntheticLambda1
            @Override // com.applovin.impl.ve.a
            public final Object a(Object obj) {
                return xe.a(l, (Long) obj);
            }
        });
    }
}
