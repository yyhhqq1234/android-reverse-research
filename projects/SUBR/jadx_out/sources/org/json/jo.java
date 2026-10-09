package org.json;

import com.unity3d.mediation.LevelPlay;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.impressionData.ImpressionData;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J(\u0010\f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J(\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J8\u0010\f\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\u0012J\u000e\u0010\f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0014R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lcom/ironsource/jo;", "", "Lcom/ironsource/af$a;", "cappingService", "", oo.d, "Lcom/unity3d/mediation/LevelPlay$AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "Lcom/ironsource/s$d;", "features", "", "b", "a", "c", "Lkotlin/Result;", "result", "Lcom/ironsource/k8;", "cappingType", "(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;)V", "Lcom/ironsource/sk;", "Lcom/ironsource/sk;", "tools", "", "Lcom/ironsource/s;", "Ljava/util/Map;", "adFormatsConfigurations", "<init>", "(Lcom/ironsource/sk;Ljava/util/Map;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class jo {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final sk tools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Map<LevelPlay.AdFormat, s> adFormatsConfigurations;

    public jo(sk tools, Map<LevelPlay.AdFormat, s> adFormatsConfigurations) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adFormatsConfigurations, "adFormatsConfigurations");
        this.tools = tools;
        this.adFormatsConfigurations = adFormatsConfigurations;
    }

    private final void a(af.a cappingService, String placementName, LevelPlay.AdFormat adFormat, s.d features) throws JSONException {
        e8 e8Var = features.getCom.ironsource.s.e java.lang.String();
        if (e8Var != null) {
            k8 k8Var = k8.ShowCount;
            a(cappingService.a(placementName, adFormat, k8Var, new b8(e8Var.getEnabled(), e8Var.getMaxImpressions(), e8Var.getUnit())), placementName, adFormat, k8Var);
        }
    }

    private final void a(Object result, String placementName, LevelPlay.AdFormat adFormat, k8 cappingType) throws JSONException {
        Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(result);
        if (thM604exceptionOrNullimpl != null) {
            this.tools.a(placementName, adFormat, new f8().a(cappingType), thM604exceptionOrNullimpl.getMessage());
        }
    }

    private final void b(af.a cappingService, String placementName, LevelPlay.AdFormat adFormat, s.d features) throws JSONException {
        k8 k8Var = k8.Delivery;
        ea eaVar = features.getCom.ironsource.s.g java.lang.String();
        a(cappingService.a(placementName, adFormat, k8Var, new b8(eaVar != null ? Boolean.valueOf(eaVar.getEnabled()) : null, null, null, 6, null)), placementName, adFormat, k8Var);
    }

    private final void c(af.a cappingService, String placementName, LevelPlay.AdFormat adFormat, s.d features) throws JSONException {
        yn ynVar = features.getCom.ironsource.s.f java.lang.String();
        if (ynVar != null) {
            k8 k8Var = k8.Pacing;
            a(cappingService.a(placementName, adFormat, k8Var, new b8(ynVar.getEnabled(), ynVar.getNumOfSeconds(), j8.Second)), placementName, adFormat, k8Var);
        }
    }

    public final void a(af.a cappingService) {
        Intrinsics.checkNotNullParameter(cappingService, "cappingService");
        for (Map.Entry<LevelPlay.AdFormat, s> entry : this.adFormatsConfigurations.entrySet()) {
            LevelPlay.AdFormat key = entry.getKey();
            for (Map.Entry<String, s.d> entry2 : entry.getValue().c().entrySet()) {
                String key2 = entry2.getKey();
                s.d value = entry2.getValue();
                b(cappingService, key2, key, value);
                a(cappingService, key2, key, value);
                c(cappingService, key2, key, value);
            }
        }
    }
}
