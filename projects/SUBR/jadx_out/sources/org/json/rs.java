package org.json;

import android.os.Handler;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.testSuite.TestSuiteActivity;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0004\u0007\u0003\u0005\u0010B!\b\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0006R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\nR\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/ironsource/rs;", "", "Lcom/ironsource/rs$c;", "b", "Lcom/ironsource/rs$d;", "c", "Lcom/ironsource/rs$b;", "a", "Lcom/ironsource/rs$c;", "isManager", "Lcom/ironsource/rs$d;", "rvManager", "Lcom/ironsource/rs$b;", "bnManager", "<init>", "(Lcom/ironsource/rs$c;Lcom/ironsource/rs$d;Lcom/ironsource/rs$b;)V", "d", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class rs {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final c isManager;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final d rvManager;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final b bnManager;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ$\u0010\n\u001a\u00020\t2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007¨\u0006\u0011²\u0006\f\u0010\u000e\u001a\u00020\r8\nX\u008a\u0084\u0002²\u0006\f\u0010\u0010\u001a\u00020\u000f8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/ironsource/rs$a;", "", "", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "maduEnabledAdUnits", "Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;", "activity", "Landroid/os/Handler;", "handler", "Lcom/ironsource/rs;", "a", "<init>", "()V", "Lcom/ironsource/at;", "maduManger", "Lcom/ironsource/ht;", "nonMaduManger", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a {

        /* JADX INFO: renamed from: com.ironsource.rs$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/at;", "a", "()Lcom/ironsource/at;"}, k = 3, mv = {1, 8, 0})
        static final class C0099a extends Lambda implements Function0<at> {
            final /* synthetic */ TestSuiteActivity a;
            final /* synthetic */ Handler b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0099a(TestSuiteActivity testSuiteActivity, Handler handler) {
                super(0);
                this.a = testSuiteActivity;
                this.b = handler;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final at invoke() {
                return new at(this.a, this.b);
            }
        }

        @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/ht;", "a", "()Lcom/ironsource/ht;"}, k = 3, mv = {1, 8, 0})
        static final class b extends Lambda implements Function0<ht> {
            final /* synthetic */ TestSuiteActivity a;
            final /* synthetic */ Handler b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(TestSuiteActivity testSuiteActivity, Handler handler) {
                super(0);
                this.a = testSuiteActivity;
                this.b = handler;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ht invoke() {
                return new ht(this.a, this.b);
            }
        }

        private static final at a(Lazy<at> lazy) {
            return lazy.getValue();
        }

        private static final ht b(Lazy<ht> lazy) {
            return lazy.getValue();
        }

        public final rs a(List<? extends IronSource.AD_UNIT> maduEnabledAdUnits, TestSuiteActivity activity, Handler handler) {
            Intrinsics.checkNotNullParameter(maduEnabledAdUnits, "maduEnabledAdUnits");
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(handler, "handler");
            Lazy lazy = LazyKt.lazy(new C0099a(activity, handler));
            Lazy lazy2 = LazyKt.lazy(new b(activity, handler));
            return new rs(maduEnabledAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL) ? a(lazy) : b(lazy2), maduEnabledAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO) ? a(lazy) : b(lazy2), maduEnabledAdUnits.contains(IronSource.AD_UNIT.BANNER) ? a(lazy) : b(lazy2), null);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH&J\b\u0010\r\u001a\u00020\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/rs$b;", "", "Lcom/ironsource/xs;", "loadAdConfig", "", "description", "", "width", "height", "", "a", "", "marginPercentageFromTop", "b", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface b {
        void a(double marginPercentageFromTop);

        void a(xs loadAdConfig, String description, int width, int height);

        void b();
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\b\u001a\u00020\u0004H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/rs$c;", "", "Lcom/ironsource/xs;", "loadAdConfig", "", "a", "", "e", "c", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface c {
        void a(xs loadAdConfig);

        void c();

        boolean e();
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\b\u001a\u00020\u0004H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/rs$d;", "", "Lcom/ironsource/xs;", "loadAdConfig", "", "b", "", "a", "d", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface d {
        boolean a();

        void b(xs loadAdConfig);

        void d();
    }

    private rs(c cVar, d dVar, b bVar) {
        this.isManager = cVar;
        this.rvManager = dVar;
        this.bnManager = bVar;
    }

    public /* synthetic */ rs(c cVar, d dVar, b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, dVar, bVar);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final b getBnManager() {
        return this.bnManager;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final c getIsManager() {
        return this.isManager;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final d getRvManager() {
        return this.rvManager;
    }
}
