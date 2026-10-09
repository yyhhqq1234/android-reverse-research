package org.json;

import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.json.lifecycle.b;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.l;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0005B\u0019\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u001c\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100B\u0019\b\u0016\u0012\u0006\u00101\u001a\u00020\u0000\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00102J \u0010\u0005\u001a\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0007J\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0005\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0002J\u0006\u0010\u0010\u001a\u00020\u000fJ\"\u0010\u0005\u001a\u00020\u00162\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u0007\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u001b\u001a\u00020\u001aR\u001a\u0010\u000b\u001a\u00020\u001c8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b\f\u0010\u001eR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0017\u0010'\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b\f\u0010$\u001a\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010)R\u0014\u0010,\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010+¨\u00063"}, d2 = {"Lcom/ironsource/l1;", "Lcom/ironsource/sk;", "", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "suffix", "a", "Lcom/ironsource/lifecycle/b;", "b", oo.d, "Lcom/ironsource/mediationsdk/model/Placement;", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "d", "adUnitId", "Lcom/ironsource/f7$b;", "", "f", "", "", "data", "Lcom/ironsource/mediationsdk/ISBannerSize;", "size", "", "Lcom/unity3d/mediation/LevelPlayAdSize;", y8.h.O, "", "", "g", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "Lcom/ironsource/os$b;", "c", "Lcom/ironsource/os$b;", "logFactory", "Lcom/ironsource/pb;", "Lcom/ironsource/pb;", "e", "()Lcom/ironsource/pb;", "eventSender", "Lcom/ironsource/vg;", "Lcom/ironsource/vg;", "sdkConfigService", "J", "ONE_HOUR_IN_MILLIS", "Lcom/ironsource/b2$b;", "level", "<init>", "(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/b2$b;)V", "adTools", "(Lcom/ironsource/l1;Lcom/ironsource/b2$b;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class l1 extends sk {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final IronSource.AD_UNIT adFormat;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final os.b logFactory;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final pb eventSender;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final vg sdkConfigService;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final long ONE_HOUR_IN_MILLIS;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\n"}, d2 = {"Lcom/ironsource/l1$a;", "", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "Lcom/ironsource/b2$b;", "level", "Lcom/ironsource/l1;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a {
        public static final a a = new a();

        private a() {
        }

        @JvmStatic
        public static final l1 a(IronSource.AD_UNIT adFormat, b2.b level) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            Intrinsics.checkNotNullParameter(level, "level");
            return new l1(adFormat, level);
        }
    }

    public l1(l1 adTools, b2.b level) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(level, "level");
        this.sdkConfigService = jl.INSTANCE.d().s();
        this.ONE_HOUR_IN_MILLIS = TimeUnit.HOURS.toMillis(1L);
        IronSource.AD_UNIT ad_unit = adTools.adFormat;
        this.adFormat = ad_unit;
        this.logFactory = adTools.logFactory;
        this.eventSender = new pb(ad_unit, level, adTools.eventSender.c(), null, 8, null);
    }

    public l1(IronSource.AD_UNIT adFormat, b2.b level) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(level, "level");
        this.sdkConfigService = jl.INSTANCE.d().s();
        this.ONE_HOUR_IN_MILLIS = TimeUnit.HOURS.toMillis(1L);
        this.adFormat = adFormat;
        this.eventSender = new pb(adFormat, level, null, null, 12, null);
        os.b bVarA = os.a(adFormat);
        Intrinsics.checkNotNullExpressionValue(bVarA, "createLogFactory(adFormat)");
        this.logFactory = bVarA;
    }

    public static /* synthetic */ String a(l1 l1Var, String str, String str2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createLogMessage");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return l1Var.a(str, str2);
    }

    public final ISBannerSize a(LevelPlayAdSize adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        return new i1().b(adSize);
    }

    public final Placement a(LevelPlay.AdFormat adFormat, String placementName) {
        ck ckVarA;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        if (placementName == null || (ckVarA = this.sdkConfigService.a()) == null) {
            return null;
        }
        return ckVarA.a(adFormat, placementName);
    }

    public final Placement a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        ck ckVarA = this.sdkConfigService.a();
        if (ckVarA == null) {
            throw new IllegalStateException("Error getting sdk configurations");
        }
        Placement placementA = ckVarA.a(LevelPlay.AdFormat.BANNER, placementName);
        if (placementA != null) {
            return placementA;
        }
        throw new IllegalStateException("Error getting placement");
    }

    public final String a(String message, String suffix) {
        String strA = this.logFactory.a(message, suffix);
        Intrinsics.checkNotNullExpressionValue(strA, "logFactory.createLogMessage(message, suffix)");
        return strA;
    }

    public final void a(Map<String, Object> data, ISBannerSize size) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(size, "size");
        l.a(data, size);
    }

    public final long b(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        ck ckVarA = this.sdkConfigService.a();
        return ckVarA != null ? ckVarA.b(adFormat) : this.ONE_HOUR_IN_MILLIS;
    }

    public final f7.b b(String adUnitId) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        ck ckVarA = this.sdkConfigService.a();
        if (ckVarA != null) {
            return ckVarA.a(adUnitId);
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final b b() {
        b bVarD = b.d();
        Intrinsics.checkNotNullExpressionValue(bVarD, "getInstance()");
        return bVarD;
    }

    public final String c() {
        return a(this, (String) null, (String) null, 3, (Object) null);
    }

    public final String c(String str) {
        return a(this, str, (String) null, 2, (Object) null);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    protected final IronSource.AD_UNIT getAdFormat() {
        return this.adFormat;
    }

    public final Placement d(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        ck ckVarA = this.sdkConfigService.a();
        if (ckVarA == null) {
            throw new IllegalStateException("Error getting sdk configurations");
        }
        Placement placementA = ckVarA.a(LevelPlay.AdFormat.NATIVE_AD, placementName);
        if (placementA != null) {
            return placementA;
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final pb getEventSender() {
        return this.eventSender;
    }

    public final int f() {
        return jl.INSTANCE.d().k().a(this.adFormat);
    }

    public final boolean g() {
        return jl.INSTANCE.d().s().c();
    }
}
