package org.json;

import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010 \u001a\u00020\u001e\u0012\u0006\u0010#\u001a\u00020!¢\u0006\u0004\b.\u0010/J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J(\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J4\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00142\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u001e\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001a2\u0006\u0010\u0019\u001a\u00020\u0017H\u0002J*\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001a2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0006\u0010\u001c\u001a\u00020\u001bJ\u0006\u0010\u001d\u001a\u00020\u001bJ\u000e\u0010\u0003\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000eR\u0014\u0010 \u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001fR\u0014\u0010#\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\"R\u0017\u0010(\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b\u0011\u0010'R\u001d\u0010-\u001a\b\u0012\u0004\u0012\u00020*0)8\u0006¢\u0006\f\n\u0004\b\u001d\u0010+\u001a\u0004\b%\u0010,¨\u00060"}, d2 = {"Lcom/ironsource/n4;", "", "com/ironsource/n4$b", "a", "()Lcom/ironsource/n4$b;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;", "networkAdapter", "Lcom/ironsource/v7;", "biddingDataInterface", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "adData", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", oq.b, "", "Lcom/ironsource/n4$d;", "biddingDataListener", "Lcom/ironsource/w7$b;", "b", "", IronSourceConstants.EVENTS_DURATION, "", "Lcom/ironsource/x7;", "biddingDataList", "", "reachedTimeout", "instanceName", "", "", "e", "d", "Lcom/ironsource/t2;", "Lcom/ironsource/t2;", "adTools", "Lcom/ironsource/t1;", "Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/b5;", "c", "Lcom/ironsource/b5;", "()Lcom/ironsource/b5;", "auctionRequestData", "", "Lcom/ironsource/t7;", "Ljava/util/List;", "()Ljava/util/List;", "callableList", "<init>", "(Lcom/ironsource/t2;Lcom/ironsource/t1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class n4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final t2 adTools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final t1 adUnitData;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final b5 auctionRequestData;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final List<t7> callableList;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/ironsource/n4$a", "Lcom/ironsource/cq;", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a extends cq {
        final /* synthetic */ w7 a;
        final /* synthetic */ n4 b;
        final /* synthetic */ w7.b c;

        a(w7 w7Var, n4 n4Var, w7.b bVar) {
            this.a = w7Var;
            this.b = n4Var;
            this.c = bVar;
        }

        @Override // org.json.cq
        public void a() {
            this.a.a(this.b.c(), this.c, this.b.adUnitData.getCollectBiddingDataTimeout(), TimeUnit.MILLISECONDS);
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\b"}, d2 = {"com/ironsource/n4$b", "Lcom/ironsource/u7;", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", oq.b, "", "a", "", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements u7 {
        b() {
        }

        @Override // org.json.u7
        public void a(NetworkSettings providerSettings) {
            AdapterBaseInterface adapterBaseInterfaceB = org.json.mediationsdk.c.b().b(providerSettings, n4.this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String(), n4.this.adUnitData.getAdProperties().getLevelPlayAdId().getId());
            if (adapterBaseInterfaceB != null) {
                n4.this.adTools.getEventSender().getToken().a(n4.this.a(providerSettings, adapterBaseInterfaceB));
            }
        }

        @Override // org.json.u7
        public void a(String message) {
            n4.this.adTools.getEventSender().getTroubleshoot().f(message);
        }
    }

    @Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J,\u0010\n\u001a\u00020\t2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016¨\u0006\r"}, d2 = {"com/ironsource/n4$c", "Lcom/ironsource/w7$b;", "", "Lcom/ironsource/x7;", "biddingDataList", "", IronSourceConstants.EVENTS_DURATION, "", "reachedTimeout", "", "a", "error", "onFailure", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class c implements w7.b {
        final /* synthetic */ d b;

        c(d dVar) {
            this.b = dVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(n4 this$0, long j, List biddingDataList, List reachedTimeout, d biddingDataListener) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(biddingDataList, "$biddingDataList");
            Intrinsics.checkNotNullParameter(reachedTimeout, "$reachedTimeout");
            Intrinsics.checkNotNullParameter(biddingDataListener, "$biddingDataListener");
            this$0.a(j, (List<? extends x7>) biddingDataList, (List<String>) reachedTimeout, biddingDataListener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(n4 this$0, String error, d biddingDataListener) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(error, "$error");
            Intrinsics.checkNotNullParameter(biddingDataListener, "$biddingDataListener");
            this$0.adTools.getEventSender().getToken().a(error);
            biddingDataListener.a(this$0, error);
        }

        @Override // com.ironsource.w7.b
        public void a(final List<? extends x7> biddingDataList, final long duration, final List<String> reachedTimeout) {
            Intrinsics.checkNotNullParameter(biddingDataList, "biddingDataList");
            Intrinsics.checkNotNullParameter(reachedTimeout, "reachedTimeout");
            t2 t2Var = n4.this.adTools;
            final n4 n4Var = n4.this;
            final d dVar = this.b;
            t2Var.a(new Runnable() { // from class: com.ironsource.n4$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    n4.c.a(n4Var, duration, biddingDataList, reachedTimeout, dVar);
                }
            });
        }

        @Override // com.ironsource.w7.b
        public void onFailure(final String error) {
            Intrinsics.checkNotNullParameter(error, "error");
            t2 t2Var = n4.this.adTools;
            final n4 n4Var = n4.this;
            final d dVar = this.b;
            t2Var.a(new Runnable() { // from class: com.ironsource.n4$c$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    n4.c.a(n4Var, error, dVar);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/n4$d;", "", "Lcom/ironsource/n4;", y3.f, "", "a", "", "error", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public interface d {
        void a(n4 auction);

        void a(n4 auction, String error);
    }

    public n4(t2 adTools, t1 adUnitData) {
        StringBuilder sb;
        String providerName;
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.adTools = adTools;
        this.adUnitData = adUnitData;
        this.auctionRequestData = new b5(adUnitData);
        this.callableList = new ArrayList();
        b bVarA = a();
        xs testSuiteLoadAdConfig = adUnitData.getAdProperties().getTestSuiteLoadAdConfig();
        for (NetworkSettings networkSettings : adUnitData.n()) {
            if (testSuiteLoadAdConfig == null || testSuiteLoadAdConfig.a(networkSettings, this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String())) {
                AdData adDataA = this.adUnitData.a(networkSettings);
                if (networkSettings.isBidder(this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String())) {
                    AdapterBaseInterface adapterBaseInterfaceA = a(networkSettings);
                    if (!(adapterBaseInterfaceA instanceof v7)) {
                        if (adapterBaseInterfaceA == null) {
                            sb = new StringBuilder("prepareAuctionCandidates - could not load network adapter ");
                            providerName = networkSettings.getProviderName();
                        } else {
                            sb = new StringBuilder("network adapter ");
                            sb.append(networkSettings.getProviderName());
                            providerName = " does not implementing BiddingDataInterface";
                        }
                        sb.append(providerName);
                        this.adTools.getEventSender().getTroubleshoot().f(sb.toString());
                    } else if (this.adUnitData.getCollectBiddingDataAsyncEnabled()) {
                        this.callableList.add(new t7(networkSettings.getInstanceType(this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String()), networkSettings.getProviderInstanceName(), adDataA, (v7) adapterBaseInterfaceA, bVarA, networkSettings));
                    } else {
                        a(adapterBaseInterfaceA, (v7) adapterBaseInterfaceA, adDataA, networkSettings);
                    }
                } else {
                    this.auctionRequestData.a(networkSettings);
                }
            }
        }
    }

    private final AdapterBaseInterface a(NetworkSettings providerSettings) {
        return org.json.mediationsdk.c.b().b(providerSettings, this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String(), this.adUnitData.getAdProperties().getLevelPlayAdId().getId());
    }

    private final b a() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, Object> a(NetworkSettings providerSettings, AdapterBaseInterface networkAdapter) {
        String providerDefaultInstance;
        HashMap map = new HashMap();
        if (providerSettings != null) {
            try {
                providerDefaultInstance = providerSettings.getProviderDefaultInstance();
            } catch (Exception e) {
                l9.d().a(e);
                IronSourceLoggerManager logger = IronSourceLoggerManager.getLogger();
                IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
                StringBuilder sb = new StringBuilder("getProviderEventData ");
                sb.append(providerSettings != null ? providerSettings.getProviderDefaultInstance() : null);
                logger.logException(ironSourceTag, sb.toString(), e);
            }
        } else {
            providerDefaultInstance = null;
        }
        map.put(IronSourceConstants.EVENTS_PROVIDER, providerDefaultInstance);
        map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, networkAdapter != null ? networkAdapter.getAdapterVersion() : null);
        map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, networkAdapter != null ? networkAdapter.getNetworkSDKVersion() : null);
        map.put("spId", providerSettings != null ? providerSettings.getSubProviderId() : null);
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        map.put("instanceType", providerSettings != null ? Integer.valueOf(providerSettings.getInstanceType(this.adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String())) : null);
        return map;
    }

    private final Map<String, Object> a(String instanceName) {
        NetworkSettings networkSettingsA = this.adUnitData.a(instanceName);
        return a(networkSettingsA, a(networkSettingsA));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long duration, List<? extends x7> biddingDataList, List<String> reachedTimeout, d biddingDataListener) {
        this.adTools.getEventSender().getToken().a(duration);
        for (x7 x7Var : biddingDataList) {
            String strC = x7Var.c();
            Intrinsics.checkNotNullExpressionValue(strC, "biddingResponse.instanceName");
            Map<String, Object> mapA = a(strC);
            if (x7Var.a() != null) {
                this.auctionRequestData.a(x7Var);
                this.adTools.getEventSender().getToken().a(mapA, x7Var.e());
            } else {
                this.adTools.getEventSender().getToken().a(mapA, x7Var.e(), x7Var.b());
            }
        }
        Iterator<String> it = reachedTimeout.iterator();
        while (it.hasNext()) {
            this.adTools.getEventSender().getToken().b(a(it.next()), duration);
        }
        biddingDataListener.a(this);
    }

    private final void a(AdapterBaseInterface networkAdapter, v7 biddingDataInterface, AdData adData, NetworkSettings providerSettings) {
        StringBuilder sb;
        try {
            Map<String, ? extends Object> mapA = biddingDataInterface.a(adData);
            if (mapA != null) {
                this.auctionRequestData.a(providerSettings, mapA);
            } else {
                this.adTools.getEventSender().getTroubleshoot().a(a(providerSettings, networkAdapter), "Missing bidding data");
            }
        } catch (Exception e) {
            e = e;
            l9.d().a(e);
            sb = new StringBuilder("prepareAuctionCandidates - exception while calling networkAdapter.getBiddingData - ");
            sb.append(e.getMessage());
            String string = sb.toString();
            IronLog.INTERNAL.error(string);
            this.adTools.getEventSender().getTroubleshoot().f(string);
        } catch (NoClassDefFoundError e2) {
            e = e2;
            l9.d().a(e);
            sb = new StringBuilder("prepareAuctionCandidates - error while calling networkAdapter.getBiddingData - ");
            sb.append(e.getMessage());
            String string2 = sb.toString();
            IronLog.INTERNAL.error(string2);
            this.adTools.getEventSender().getTroubleshoot().f(string2);
        }
    }

    private final w7.b b(d biddingDataListener) {
        return new c(biddingDataListener);
    }

    public final void a(d biddingDataListener) {
        Intrinsics.checkNotNullParameter(biddingDataListener, "biddingDataListener");
        w7 w7Var = new w7();
        w7.b bVarB = b(biddingDataListener);
        this.adTools.getEventSender().getToken().a();
        this.adTools.c((cq) new a(w7Var, this, bVarB));
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final b5 getAuctionRequestData() {
        return this.auctionRequestData;
    }

    public final List<t7> c() {
        return this.callableList;
    }

    public final boolean d() {
        return !this.callableList.isEmpty();
    }

    public final boolean e() {
        return this.auctionRequestData.d();
    }
}
