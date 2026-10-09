package org.json;

import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.model.InterstitialPlacement;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tJ\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006J\u0006\u0010\u0011\u001a\u00020\u0010J\u001a\u0010\f\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\tJ\u000e\u0010\b\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014J\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u000b\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u000b\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u001e"}, d2 = {"Lcom/ironsource/ck;", "Lcom/ironsource/fq;", "", "k", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "", "Lcom/ironsource/wm;", "c", "", "adUnitId", "b", "a", "Lcom/ironsource/f7$b;", "Lcom/unity3d/mediation/LevelPlayAdSize;", "h", "", "i", oo.d, "Lcom/ironsource/mediationsdk/model/Placement;", "Lcom/ironsource/sk;", "tools", "Lcom/ironsource/dp;", "j", "Lcom/ironsource/r1;", "Lcom/ironsource/jo;", "", "sdkConfig", "<init>", "(Lcom/ironsource/fq;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ck extends fq {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LevelPlay.AdFormat.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LevelPlay.AdFormat.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ck(fq sdkConfig) {
        super(sdkConfig);
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007a A[PHI: r8
  0x007a: PHI (r8v18 java.lang.Boolean) = (r8v4 java.lang.Boolean), (r8v13 java.lang.Boolean), (r8v19 java.lang.Boolean) binds: [B:28:0x0078, B:34:0x00a3, B:25:0x006d] A[DONT_GENERATE, DONT_INLINE]] */
    public final f7.b a(String adUnitId) {
        Integer numB;
        Boolean boolD;
        boolean zBooleanValue;
        boolean zBooleanValue2;
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        q6 bannerConfigurations = getSdkInitResponse().getConfigurations().getBannerConfigurations();
        q6.b bVar = bannerConfigurations.a().get(adUnitId);
        int iIntValue = ((bVar == null || (numB = bVar.getCom.ironsource.s6.a java.lang.String()) == null) && (numB = bannerConfigurations.getFeatures().getCom.ironsource.s6.a java.lang.String()) == null) ? 60 : numB.intValue();
        q6.b bVar2 = bannerConfigurations.a().get(adUnitId);
        if ((bVar2 == null || (boolD = bVar2.getCom.ironsource.s6.b java.lang.String()) == null) && (boolD = bannerConfigurations.getFeatures().getCom.ironsource.s6.b java.lang.String()) == null) {
            zBooleanValue = iIntValue > 0;
        } else {
            zBooleanValue = boolD.booleanValue();
        }
        q6.b bVar3 = bannerConfigurations.a().get(adUnitId);
        if ((bVar3 == null || (boolE = bVar3.getIsLoadWhileShow()) == null) && (boolE = bannerConfigurations.getFeatures().getIsLoadWhileShow()) == null) {
            p pVar = getSdkInitResponse().getConfigurations().getApplicationConfigurations().getAuctionSettings().a().get(LevelPlay.AdFormat.BANNER);
            Boolean boolE = pVar != null ? pVar.getIsLoadWhileShow() : null;
            zBooleanValue2 = boolE != null ? boolE.booleanValue() : false;
        }
        return new f7.b(zBooleanValue2 ? f7.c.TIMED_SHOW : f7.c.TIMED_LOAD, ((long) iIntValue) * 1000, zBooleanValue);
    }

    public final Placement a(LevelPlay.AdFormat adFormat, String placementName) {
        Placement placementA;
        InterstitialPlacement interstitialPlacementA;
        String str;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        int i = a.a[adFormat.ordinal()];
        if (i == 1) {
            tp tpVarF = d().c().getRewardedVideoConfigurations();
            if (tpVarF == null || (placementA = tpVarF.a(placementName)) == null) {
                return null;
            }
            Intrinsics.checkNotNullExpressionValue(placementA, "getRewardedVideoPlacement(placementName)");
            return new Placement(placementA.getCom.ironsource.y8.j java.lang.String(), placementA.getCom.ironsource.oo.d java.lang.String(), placementA.getIsDefault(), placementA.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String(), placementA.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_AMOUNT java.lang.String(), placementA.getPlacementAvailabilitySettings());
        }
        if (i == 2) {
            ji jiVarD = d().c().getInterstitialConfigurations();
            if (jiVarD == null || (interstitialPlacementA = jiVarD.a(placementName)) == null) {
                return null;
            }
            Intrinsics.checkNotNullExpressionValue(interstitialPlacementA, "getInterstitialPlacement(placementName)");
            return new Placement(interstitialPlacementA);
        }
        if (i == 3) {
            r6 r6VarC = d().c().getBannerConfigurations();
            if (r6VarC == null) {
                throw new IllegalStateException("Error getting " + adFormat + " configurations");
            }
            e7 e7VarA = r6VarC.a(placementName);
            if (e7VarA == null) {
                e7VarA = r6VarC.j();
                str = "config.defaultBannerPlacement";
            } else {
                str = "config.getBannerPlacemen…ig.defaultBannerPlacement";
            }
            Intrinsics.checkNotNullExpressionValue(e7VarA, str);
            return new Placement(e7VarA);
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        ol olVarE = d().c().getNativeAdConfigurations();
        if (olVarE != null && placementName != null) {
            zl zlVarA = olVarE.a(placementName);
            if (zlVarA == null) {
                zlVarA = olVarE.e();
            }
            if (zlVarA != null) {
                return new Placement(zlVarA);
            }
        }
        throw new IllegalStateException("Error getting " + adFormat + " configurations");
    }

    public final r1 a(sk tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        return new r1(tools, getSdkInitResponse().getConfigurations().a());
    }

    public final List<String> a(LevelPlay.AdFormat adFormat) {
        Map<String, uo.b> mapA;
        Set<String> setKeySet;
        List<String> list;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        uo.a aVar = getSdkInitResponse().getCom.ironsource.oq.a java.lang.String().a().get(adFormat);
        return (aVar == null || (mapA = aVar.a()) == null || (setKeySet = mapA.keySet()) == null || (list = CollectionsKt.toList(setKeySet)) == null) ? CollectionsKt.emptyList() : list;
    }

    public final boolean a(String adUnitId, LevelPlay.AdFormat adFormat) {
        Map<String, uo.b> mapA;
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        uo.a aVar = getSdkInitResponse().getCom.ironsource.oq.a java.lang.String().a().get(adFormat);
        return (aVar == null || (mapA = aVar.a()) == null || !mapA.containsKey(adUnitId)) ? false : true;
    }

    public final long b(LevelPlay.AdFormat adFormat) {
        s.d dVarB;
        Long lD;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        s sVar = getSdkInitResponse().getConfigurations().a().get(adFormat);
        long jLongValue = (sVar == null || (dVarB = sVar.getFeatures()) == null || (lD = dVarB.getCom.ironsource.s.h java.lang.String()) == null) ? 60L : lD.longValue();
        return jLongValue > 0 ? TimeUnit.MINUTES.toMillis(jLongValue) : jLongValue;
    }

    public final jo b(sk tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        return new jo(tools, getSdkInitResponse().getConfigurations().a());
    }

    public final List<wm> b(LevelPlay.AdFormat adFormat, String adUnitId) {
        Map<String, uo.b> mapA;
        uo.b bVar;
        List<String> listA;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        uo.a aVar = getSdkInitResponse().getCom.ironsource.oq.a java.lang.String().a().get(adFormat);
        if (aVar == null || (mapA = aVar.a()) == null || (bVar = mapA.get(adUnitId)) == null || (listA = bVar.a()) == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            wm wmVar = getSdkInitResponse().getCom.ironsource.oq.b java.lang.String().a().get((String) it.next());
            if (wmVar != null) {
                arrayList.add(wmVar);
            }
        }
        return arrayList;
    }

    public final dp c(sk tools) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        s sVar = getSdkInitResponse().getConfigurations().a().get(LevelPlay.AdFormat.REWARDED);
        return new dp(tools, sVar != null ? sVar.a() : null, sVar != null ? sVar.c() : null);
    }

    public final List<wm> c(LevelPlay.AdFormat adFormat) {
        Map<String, uo.b> mapA;
        Set<String> setKeySet;
        List<wm> listDistinct;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        uo.a aVar = getSdkInitResponse().getCom.ironsource.oq.a java.lang.String().a().get(adFormat);
        if (aVar != null && (mapA = aVar.a()) != null && (setKeySet = mapA.keySet()) != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(setKeySet, 10));
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(b(adFormat, (String) it.next()));
            }
            List listFlatten = CollectionsKt.flatten(arrayList);
            if (listFlatten != null && (listDistinct = CollectionsKt.distinct(listFlatten)) != null) {
                return listDistinct;
            }
        }
        return CollectionsKt.emptyList();
    }

    public final List<LevelPlayAdSize> h() {
        List<String> listA = getSdkInitResponse().getConfigurations().getBannerConfigurations().getFeatures().a();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(LevelPlayAdSize.INSTANCE.createAdSize$mediationsdk_release((String) it.next()));
        }
        return arrayList;
    }

    public final float i() {
        return getSdkInitResponse().getConfigurations().getBannerConfigurations().getFeatures().getCom.ironsource.s6.d java.lang.String();
    }

    public final boolean j() {
        d1 d1VarA = d().c().getAdQualityConfigurations();
        return d1VarA != null && d1VarA.a();
    }

    public final boolean k() {
        return getSdkInitResponse().getConfigurations().getApplicationConfigurations().getCom.ironsource.y3.g java.lang.String();
    }
}
