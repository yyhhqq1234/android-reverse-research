package org.json;

import com.unity3d.mediation.LevelPlay;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013¢\u0006\u0004\b\u0018\u0010\u0019J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J0\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u000fJ\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0011R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/ironsource/r1;", "Lcom/ironsource/h8;", "Lcom/ironsource/ie$a;", "cappingService", "", "adUnitId", "Lcom/ironsource/s$d;", "features", "", "a", "b", "Lkotlin/Result;", "result", "Lcom/ironsource/k8;", "cappingType", "(Ljava/lang/Object;Ljava/lang/String;Lcom/ironsource/k8;)V", "Lcom/ironsource/sk;", "Lcom/ironsource/sk;", "tools", "", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "Lcom/ironsource/s;", "Ljava/util/Map;", "adFormatsConfigurations", "<init>", "(Lcom/ironsource/sk;Ljava/util/Map;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class r1 implements h8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final sk tools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Map<LevelPlay.AdFormat, s> adFormatsConfigurations;

    public r1(sk tools, Map<LevelPlay.AdFormat, s> adFormatsConfigurations) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adFormatsConfigurations, "adFormatsConfigurations");
        this.tools = tools;
        this.adFormatsConfigurations = adFormatsConfigurations;
    }

    private final void a(ie.a cappingService, String adUnitId, s.d features) throws JSONException {
        e8 e8Var = features.getCom.ironsource.s.e java.lang.String();
        if (e8Var != null) {
            k8 k8Var = k8.ShowCount;
            a(cappingService.a(adUnitId, k8Var, new b8(e8Var.getEnabled(), e8Var.getMaxImpressions(), e8Var.getUnit())), adUnitId, k8Var);
        }
    }

    private final void a(Object result, String adUnitId, k8 cappingType) throws JSONException {
        Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(result);
        if (thM604exceptionOrNullimpl != null) {
            this.tools.a(adUnitId, new f8().a(cappingType), thM604exceptionOrNullimpl.getMessage());
        }
    }

    private final void b(ie.a cappingService, String adUnitId, s.d features) throws JSONException {
        yn ynVar = features.getCom.ironsource.s.f java.lang.String();
        if (ynVar != null) {
            k8 k8Var = k8.Pacing;
            a(cappingService.a(adUnitId, k8Var, new b8(ynVar.getEnabled(), ynVar.getNumOfSeconds(), ynVar.getUnit())), adUnitId, k8Var);
        }
    }

    @Override // org.json.h8
    public void a(ie.a cappingService) {
        Intrinsics.checkNotNullParameter(cappingService, "cappingService");
        Iterator<Map.Entry<LevelPlay.AdFormat, s>> it = this.adFormatsConfigurations.entrySet().iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, s.d> entry : it.next().getValue().a().entrySet()) {
                String key = entry.getKey();
                s.d value = entry.getValue();
                a(cappingService, key, value);
                b(cappingService, key, value);
            }
        }
    }
}
