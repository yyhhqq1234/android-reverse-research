package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.d;
import org.json.mediationsdk.logger.IronLog;
import org.json.n7;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\t\b&\u0018\u0000 \u001f*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00020\u0003:\u0001\tB%\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0006\u001a\u00020\bH\u0002J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\u000b\u001a\u00020\bJ\b\u0010\f\u001a\u00020\u0005H\u0016J\u0015\u0010\u000b\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0012R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0015R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0015\u001a\u0004\b\u000f\u0010\u0018R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0015R \u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0015\u001a\u0004\b\t\u0010\u0018¨\u0006 "}, d2 = {"Lcom/ironsource/av;", "Lcom/ironsource/n7;", "Smash", "", "smash", "", "b", "(Lcom/ironsource/n7;)Z", "", "a", "(Lcom/ironsource/n7;)I", "d", "e", "", "(Lcom/ironsource/n7;)V", "c", "I", "maxSmashesToLoad", "Z", d.z, "", "Ljava/util/List;", d.h, "", "()Ljava/util/List;", "smashesToLoad", "loadedSmashes", "f", "loadingInProgressSmashes", "<init>", "(IZLjava/util/List;)V", "g", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public abstract class av<Smash extends n7<?>> {

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int maxSmashesToLoad;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final boolean showPriorityEnabled;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final List<Smash> waterfall;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final List<Smash> smashesToLoad;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final List<Smash> loadedSmashes;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final List<Smash> loadingInProgressSmashes;

    /* JADX INFO: renamed from: com.ironsource.av$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ@\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\f\"\f\b\u0001\u0010\u0003*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\n¨\u0006\u0010"}, d2 = {"Lcom/ironsource/av$a;", "", "Lcom/ironsource/n7;", "Smash", "Lcom/ironsource/wu;", "loadingStrategy", "", "maxSmashesToLoad", "", d.z, "", d.h, "Lcom/ironsource/av;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {

        /* JADX INFO: renamed from: com.ironsource.av$a$a, reason: collision with other inner class name */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class C0086a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[wu.values().length];
                try {
                    iArr[wu.DEFAULT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[wu.BIDDER_SENSITIVE.ordinal()] = 2;
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

        public final <Smash extends n7<?>> av<Smash> a(wu loadingStrategy, int maxSmashesToLoad, boolean showPriorityEnabled, List<? extends Smash> waterfall) {
            Intrinsics.checkNotNullParameter(loadingStrategy, "loadingStrategy");
            Intrinsics.checkNotNullParameter(waterfall, "waterfall");
            int i = C0086a.a[loadingStrategy.ordinal()];
            if (i == 1) {
                return new aa(maxSmashesToLoad, showPriorityEnabled, waterfall);
            }
            if (i == 2) {
                return new s7(maxSmashesToLoad, showPriorityEnabled, waterfall, false, 8, null);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public av(int i, boolean z, List<? extends Smash> waterfall) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        this.maxSmashesToLoad = i;
        this.showPriorityEnabled = z;
        this.waterfall = waterfall;
        this.smashesToLoad = new ArrayList();
        this.loadedSmashes = new ArrayList();
        this.loadingInProgressSmashes = new ArrayList();
    }

    private final int a(Smash smash) {
        return smash.i().l();
    }

    private final int b() {
        Integer num;
        List<Smash> list = this.waterfall;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((n7) obj).y()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Integer numValueOf = Integer.valueOf(a((n7) it.next()));
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(a((n7) it.next()));
                if (numValueOf.compareTo(numValueOf2) > 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        return Integer.MAX_VALUE;
    }

    private final boolean b(Smash smash) {
        return b() < a(smash);
    }

    public final List<Smash> a() {
        return this.loadingInProgressSmashes;
    }

    public final List<Smash> c() {
        return this.smashesToLoad;
    }

    public abstract void c(Smash smash);

    public final int d() {
        return this.smashesToLoad.size() + this.loadedSmashes.size() + this.loadingInProgressSmashes.size();
    }

    public final void d(Smash smash) {
        IronLog ironLog;
        String str;
        IronLog ironLog2;
        StringBuilder sb;
        String str2;
        List<Smash> list;
        Intrinsics.checkNotNullParameter(smash, "smash");
        if (!smash.x()) {
            if (smash.y()) {
                IronLog.INTERNAL.verbose(smash.g().name() + " - Smash " + smash.k() + " is already loaded");
                list = this.loadedSmashes;
            } else {
                if (smash.z()) {
                    ironLog2 = IronLog.INTERNAL;
                    sb = new StringBuilder();
                    sb.append(smash.g().name());
                    sb.append(" - Smash ");
                    sb.append(smash.k());
                    str2 = " still loading";
                } else if (smash.A().get()) {
                    ironLog2 = IronLog.INTERNAL;
                    sb = new StringBuilder();
                    sb.append(smash.g().name());
                    sb.append(" - Smash ");
                    sb.append(smash.k());
                    str2 = " marked as loading candidate";
                } else {
                    if (!this.showPriorityEnabled || !b(smash)) {
                        c(smash);
                        return;
                    }
                    ironLog = IronLog.INTERNAL;
                    str = smash.g().name() + " - Smash " + smash.k() + " is not better than already loaded smashes";
                }
                sb.append(str2);
                ironLog2.verbose(sb.toString());
                list = this.loadingInProgressSmashes;
            }
            list.add(smash);
            return;
        }
        ironLog = IronLog.INTERNAL;
        str = smash.g().name() + " - smash " + smash.k() + " is failed to load";
        ironLog.verbose(str);
    }

    public boolean e() {
        return d() >= this.maxSmashesToLoad;
    }
}
