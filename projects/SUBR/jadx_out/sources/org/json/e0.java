package org.json;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000 \u000f2\u00020\u0001:\u0003\n\u0004\u000fB\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0018\u0010\u0004\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0018\u0010\n\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0014J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0003J\u0006\u0010\n\u001a\u00020\bJ\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0011R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/ironsource/e0;", "", "", "Lcom/ironsource/y;", "b", j5.p, "Lcom/ironsource/e0$b;", "loadSelection", "", "", "a", "Lcom/ironsource/su;", "waterfallInstances", "d", "Lcom/ironsource/e0$c;", "c", "Lcom/ironsource/t1;", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/su;", "<init>", "(Lcom/ironsource/t1;Lcom/ironsource/su;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public abstract class e0 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final t1 adUnitData;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final su waterfallInstances;

    /* JADX INFO: renamed from: com.ironsource.e0$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcom/ironsource/e0$a;", "", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/su;", "waterfallInstances", "Lcom/ironsource/e0;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {

        /* JADX INFO: renamed from: com.ironsource.e0$a$a, reason: collision with other inner class name */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class C0087a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[wu.values().length];
                try {
                    iArr[wu.BIDDER_SENSITIVE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[wu.DEFAULT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e0 a(t1 adUnitData, su waterfallInstances) {
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
            int i = C0087a.a[(adUnitData.getAdvancedLoading() ? wu.BIDDER_SENSITIVE : wu.DEFAULT).ordinal()];
            if (i == 1) {
                return new r7(adUnitData, waterfallInstances);
            }
            if (i == 2) {
                return adUnitData.getShowPriorityEnabled() ? new hs(adUnitData, waterfallInstances) : new x9(adUnitData, waterfallInstances);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005R \u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\t\u0010\u000bR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\r\u0010\u000bR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\u000f\u0010\u000bR\"\u0010\u0015\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013\"\u0004\b\t\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/ironsource/e0$b;", "", "", "e", "f", "", "g", "", "Lcom/ironsource/y;", "a", "Ljava/util/List;", "()Ljava/util/List;", "instancesToLoad", "b", "loadedInstances", "c", "loadingInProgressInstances", "d", "Z", "()Z", "(Z)V", "isBidderReached", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final List<y> instancesToLoad = new ArrayList();

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final List<y> loadedInstances = new ArrayList();

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        private final List<y> loadingInProgressInstances = new ArrayList();

        /* JADX INFO: renamed from: d, reason: from kotlin metadata */
        private boolean isBidderReached;

        public final List<y> a() {
            return this.instancesToLoad;
        }

        public final void a(boolean z) {
            this.isBidderReached = z;
        }

        public final List<y> b() {
            return this.loadedInstances;
        }

        public final List<y> c() {
            return this.loadingInProgressInstances;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final boolean getIsBidderReached() {
            return this.isBidderReached;
        }

        public final boolean e() {
            return g() == 0;
        }

        public final boolean f() {
            return this.instancesToLoad.isEmpty() && this.loadingInProgressInstances.isEmpty();
        }

        public final int g() {
            return this.instancesToLoad.size() + this.loadedInstances.size() + this.loadingInProgressInstances.size();
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003J%\u0010\u0003\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/ironsource/e0$c;", "", "Lcom/ironsource/y;", "a", "", "b", "instanceToShow", "orderedInstances", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/y;", "c", "()Lcom/ironsource/y;", "Ljava/util/List;", "d", "()Ljava/util/List;", "<init>", "(Lcom/ironsource/y;Ljava/util/List;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final /* data */ class c {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final y instanceToShow;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final List<y> orderedInstances;

        /* JADX WARN: Multi-variable type inference failed */
        public c(y yVar, List<? extends y> orderedInstances) {
            Intrinsics.checkNotNullParameter(orderedInstances, "orderedInstances");
            this.instanceToShow = yVar;
            this.orderedInstances = orderedInstances;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ c a(c cVar, y yVar, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                yVar = cVar.instanceToShow;
            }
            if ((i & 2) != 0) {
                list = cVar.orderedInstances;
            }
            return cVar.a(yVar, list);
        }

        public final c a(y instanceToShow, List<? extends y> orderedInstances) {
            Intrinsics.checkNotNullParameter(orderedInstances, "orderedInstances");
            return new c(instanceToShow, orderedInstances);
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final y getInstanceToShow() {
            return this.instanceToShow;
        }

        public final List<y> b() {
            return this.orderedInstances;
        }

        public final y c() {
            return this.instanceToShow;
        }

        public final List<y> d() {
            return this.orderedInstances;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof c)) {
                return false;
            }
            c cVar = (c) other;
            return Intrinsics.areEqual(this.instanceToShow, cVar.instanceToShow) && Intrinsics.areEqual(this.orderedInstances, cVar.orderedInstances);
        }

        public int hashCode() {
            y yVar = this.instanceToShow;
            return ((yVar == null ? 0 : yVar.hashCode()) * 31) + this.orderedInstances.hashCode();
        }

        public String toString() {
            return "ShowSelection(instanceToShow=" + this.instanceToShow + ", orderedInstances=" + this.orderedInstances + ')';
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 8, 0}, xi = 48)
    public static final class d<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt.compareValues(Integer.valueOf(((y) t).getAuctionResponseItem().l()), Integer.valueOf(((y) t2).getAuctionResponseItem().l()));
        }
    }

    public e0(t1 adUnitData, su waterfallInstances) {
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        this.adUnitData = adUnitData;
        this.waterfallInstances = waterfallInstances;
    }

    private final List<y> b() {
        return CollectionsKt.sortedWith(this.waterfallInstances.b(), new d());
    }

    private final boolean b(y instance, b loadSelection) {
        IronLog ironLog;
        StringBuilder sb;
        String str;
        List<y> listC;
        if (!instance.getIsInstanceFailed()) {
            if (!instance.getIsInstanceLoaded()) {
                if (instance.getIsInstanceLoading()) {
                    IronLog.INTERNAL.verbose(instance.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().name() + " - Instance " + instance.getInstanceSignature() + " still loading");
                    listC = loadSelection.c();
                } else if (a(instance, this.waterfallInstances)) {
                    ironLog = IronLog.INTERNAL;
                    sb = new StringBuilder();
                    sb.append(instance.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().name());
                    sb.append(" - Instance ");
                    sb.append(instance.getInstanceSignature());
                    str = " is not better than already loaded instances";
                } else {
                    a(instance, loadSelection);
                }
                return a(loadSelection);
            }
            IronLog.INTERNAL.verbose(instance.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().name() + " - Instance " + instance.getInstanceSignature() + " is already loaded");
            listC = loadSelection.b();
            listC.add(instance);
            return a(loadSelection);
        }
        ironLog = IronLog.INTERNAL;
        sb = new StringBuilder();
        sb.append(instance.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().name());
        sb.append(" - Instance ");
        sb.append(instance.getInstanceSignature());
        str = " is failed to load";
        sb.append(str);
        ironLog.verbose(sb.toString());
        return a(loadSelection);
    }

    public abstract void a(y instance, b loadSelection);

    public final boolean a() {
        int i;
        List<y> listB = this.waterfallInstances.b();
        if ((listB instanceof Collection) && listB.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = listB.iterator();
            i = 0;
            while (it.hasNext()) {
                if (((y) it.next()).getIsInstanceLoaded() && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i >= this.adUnitData.getMaxInstancesToLoad();
    }

    public boolean a(b loadSelection) {
        Intrinsics.checkNotNullParameter(loadSelection, "loadSelection");
        return loadSelection.g() >= this.adUnitData.getMaxInstancesToLoad();
    }

    public final boolean a(y instance) {
        Object next;
        Intrinsics.checkNotNullParameter(instance, "instance");
        Iterator<T> it = b().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (!((y) next).getIsInstanceFailed()) {
                return Intrinsics.areEqual(next, instance);
            }
        }
        next = null;
        return Intrinsics.areEqual(next, instance);
    }

    protected boolean a(y instance, su waterfallInstances) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        return false;
    }

    public final c c() {
        Object next;
        List<y> listB = b();
        Iterator<T> it = listB.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((y) next).getIsInstanceLoaded()) {
                return new c((y) next, listB);
            }
        }
        next = null;
        return new c((y) next, listB);
    }

    public final b d() {
        IronLog.INTERNAL.verbose(this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().name() + " waterfall size: " + this.waterfallInstances.b().size());
        b bVar = new b();
        Iterator<y> it = this.waterfallInstances.b().iterator();
        while (it.hasNext() && !b(it.next(), bVar)) {
        }
        return bVar;
    }
}
