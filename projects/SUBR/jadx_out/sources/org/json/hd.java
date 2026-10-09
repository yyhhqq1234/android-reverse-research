package org.json;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u00002\u00020\u0001:\u0003\u0005\r\u000bB\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH&R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\t\u001a\u0004\u0018\u00010\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000f\u001a\u0004\b\r\u0010\u0010\"\u0004\b\u0005\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/ironsource/hd;", "", "Lcom/ironsource/k2;", "adUnitLoadStrategyListener", "", "a", "Landroid/app/Activity;", "activity", "Lcom/ironsource/w1;", "adUnitDisplayStrategyListener", "Lcom/ironsource/k2;", "c", "()Lcom/ironsource/k2;", "b", "(Lcom/ironsource/k2;)V", "Lcom/ironsource/w1;", "()Lcom/ironsource/w1;", "(Lcom/ironsource/w1;)V", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public abstract class hd {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private k2 adUnitLoadStrategyListener;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private w1 adUnitDisplayStrategyListener;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0005HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/ironsource/hd$a;", "", "Lcom/ironsource/hd$c;", "a", "strategyType", "", "toString", "", "hashCode", "other", "", "equals", "Lcom/ironsource/hd$c;", "b", "()Lcom/ironsource/hd$c;", "<init>", "(Lcom/ironsource/hd$c;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final /* data */ class a {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final c strategyType;

        public a(c strategyType) {
            Intrinsics.checkNotNullParameter(strategyType, "strategyType");
            this.strategyType = strategyType;
        }

        public static /* synthetic */ a a(a aVar, c cVar, int i, Object obj) {
            if ((i & 1) != 0) {
                cVar = aVar.strategyType;
            }
            return aVar.a(cVar);
        }

        public final a a(c strategyType) {
            Intrinsics.checkNotNullParameter(strategyType, "strategyType");
            return new a(strategyType);
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final c getStrategyType() {
            return this.strategyType;
        }

        public final c b() {
            return this.strategyType;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof a) && this.strategyType == ((a) other).strategyType;
        }

        public int hashCode() {
            return this.strategyType.hashCode();
        }

        public String toString() {
            return "Config(strategyType=" + this.strategyType + ')';
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\f"}, d2 = {"Lcom/ironsource/hd$b;", "", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/hd$a;", "config", "Lcom/ironsource/fd;", "fullscreenAdUnitFactory", "Lcom/ironsource/hd;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b {

        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[c.values().length];
                try {
                    iArr[c.MANUAL_LOAD.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                a = iArr;
            }
        }

        public final hd a(l1 adTools, a config, fd fullscreenAdUnitFactory) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
            if (a.a[config.b().ordinal()] == 1) {
                return new id(adTools, config, fullscreenAdUnitFactory);
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/ironsource/hd$c;", "", "<init>", "(Ljava/lang/String;I)V", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public enum c {
        MANUAL_LOAD
    }

    public abstract void a(Activity activity, w1 adUnitDisplayStrategyListener);

    public abstract void a(k2 adUnitLoadStrategyListener);

    public void a(w1 w1Var) {
        this.adUnitDisplayStrategyListener = w1Var;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public w1 getAdUnitDisplayStrategyListener() {
        return this.adUnitDisplayStrategyListener;
    }

    public void b(k2 k2Var) {
        this.adUnitLoadStrategyListener = k2Var;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public k2 getAdUnitLoadStrategyListener() {
        return this.adUnitLoadStrategyListener;
    }
}
