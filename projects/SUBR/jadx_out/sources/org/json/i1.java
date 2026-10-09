package org.json;

import android.content.Context;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.ISContainerParams;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.l;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0007H\u0002J\u001e\u0010\u0006\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\bJ\u0006\u0010\f\u001a\u00020\u000bJ\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\rJ\u000e\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/ironsource/i1;", "Lcom/ironsource/sk;", "Lcom/unity3d/mediation/LevelPlayAdSize;", "size", "Lcom/ironsource/mediationsdk/ISBannerSize;", "c", "a", "", "", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "suffix", "", "d", "", "b", "", "width", "Landroid/content/Context;", "context", "Lcom/ironsource/os$b;", "Lcom/ironsource/os$b;", "logFactory", "Lcom/ironsource/vg;", "Lcom/ironsource/vg;", "sdkConfigService", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class i1 extends sk {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final os.b logFactory;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final vg sdkConfigService;

    public i1() {
        os.b bVarA = os.a(IronSource.AD_UNIT.BANNER);
        Intrinsics.checkNotNullExpressionValue(bVarA, "createLogFactory(IronSource.AD_UNIT.BANNER)");
        this.logFactory = bVarA;
        this.sdkConfigService = jl.INSTANCE.d().s();
    }

    private final ISBannerSize a(LevelPlayAdSize size) {
        LevelPlayAdSize fallbackAdSize = size.getFallbackAdSize();
        if (fallbackAdSize == null) {
            fallbackAdSize = LevelPlayAdSize.BANNER;
        }
        ISBannerSize iSBannerSizeB = b(fallbackAdSize);
        iSBannerSizeB.setAdaptive(true);
        iSBannerSizeB.containerParams = new ISContainerParams(size.getWidth(), size.getHeight());
        return iSBannerSizeB;
    }

    public static /* synthetic */ String a(i1 i1Var, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return i1Var.a(str, str2);
    }

    private final float c() {
        ck ckVarA = this.sdkConfigService.a();
        if (ckVarA != null) {
            return ckVarA.i();
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    private final ISBannerSize c(LevelPlayAdSize size) {
        if (Intrinsics.areEqual(size, LevelPlayAdSize.LARGE)) {
            return new ISBannerSize("LARGE", size.getWidth(), size.getHeight());
        }
        if (Intrinsics.areEqual(size, LevelPlayAdSize.MEDIUM_RECTANGLE)) {
            return new ISBannerSize("RECTANGLE", size.getWidth(), size.getHeight());
        }
        if (Intrinsics.areEqual(size, LevelPlayAdSize.LEADERBOARD)) {
            return new ISBannerSize("SMART", 0, 0);
        }
        return Intrinsics.areEqual(size, LevelPlayAdSize.INSTANCE.createCustomSize(size.getWidth(), size.getHeight())) ? new ISBannerSize(size.getWidth(), size.getHeight()) : new ISBannerSize("BANNER", size.getWidth(), size.getHeight());
    }

    public final int a(int width) {
        return l.a(width);
    }

    public final String a(String message, String suffix) {
        String strA = this.logFactory.a(message, suffix);
        Intrinsics.checkNotNullExpressionValue(strA, "logFactory.createLogMessage(message, suffix)");
        return strA;
    }

    public final int b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return MathKt.roundToInt(c() * ra.a.a(context));
    }

    public final ISBannerSize b(LevelPlayAdSize size) {
        Intrinsics.checkNotNullParameter(size, "size");
        boolean isAdaptive = size.getIsAdaptive();
        if (isAdaptive) {
            return a(size);
        }
        if (isAdaptive) {
            throw new NoWhenBranchMatchedException();
        }
        return c(size);
    }

    public final List<LevelPlayAdSize> b() {
        ck ckVarA = this.sdkConfigService.a();
        if (ckVarA != null) {
            return ckVarA.h();
        }
        throw new IllegalStateException("Error getting sdk configurations");
    }

    public final boolean d() {
        return jl.INSTANCE.d().s().getIsSDKInitialized();
    }
}
