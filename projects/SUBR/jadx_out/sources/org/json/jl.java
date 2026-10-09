package org.json;

import com.google.android.gms.ads.RequestConfiguration;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000À\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00102\u00020\u00012\u00020\u0002:\u0001\nB\u000b\b\u0002¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001c\u001a\u00020\u001bH\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010 \u001a\u00020\u001fH\u0016J\b\u0010\"\u001a\u00020!H\u0016J\b\u0010$\u001a\u00020#H\u0016J\b\u0010&\u001a\u00020%H\u0016J\b\u0010(\u001a\u00020'H\u0016J\b\u0010*\u001a\u00020)H\u0016J\b\u0010,\u001a\u00020+H\u0016J\b\u0010.\u001a\u00020-H\u0016J\b\u00100\u001a\u00020/H\u0016J\b\u00102\u001a\u000201H\u0016J\b\u00104\u001a\u000203H\u0016J\b\u00106\u001a\u000205H\u0016J\b\u00108\u001a\u000207H\u0016J\b\u0010:\u001a\u000209H\u0016J\b\u0010<\u001a\u00020;H\u0016J\b\u0010>\u001a\u00020=H\u0016R\u001b\u0010C\u001a\u00020?8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010@\u001a\u0004\bA\u0010BR\u001b\u0010G\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010@\u001a\u0004\bE\u0010FR\u001b\u0010K\u001a\u00020H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010@\u001a\u0004\bI\u0010JR\u001b\u0010O\u001a\u00020L8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u0010@\u001a\u0004\bM\u0010NR\u001b\u0010S\u001a\u00020P8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010@\u001a\u0004\bQ\u0010RR\u001b\u0010W\u001a\u00020T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010@\u001a\u0004\bU\u0010VR\u001b\u0010[\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010@\u001a\u0004\bY\u0010ZR\u001b\u0010_\u001a\u00020\\8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010@\u001a\u0004\b]\u0010^R\u001b\u0010c\u001a\u00020`8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010@\u001a\u0004\ba\u0010bR\u001b\u0010g\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010@\u001a\u0004\be\u0010fR\u001b\u0010k\u001a\u00020h8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010@\u001a\u0004\bi\u0010jR\u001b\u0010o\u001a\u00020l8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010@\u001a\u0004\bm\u0010nR\u001b\u0010s\u001a\u00020p8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010@\u001a\u0004\bq\u0010rR\u001b\u0010w\u001a\u00020t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010@\u001a\u0004\bu\u0010vR\u001b\u0010{\u001a\u00020x8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010@\u001a\u0004\by\u0010zR\u001b\u0010\u007f\u001a\u00020|8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010@\u001a\u0004\b}\u0010~¨\u0006\u0082\u0001"}, d2 = {"Lcom/ironsource/jl;", "Lcom/ironsource/ye;", "Lcom/ironsource/xe;", "Lcom/ironsource/zg;", "k", "Lcom/ironsource/zg$a;", "e", "Lcom/ironsource/oe;", "f", "Lcom/ironsource/oe$a;", "b", "Lcom/ironsource/yg;", "j", "Lcom/ironsource/yg$a;", "i", "Lcom/ironsource/ce;", "q", "Lcom/ironsource/ce$a;", "A", "Lcom/ironsource/cf;", "z", "Lcom/ironsource/cf$a;", "m", "Lcom/ironsource/af;", "x", "Lcom/ironsource/af$a;", "a", "Lcom/ironsource/ie;", "t", "Lcom/ironsource/ie$a;", "v", "Lcom/ironsource/ff;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, "Lcom/ironsource/ff$a;", "y", "Lcom/ironsource/ah;", "l", "Lcom/ironsource/m0;", "D", "Lcom/ironsource/ah$a;", "g", "Lcom/ironsource/m0$a;", "C", "Lcom/ironsource/vg;", "s", "Lcom/ironsource/vg$a;", "B", "Lcom/ironsource/ve;", "c", "Lcom/ironsource/ee;", "u", "Lcom/ironsource/wg;", "h", "Lcom/ironsource/wg$a;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "Lcom/ironsource/qe;", "d", "Lcom/ironsource/qe$a;", "w", "Lcom/ironsource/ch;", "n", "Lcom/ironsource/ch$a;", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "Lcom/ironsource/mr;", "Lkotlin/Lazy;", "U", "()Lcom/ironsource/mr;", "sessionDepthManager", "Lcom/ironsource/qa;", "J", "()Lcom/ironsource/qa;", "deviceInfoService", "Lcom/ironsource/lr;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "()Lcom/ironsource/lr;", "sessionCappingService", "Lcom/ironsource/r;", "F", "()Lcom/ironsource/r;", "adFormatCappingService", "Lcom/ironsource/ko;", "O", "()Lcom/ironsource/ko;", "placementCappingServiceLegacy", "Lcom/ironsource/g8;", "H", "()Lcom/ironsource/g8;", "adUnitCappingService", "Lcom/ironsource/io;", "N", "()Lcom/ironsource/io;", "placementCappingService", "Lcom/ironsource/cp;", "Q", "()Lcom/ironsource/cp;", "rewardService", "Lcom/ironsource/pr;", "V", "()Lcom/ironsource/pr;", "sessionHistoryService", "Lcom/ironsource/o0;", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "()Lcom/ironsource/o0;", "adInternalInfoService", "Lcom/ironsource/gq;", "R", "()Lcom/ironsource/gq;", "sdkConfigService", "Lcom/ironsource/hc;", "M", "()Lcom/ironsource/hc;", "featureAvailabilityService", "Lcom/ironsource/j4;", "I", "()Lcom/ironsource/j4;", "applicationLifecycleService", "Lcom/ironsource/xq;", "S", "()Lcom/ironsource/xq;", "sdkSessionInfoService", "Lcom/ironsource/eb;", "L", "()Lcom/ironsource/eb;", "epService", "Lcom/ironsource/ys;", "W", "()Lcom/ironsource/ys;", "testSuiteLoadConfigService", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class jl implements ye, xe {

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<jl> r = LazyKt.lazy(a.a);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Lazy sessionDepthManager;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Lazy deviceInfoService;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final Lazy sessionCappingService;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final Lazy adFormatCappingService;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final Lazy placementCappingServiceLegacy;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final Lazy adUnitCappingService;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final Lazy placementCappingService;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final Lazy rewardService;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final Lazy sessionHistoryService;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final Lazy adInternalInfoService;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final Lazy sdkConfigService;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private final Lazy featureAvailabilityService;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private final Lazy applicationLifecycleService;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private final Lazy sdkSessionInfoService;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final Lazy epService;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final Lazy testSuiteLoadConfigService;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/jl;", "a", "()Lcom/ironsource/jl;"}, k = 3, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<jl> {
        public static final a a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final jl invoke() {
            return new jl(null);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.jl$b, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\fR\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0012\u001a\u00020\u000e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/ironsource/jl$b;", "", "Lcom/ironsource/jl;", "instance$delegate", "Lkotlin/Lazy;", "c", "()Lcom/ironsource/jl;", j5.p, "Lcom/ironsource/ye;", "d", "()Lcom/ironsource/ye;", "getProvider$annotations", "()V", IronSourceConstants.EVENTS_PROVIDER, "Lcom/ironsource/xe;", "a", "()Lcom/ironsource/xe;", "getEditor$annotations", "editor", "<init>", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void b() {
        }

        private final jl c() {
            return (jl) jl.r.getValue();
        }

        @JvmStatic
        public static /* synthetic */ void e() {
        }

        public final xe a() {
            return c();
        }

        public final ye d() {
            return c();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/r;", "a", "()Lcom/ironsource/r;"}, k = 3, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<org.json.r> {
        public static final c a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final org.json.r invoke() {
            return new org.json.r();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/o0;", "a", "()Lcom/ironsource/o0;"}, k = 3, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<o0> {
        public static final d a = new d();

        d() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o0 invoke() {
            return new o0(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/g8;", "a", "()Lcom/ironsource/g8;"}, k = 3, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<g8> {
        public static final e a = new e();

        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final g8 invoke() {
            return new g8(null, null, null, 7, null);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/j4;", "a", "()Lcom/ironsource/j4;"}, k = 3, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<j4> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final j4 invoke() {
            return new j4(jl.this.M());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/qa;", "a", "()Lcom/ironsource/qa;"}, k = 3, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<qa> {
        public static final g a = new g();

        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final qa invoke() {
            return new qa();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/eb;", "a", "()Lcom/ironsource/eb;"}, k = 3, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<eb> {
        public static final h a = new h();

        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final eb invoke() {
            return new eb();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/hc;", "a", "()Lcom/ironsource/hc;"}, k = 3, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<hc> {
        public static final i a = new i();

        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final hc invoke() {
            return new hc();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/io;", "a", "()Lcom/ironsource/io;"}, k = 3, mv = {1, 8, 0})
    static final class j extends Lambda implements Function0<io> {
        public static final j a = new j();

        j() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io invoke() {
            return new io(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/ko;", "a", "()Lcom/ironsource/ko;"}, k = 3, mv = {1, 8, 0})
    static final class k extends Lambda implements Function0<ko> {
        public static final k a = new k();

        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ko invoke() {
            return new ko();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/cp;", "a", "()Lcom/ironsource/cp;"}, k = 3, mv = {1, 8, 0})
    static final class l extends Lambda implements Function0<cp> {
        public static final l a = new l();

        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final cp invoke() {
            return new cp();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/gq;", "a", "()Lcom/ironsource/gq;"}, k = 3, mv = {1, 8, 0})
    static final class m extends Lambda implements Function0<gq> {
        public static final m a = new m();

        m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final gq invoke() {
            return new gq();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/xq;", "a", "()Lcom/ironsource/xq;"}, k = 3, mv = {1, 8, 0})
    static final class n extends Lambda implements Function0<xq> {
        public static final n a = new n();

        n() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final xq invoke() {
            return new xq(new zq(null, 1, 0 == true ? 1 : 0), null, null, 6, null);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/lr;", "a", "()Lcom/ironsource/lr;"}, k = 3, mv = {1, 8, 0})
    static final class o extends Lambda implements Function0<lr> {
        public static final o a = new o();

        o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final lr invoke() {
            return new lr();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/mr;", "a", "()Lcom/ironsource/mr;"}, k = 3, mv = {1, 8, 0})
    static final class p extends Lambda implements Function0<mr> {
        public static final p a = new p();

        p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final mr invoke() {
            return new mr();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/pr;", "a", "()Lcom/ironsource/pr;"}, k = 3, mv = {1, 8, 0})
    static final class q extends Lambda implements Function0<pr> {
        public static final q a = new q();

        q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final pr invoke() {
            return new pr();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/ys;", "a", "()Lcom/ironsource/ys;"}, k = 3, mv = {1, 8, 0})
    static final class r extends Lambda implements Function0<ys> {
        public static final r a = new r();

        r() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ys invoke() {
            return new ys();
        }
    }

    private jl() {
        this.sessionDepthManager = LazyKt.lazy(p.a);
        this.deviceInfoService = LazyKt.lazy(g.a);
        this.sessionCappingService = LazyKt.lazy(o.a);
        this.adFormatCappingService = LazyKt.lazy(c.a);
        this.placementCappingServiceLegacy = LazyKt.lazy(k.a);
        this.adUnitCappingService = LazyKt.lazy(e.a);
        this.placementCappingService = LazyKt.lazy(j.a);
        this.rewardService = LazyKt.lazy(l.a);
        this.sessionHistoryService = LazyKt.lazy(q.a);
        this.adInternalInfoService = LazyKt.lazy(d.a);
        this.sdkConfigService = LazyKt.lazy(m.a);
        this.featureAvailabilityService = LazyKt.lazy(i.a);
        this.applicationLifecycleService = LazyKt.lazy(new f());
        this.sdkSessionInfoService = LazyKt.lazy(n.a);
        this.epService = LazyKt.lazy(h.a);
        this.testSuiteLoadConfigService = LazyKt.lazy(r.a);
    }

    public /* synthetic */ jl(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final org.json.r F() {
        return (org.json.r) this.adFormatCappingService.getValue();
    }

    private final o0 G() {
        return (o0) this.adInternalInfoService.getValue();
    }

    private final g8 H() {
        return (g8) this.adUnitCappingService.getValue();
    }

    private final j4 I() {
        return (j4) this.applicationLifecycleService.getValue();
    }

    private final qa J() {
        return (qa) this.deviceInfoService.getValue();
    }

    public static final xe K() {
        return INSTANCE.a();
    }

    private final eb L() {
        return (eb) this.epService.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final hc M() {
        return (hc) this.featureAvailabilityService.getValue();
    }

    private final io N() {
        return (io) this.placementCappingService.getValue();
    }

    private final ko O() {
        return (ko) this.placementCappingServiceLegacy.getValue();
    }

    public static final ye P() {
        return INSTANCE.d();
    }

    private final cp Q() {
        return (cp) this.rewardService.getValue();
    }

    private final gq R() {
        return (gq) this.sdkConfigService.getValue();
    }

    private final xq S() {
        return (xq) this.sdkSessionInfoService.getValue();
    }

    private final lr T() {
        return (lr) this.sessionCappingService.getValue();
    }

    private final mr U() {
        return (mr) this.sessionDepthManager.getValue();
    }

    private final pr V() {
        return (pr) this.sessionHistoryService.getValue();
    }

    private final ys W() {
        return (ys) this.testSuiteLoadConfigService.getValue();
    }

    @Override // org.json.xe
    public ce.a A() {
        return F();
    }

    @Override // org.json.xe
    public vg.a B() {
        return R();
    }

    @Override // org.json.xe
    public m0.a C() {
        return G();
    }

    @Override // org.json.ye
    public m0 D() {
        return G();
    }

    @Override // org.json.xe
    public af.a a() {
        return N();
    }

    @Override // org.json.xe
    public oe.a b() {
        return J();
    }

    @Override // org.json.ye
    public ve c() {
        return M();
    }

    @Override // org.json.ye
    public qe d() {
        return L();
    }

    @Override // org.json.xe
    public zg.a e() {
        return U();
    }

    @Override // org.json.ye
    public oe f() {
        return J();
    }

    @Override // org.json.xe
    public ah.a g() {
        return V();
    }

    @Override // org.json.ye
    public wg h() {
        return S();
    }

    @Override // org.json.xe
    public yg.a i() {
        return T();
    }

    @Override // org.json.ye
    public yg j() {
        return T();
    }

    @Override // org.json.ye
    public zg k() {
        return U();
    }

    @Override // org.json.ye
    public ah l() {
        return V();
    }

    @Override // org.json.xe
    public cf.a m() {
        return O();
    }

    @Override // org.json.ye
    public ch n() {
        return W();
    }

    @Override // org.json.ye
    public ff o() {
        return Q();
    }

    @Override // org.json.xe
    public wg.a p() {
        return S();
    }

    @Override // org.json.ye
    public ce q() {
        return F();
    }

    @Override // org.json.xe
    public ch.a r() {
        return W();
    }

    @Override // org.json.ye
    public vg s() {
        return R();
    }

    @Override // org.json.ye
    public ie t() {
        return H();
    }

    @Override // org.json.ye
    public ee u() {
        return I();
    }

    @Override // org.json.xe
    public ie.a v() {
        return H();
    }

    @Override // org.json.xe
    public qe.a w() {
        return L();
    }

    @Override // org.json.ye
    public af x() {
        return N();
    }

    @Override // org.json.xe
    public ff.a y() {
        return Q();
    }

    @Override // org.json.ye
    public cf z() {
        return O();
    }
}
