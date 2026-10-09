package org.json;

import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.d;
import org.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\r\b\u0016\u0018\u0000 \u00072\u00020\u0001:\u0001\u0005B\u009b\u0001\u0012\u0006\u0010\r\u001a\u00020\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u001c\u001a\u00020\u0018\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\u0006\u0010&\u001a\u00020\u001d\u0012\u0006\u0010+\u001a\u00020\u0006\u0012\u0006\u0010-\u001a\u00020\u001d\u0012\u0006\u0010/\u001a\u00020\u001d\u0012\u0006\u00103\u001a\u000200\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u00109\u001a\u00020\u0006\u0012\u0006\u0010>\u001a\u00020:\u0012\u0006\u0010@\u001a\u00020\u0006\u0012\u0006\u0010B\u001a\u00020\u0006\u0012\u0006\u0010C\u001a\u00020\u0006\u0012\b\b\u0002\u0010D\u001a\u00020\u0006¢\u0006\u0004\bE\u0010FJ\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0002R\u0017\u0010\r\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0019\u0010\u001bR\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\u0005\u0010\"R\u0017\u0010&\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010!R\"\u0010+\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b\u0013\u0010)\"\u0004\b\u0005\u0010*R\u0017\u0010-\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b,\u0010\u001f\u001a\u0004\b'\u0010!R\u0017\u0010/\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b.\u0010\u001f\u001a\u0004\b\u0005\u0010!R\u0017\u00103\u001a\u0002008\u0006¢\u0006\f\n\u0004\b \u00101\u001a\u0004\b.\u00102R\u0017\u00107\u001a\u0002048\u0006¢\u0006\f\n\u0004\b\u0015\u00105\u001a\u0004\b,\u00106R\u0017\u00109\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b8\u0010(\u001a\u0004\b\u001e\u0010)R\u0017\u0010>\u001a\u00020:8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b$\u0010=R\u0017\u0010@\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b?\u0010(\u001a\u0004\b8\u0010)R\u0017\u0010B\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b%\u0010(\u001a\u0004\bA\u0010)R\u0017\u0010C\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000f\u0010(\u001a\u0004\b;\u0010)R\"\u0010D\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010(\u001a\u0004\b?\u0010)\"\u0004\b\u000b\u0010*¨\u0006G"}, d2 = {"Lcom/ironsource/r0;", "", "", "instanceName", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "a", "", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "s", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "b", "()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "adUnit", "Ljava/lang/String;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "()Ljava/lang/String;", "userId", "", "c", "Ljava/util/List;", "k", "()Ljava/util/List;", "providerList", "Lcom/ironsource/l5;", "d", "Lcom/ironsource/l5;", "()Lcom/ironsource/l5;", "auctionSettings", "", "e", "I", "j", "()I", "(I)V", "maxSmashesToLoad", "f", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, "smashLoadTimeout", "g", "Z", "()Z", "(Z)V", "advancedLoading", "h", "delayLoadFailure", "i", "adExpirationInMinutes", "Lcom/ironsource/l2;", "Lcom/ironsource/l2;", "()Lcom/ironsource/l2;", "loadingData", "Lcom/ironsource/f2;", "Lcom/ironsource/f2;", "()Lcom/ironsource/f2;", "interactionData", "l", "collectBiddingDataAsyncEnabled", "", "m", "J", "()J", "collectBiddingDataTimeout", "n", "providersParallelInit", "q", "waitUntilAllProvidersFinishInit", "sharedManagersThread", d.z, "<init>", "(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/l5;IIZIILcom/ironsource/l2;Lcom/ironsource/f2;ZJZZZZ)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class r0 {
    public static final int s = -1;

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final IronSource.AD_UNIT adUnit;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String userId;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final List<NetworkSettings> providerList;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final l5 auctionSettings;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private int maxSmashesToLoad;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final int smashLoadTimeout;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private boolean advancedLoading;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final int delayLoadFailure;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final int adExpirationInMinutes;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final l2 loadingData;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final f2 interactionData;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private final boolean collectBiddingDataAsyncEnabled;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private final long collectBiddingDataTimeout;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private final boolean providersParallelInit;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final boolean waitUntilAllProvidersFinishInit;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final boolean sharedManagersThread;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private boolean showPriorityEnabled;

    /* JADX WARN: Multi-variable type inference failed */
    public r0(IronSource.AD_UNIT adUnit, String str, List<? extends NetworkSettings> list, l5 auctionSettings, int i, int i2, boolean z, int i3, int i4, l2 loadingData, f2 interactionData, boolean z2, long j, boolean z3, boolean z4, boolean z5, boolean z6) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(auctionSettings, "auctionSettings");
        Intrinsics.checkNotNullParameter(loadingData, "loadingData");
        Intrinsics.checkNotNullParameter(interactionData, "interactionData");
        this.adUnit = adUnit;
        this.userId = str;
        this.providerList = list;
        this.auctionSettings = auctionSettings;
        this.maxSmashesToLoad = i;
        this.smashLoadTimeout = i2;
        this.advancedLoading = z;
        this.delayLoadFailure = i3;
        this.adExpirationInMinutes = i4;
        this.loadingData = loadingData;
        this.interactionData = interactionData;
        this.collectBiddingDataAsyncEnabled = z2;
        this.collectBiddingDataTimeout = j;
        this.providersParallelInit = z3;
        this.waitUntilAllProvidersFinishInit = z4;
        this.sharedManagersThread = z5;
        this.showPriorityEnabled = z6;
    }

    public /* synthetic */ r0(IronSource.AD_UNIT ad_unit, String str, List list, l5 l5Var, int i, int i2, boolean z, int i3, int i4, l2 l2Var, f2 f2Var, boolean z2, long j, boolean z3, boolean z4, boolean z5, boolean z6, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(ad_unit, str, list, l5Var, i, i2, z, i3, i4, l2Var, f2Var, z2, j, z3, z4, z5, (i5 & 65536) != 0 ? false : z6);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getAdExpirationInMinutes() {
        return this.adExpirationInMinutes;
    }

    public final NetworkSettings a(String instanceName) {
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        List<NetworkSettings> listK = k();
        Object obj = null;
        if (listK == null) {
            return null;
        }
        for (Object obj2 : listK) {
            if (((NetworkSettings) obj2).getProviderInstanceName().equals(instanceName)) {
                obj = obj2;
                break;
            }
        }
        return (NetworkSettings) obj;
    }

    public final void a(int i) {
        this.maxSmashesToLoad = i;
    }

    public final void a(boolean z) {
        this.advancedLoading = z;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final IronSource.AD_UNIT getAdUnit() {
        return this.adUnit;
    }

    public final void b(boolean z) {
        this.showPriorityEnabled = z;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getAdvancedLoading() {
        return this.advancedLoading;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final l5 getAuctionSettings() {
        return this.auctionSettings;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final boolean getCollectBiddingDataAsyncEnabled() {
        return this.collectBiddingDataAsyncEnabled;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final long getCollectBiddingDataTimeout() {
        return this.collectBiddingDataTimeout;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final int getDelayLoadFailure() {
        return this.delayLoadFailure;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final f2 getInteractionData() {
        return this.interactionData;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final l2 getLoadingData() {
        return this.loadingData;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final int getMaxSmashesToLoad() {
        return this.maxSmashesToLoad;
    }

    public List<NetworkSettings> k() {
        return this.providerList;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final boolean getProvidersParallelInit() {
        return this.providersParallelInit;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final boolean getSharedManagersThread() {
        return this.sharedManagersThread;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final boolean getShowPriorityEnabled() {
        return this.showPriorityEnabled;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final int getSmashLoadTimeout() {
        return this.smashLoadTimeout;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public String getUserId() {
        return this.userId;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final boolean getWaitUntilAllProvidersFinishInit() {
        return this.waitUntilAllProvidersFinishInit;
    }

    public final boolean r() {
        return this.auctionSettings.g() > 0;
    }

    public final String s() {
        String str = String.format(Locale.getDefault(), "%s: %d, %s: %b, %s: %b", d.x, Integer.valueOf(this.maxSmashesToLoad), d.y, Boolean.valueOf(this.advancedLoading), d.z, Boolean.valueOf(this.showPriorityEnabled));
        Intrinsics.checkNotNullExpressionValue(str, "format(\n          Locale…     showPriorityEnabled)");
        return str;
    }
}
