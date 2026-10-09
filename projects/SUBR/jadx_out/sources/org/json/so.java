package org.json;

import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.unity3d.mediation.LevelPlay;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.c;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001f\u0010 J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\t\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcom/ironsource/so;", "", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", oq.b, "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;", "networkAdapter", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "adData", "", "a", "", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "Lcom/ironsource/t2;", "Lcom/ironsource/t2;", "adUnitTools", "", "Lcom/ironsource/wm;", "b", "Ljava/util/List;", "providers", "Lcom/ironsource/t1;", "c", "Lcom/ironsource/t1;", "adUnitData", "d", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "legacyAdUnit", "<init>", "(Lcom/ironsource/t2;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;Lcom/ironsource/t1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class so {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final t2 adUnitTools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final List<wm> providers;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final t1 adUnitData;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final IronSource.AD_UNIT legacyAdUnit;

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

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"com/ironsource/so$b", "Lcom/ironsource/cq;", "", "a", "", "t", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b extends cq {
        final /* synthetic */ NetworkSettings b;
        final /* synthetic */ AdapterBaseInterface c;
        final /* synthetic */ AdData d;

        b(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface, AdData adData) {
            this.b = networkSettings;
            this.c = adapterBaseInterface;
            this.d = adData;
        }

        @Override // org.json.cq
        public void a() {
            so soVar = so.this;
            NetworkSettings networkSettings = this.b;
            AdapterBaseInterface networkAdapter = this.c;
            Intrinsics.checkNotNullExpressionValue(networkAdapter, "networkAdapter");
            soVar.a(networkSettings, networkAdapter, this.d);
        }

        @Override // org.json.cq
        public void a(Throwable t) {
            Intrinsics.checkNotNullParameter(t, "t");
            so.this.adUnitTools.getEventSender().getTroubleshoot().f("initProvider - exception while calling networkAdapter.init with " + this.b.getProviderName() + " - " + t);
        }
    }

    public so(t2 adUnitTools, LevelPlay.AdFormat adFormat, List<wm> providers, t1 adUnitData) {
        Intrinsics.checkNotNullParameter(adUnitTools, "adUnitTools");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(providers, "providers");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.adUnitTools = adUnitTools;
        this.providers = providers;
        this.adUnitData = adUnitData;
        this.legacyAdUnit = a(adFormat);
    }

    private final IronSource.AD_UNIT a(LevelPlay.AdFormat adFormat) {
        int i = a.a[adFormat.ordinal()];
        if (i == 1) {
            return IronSource.AD_UNIT.REWARDED_VIDEO;
        }
        if (i == 2) {
            return IronSource.AD_UNIT.INTERSTITIAL;
        }
        if (i == 3) {
            return IronSource.AD_UNIT.BANNER;
        }
        if (i == 4) {
            return IronSource.AD_UNIT.NATIVE_AD;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(NetworkSettings providerSettings, AdapterBaseInterface networkAdapter, AdData adData) {
        a("Start initializing provider %s on thread %s", providerSettings);
        networkAdapter.init(adData, ContextProvider.getInstance().getApplicationContext(), null);
        a("Done initializing provider %s on thread %s", providerSettings);
    }

    private final void a(String message, NetworkSettings providerSettings) {
        IronLog ironLog = IronLog.INTERNAL;
        t2 t2Var = this.adUnitTools;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(message, Arrays.copyOf(new Object[]{providerSettings.getProviderInstanceName(), Thread.currentThread().getName()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
        ironLog.verbose(l1.a(t2Var, str, (String) null, 2, (Object) null));
    }

    private final boolean a(NetworkSettings providerSettings, AdapterBaseInterface networkAdapter) {
        if (networkAdapter == null) {
            return false;
        }
        t2 t2Var = this.adUnitTools;
        IronSource.AD_UNIT ad_unit = this.legacyAdUnit;
        String providerInstanceName = providerSettings.getProviderInstanceName();
        Intrinsics.checkNotNullExpressionValue(providerInstanceName, "providerSettings.providerInstanceName");
        if (t2Var.a(networkAdapter, ad_unit, providerInstanceName)) {
            return false;
        }
        return providerSettings.shouldEarlyInit() || providerSettings.isIronSource() || providerSettings.isBidder(this.legacyAdUnit);
    }

    public final void a() {
        IronLog.INTERNAL.verbose(l1.a(this.adUnitTools, (String) null, (String) null, 3, (Object) null));
        UUID uuidRandomUUID = UUID.randomUUID();
        Iterator<wm> it = this.providers.iterator();
        while (it.hasNext()) {
            NetworkSettings networkSettingsF = it.next().f();
            AdapterBaseInterface adapterBaseInterfaceB = c.b().b(networkSettingsF, this.legacyAdUnit, uuidRandomUUID);
            if (a(networkSettingsF, adapterBaseInterfaceB)) {
                ps.a(ps.a, new b(networkSettingsF, adapterBaseInterfaceB, this.adUnitData.a(networkSettingsF)), 0L, 2, null);
            }
        }
    }
}
