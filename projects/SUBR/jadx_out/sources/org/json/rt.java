package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001:\u0005\u0005\u0007\b\t\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0006\u001a\u00020\u0004H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/rt;", "", "Lcom/ironsource/rt$a;", "callback", "", "a", "cancel", "b", "c", "d", "e", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface rt {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Lcom/ironsource/rt$a;", "", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface a {
        void a();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0005\u0010\u0007R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006\"\u0004\b\u0003\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/ironsource/rt$b;", "", "", "a", "J", "b", "()J", "(J)V", IronSourceConstants.EVENTS_DURATION, "countDownInterval", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private long duration;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private long countDownInterval;

        /* JADX INFO: renamed from: a, reason: from getter */
        public final long getCountDownInterval() {
            return this.countDownInterval;
        }

        public final void a(long j) {
            this.countDownInterval = j;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final long getDuration() {
            return this.duration;
        }

        public final void b(long j) {
            this.duration = j;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/ironsource/rt$c;", "", "Lcom/ironsource/rt$b;", "timerConfig", "Lcom/ironsource/rt;", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface c {
        rt a(b timerConfig);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"Lcom/ironsource/rt$d;", "Lcom/ironsource/rt$c;", "Lcom/ironsource/rt$b;", "timerConfig", "Lcom/ironsource/rt;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class d implements c {
        @Override // com.ironsource.rt.c
        public rt a(b timerConfig) {
            Intrinsics.checkNotNullParameter(timerConfig, "timerConfig");
            return new e(new tt(timerConfig.getDuration()));
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\b¨\u0006\f"}, d2 = {"Lcom/ironsource/rt$e;", "Lcom/ironsource/rt;", "Lcom/ironsource/rt$a;", "callback", "", "a", "cancel", "Lcom/ironsource/tt;", "Lcom/ironsource/tt;", "timer", "<init>", "(Lcom/ironsource/tt;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    private static final class e implements rt {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final tt timer;

        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/ironsource/rt$e$a", "Lcom/ironsource/tt$a;", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
        public static final class a implements tt.a {
            final /* synthetic */ a a;

            a(a aVar) {
                this.a = aVar;
            }

            @Override // com.ironsource.tt.a
            public void a() {
                this.a.a();
            }
        }

        public e(tt timer) {
            Intrinsics.checkNotNullParameter(timer, "timer");
            this.timer = timer;
        }

        @Override // org.json.rt
        public void a(a callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.timer.a((tt.a) new a(callback));
        }

        @Override // org.json.rt
        public void cancel() {
            this.timer.e();
        }
    }

    void a(a callback);

    void cancel();
}
