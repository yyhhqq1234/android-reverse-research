package com.unity3d.mediation;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¨\u0006\u0003"}, d2 = {"Lcom/unity3d/mediation/LevelPlay$AdFormat;", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "a", "mediationsdk_release"}, k = 2, mv = {1, 8, 0})
public final class a {

    /* JADX INFO: renamed from: com.unity3d.mediation.a$a, reason: collision with other inner class name */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class C0125a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LevelPlay.AdFormat.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final IronSource.AD_UNIT a(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "<this>");
        int i = C0125a.a[adFormat.ordinal()];
        if (i == 1) {
            return IronSource.AD_UNIT.BANNER;
        }
        if (i == 2) {
            return IronSource.AD_UNIT.INTERSTITIAL;
        }
        if (i == 3) {
            return IronSource.AD_UNIT.REWARDED_VIDEO;
        }
        if (i == 4) {
            return IronSource.AD_UNIT.NATIVE_AD;
        }
        throw new NoWhenBranchMatchedException();
    }
}
