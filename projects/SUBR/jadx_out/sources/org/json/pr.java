package org.json;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.sdk.controller.FeaturesManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\u0007\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016J\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\"\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00140\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lcom/ironsource/pr;", "Lcom/ironsource/ah;", "Lcom/ironsource/ah$a;", "", "b", "Lcom/ironsource/qr;", "historyRecord", "a", "Lcom/ironsource/zr;", y8.a.s, "Lorg/json/JSONObject;", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "", "", "", "Lcom/ironsource/nr;", "configuration", "", "", "Lcom/ironsource/w;", "Ljava/util/Map;", "adFormatsHistory", "Lcom/ironsource/mm;", "Lcom/ironsource/mm;", "networkGlobalDataWriter", "Ljava/util/concurrent/locks/ReadWriteLock;", "c", "Ljava/util/concurrent/locks/ReadWriteLock;", "lock", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class pr implements ah, ah.a {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private Map<String, w> adFormatsHistory = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final mm networkGlobalDataWriter = new mm();

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final ReadWriteLock lock = new ReentrantReadWriteLock();

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[or.values().length];
            try {
                iArr[or.CurrentlyLoadedAdsAndFullHistory.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[or.CurrentlyLoadedAds.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[or.Off.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    private final void b() {
        nr configuration = FeaturesManager.getInstance().getSessionHistoryConfig();
        mm mmVar = this.networkGlobalDataWriter;
        Intrinsics.checkNotNullExpressionValue(configuration, "configuration");
        mmVar.a(a(configuration));
        this.networkGlobalDataWriter.a(a());
    }

    @Override // org.json.ah
    public int a(IronSource.AD_UNIT adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.lock.readLock().lock();
        try {
            w wVar = this.adFormatsHistory.get(adFormat.toString());
            return wVar != null ? wVar.get_currentlyLoadedAds() : 0;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    @Override // org.json.ah
    public List<String> a() {
        this.lock.readLock().lock();
        try {
            Map<String, w> map = this.adFormatsHistory;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, w> entry : map.entrySet()) {
                if (entry.getValue().b()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return CollectionsKt.toList(linkedHashMap.keySet());
        } finally {
            this.lock.readLock().unlock();
        }
    }

    @Override // org.json.ah
    public Map<String, JSONObject> a(nr configuration) {
        Map<String, JSONObject> mapMutableMapOf;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.lock.readLock().lock();
        try {
            int i = a.a[configuration.getHistoryMode().ordinal()];
            if (i == 1) {
                mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(md.h1, a(zr.FullHistory)), TuplesKt.to(md.i1, a(zr.CurrentlyLoadedAds)));
            } else if (i == 2) {
                mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(md.i1, a(zr.CurrentlyLoadedAds)));
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                mapMutableMapOf = MapsKt.emptyMap();
            }
            this.lock.readLock().unlock();
            return mapMutableMapOf;
        } catch (Throwable th) {
            this.lock.readLock().unlock();
            throw th;
        }
    }

    @Override // org.json.ah
    public JSONObject a(zr mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.lock.readLock().lock();
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, w> entry : this.adFormatsHistory.entrySet()) {
                String key = entry.getKey();
                JSONObject jSONObjectA = entry.getValue().a(mode);
                if (jSONObjectA.length() > 0) {
                    jSONObject.put(key, jSONObjectA);
                }
            }
            this.lock.readLock().unlock();
            return jSONObject;
        } catch (Throwable th) {
            this.lock.readLock().unlock();
            throw th;
        }
    }

    @Override // com.ironsource.ah.a
    public void a(qr historyRecord) {
        Intrinsics.checkNotNullParameter(historyRecord, "historyRecord");
        this.lock.writeLock().lock();
        try {
            l0 adInternalInfo = historyRecord.getAdInternalInfo();
            String strValueOf = String.valueOf(adInternalInfo != null ? adInternalInfo.b() : null);
            Map<String, w> map = this.adFormatsHistory;
            w wVar = map.get(strValueOf);
            if (wVar == null) {
                wVar = new w();
                map.put(strValueOf, wVar);
            }
            wVar.a(historyRecord.a(new wr()));
            this.lock.writeLock().unlock();
            b();
        } catch (Throwable th) {
            this.lock.writeLock().unlock();
            throw th;
        }
    }
}
