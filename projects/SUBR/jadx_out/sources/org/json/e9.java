package org.json;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018\u0000 \u00052\u00020\u0001:\u0004\u0005\u0006\u0007\bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/e9;", "", "Lcom/ironsource/e9$d;", "callback", "", "a", "b", "c", "d", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface e9 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    /* JADX INFO: renamed from: com.ironsource.e9$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        static {
            Companion companion = e9.INSTANCE;
        }

        @JvmStatic
        public static e9 a(wd wdVar) {
            return e9.INSTANCE.a(wdVar);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/ironsource/e9$a;", "Lcom/ironsource/e9;", "Lcom/ironsource/e9$d;", "callback", "", "a", "Lcom/ironsource/ud;", "b", "Lcom/ironsource/ud;", "config", "Lcom/ironsource/rt;", "c", "Lcom/ironsource/rt;", "timer", "Ljava/util/concurrent/atomic/AtomicBoolean;", "d", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isProcessing", "<init>", "(Lcom/ironsource/ud;Lcom/ironsource/rt;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements e9 {

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final ud config;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        private final rt timer;

        /* JADX INFO: renamed from: d, reason: from kotlin metadata */
        private final AtomicBoolean isProcessing;

        /* JADX INFO: renamed from: com.ironsource.e9$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/ironsource/e9$a$a", "Lcom/ironsource/rt$a;", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
        public static final class C0088a implements rt.a {
            final /* synthetic */ d a;
            final /* synthetic */ a b;

            C0088a(d dVar, a aVar) {
                this.a = dVar;
                this.b = aVar;
            }

            @Override // com.ironsource.rt.a
            public void a() {
                this.a.a(new yd.a(new vd.a(this.b.config.getRecoveryStrategy())));
                this.b.isProcessing.set(false);
            }
        }

        public a(ud config, rt timer) {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(timer, "timer");
            this.config = config;
            this.timer = timer;
            this.isProcessing = new AtomicBoolean(false);
        }

        @Override // org.json.e9
        public synchronized void a() {
            this.timer.cancel();
            this.isProcessing.set(false);
        }

        @Override // org.json.e9
        public synchronized void a(d callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (this.isProcessing.compareAndSet(false, true)) {
                this.timer.a(new C0088a(callback, this));
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"Lcom/ironsource/e9$b;", "Lcom/ironsource/e9;", "Lcom/ironsource/e9$d;", "callback", "", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements e9 {
        public static final b b = new b();

        private b() {
        }

        @Override // org.json.e9
        public void a() {
        }

        @Override // org.json.e9
        public void a(d callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
        }
    }

    /* JADX INFO: renamed from: com.ironsource.e9$c, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\b"}, d2 = {"Lcom/ironsource/e9$c;", "", "Lcom/ironsource/wd;", "featureFlag", "Lcom/ironsource/e9;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }

        public final e9 a() {
            return b.b;
        }

        @JvmStatic
        public final e9 a(wd featureFlag) {
            Intrinsics.checkNotNullParameter(featureFlag, "featureFlag");
            if (!featureFlag.c()) {
                return b.b;
            }
            td tdVar = new td(featureFlag);
            rt.b bVar = new rt.b();
            bVar.b(tdVar.getTimeoutInMills());
            bVar.a(tdVar.getTimeoutInMills());
            return new a(tdVar, new rt.d().a(bVar));
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/ironsource/e9$d;", "", "Lcom/ironsource/yd;", "result", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface d {
        void a(yd result);
    }

    void a();

    void a(d callback);
}
