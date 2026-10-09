package org.json;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.a;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u00072\u00020\u0001:\u0002\u0005\u001bBA\u0012\u0006\u0010\"\u001a\u00020\u001e\u0012\u0006\u0010&\u001a\u00020\n\u0012\u0006\u0010+\u001a\u00020'\u0012\u0006\u00100\u001a\u00020,\u0012\u0006\u00105\u001a\u000201\u0012\b\b\u0002\u0010:\u001a\u000206\u0012\u0006\u0010=\u001a\u00020;¢\u0006\u0004\bJ\u0010KJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0004J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\u0004J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0005\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0005\u0010\u001dR\u0017\u0010\"\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010&\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u001b\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010+\u001a\u00020'8\u0006¢\u0006\f\n\u0004\b \u0010(\u001a\u0004\b)\u0010*R\u0017\u00100\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b)\u0010-\u001a\u0004\b.\u0010/R\u001a\u00105\u001a\u0002018\u0000X\u0080\u0004¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b2\u00104R\u0017\u0010:\u001a\u0002068\u0006¢\u0006\f\n\u0004\b$\u00107\u001a\u0004\b8\u00109R\u0014\u0010=\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010<R$\u0010C\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\b\u001b\u0010A\"\u0004\b\u0005\u0010BR$\u0010H\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010E\u001a\u0004\b?\u0010F\"\u0004\b\u0005\u0010GR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010I¨\u0006L"}, d2 = {"Lcom/ironsource/ek;", "Lcom/ironsource/vc;", "Lcom/ironsource/dd;", "state", "", "a", "(Lcom/ironsource/dd;)V", "k", "Landroid/app/Activity;", "activity", "", oo.d, "", "j", "l", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", gt.j, "Lcom/unity3d/mediation/LevelPlayAdError;", "error", gt.b, gt.g, gt.f, "onAdInfoChanged", "Lcom/unity3d/mediation/rewarded/LevelPlayReward;", s.i, "(Lcom/unity3d/mediation/LevelPlayAdInfo;)V", "b", "(Lcom/unity3d/mediation/LevelPlayAdError;)V", "(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "c", "()Lcom/unity3d/mediation/LevelPlay$AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "Ljava/lang/String;", "f", "()Ljava/lang/String;", "adUnitId", "Lcom/ironsource/l1;", "Lcom/ironsource/l1;", "d", "()Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/tc;", "Lcom/ironsource/tc;", "g", "()Lcom/ironsource/tc;", "fullscreenAdControllerFactory", "Lcom/ironsource/u1;", "e", "Lcom/ironsource/u1;", "()Lcom/ironsource/u1;", "adUnitDataFactory", "Lcom/ironsource/ye;", "Lcom/ironsource/ye;", "i", "()Lcom/ironsource/ye;", "mediationServicesProvider", "Lcom/ironsource/n9;", "Lcom/ironsource/n9;", "currentTimeProvider", "Lcom/ironsource/sc;", "h", "Lcom/ironsource/sc;", "()Lcom/ironsource/sc;", "(Lcom/ironsource/sc;)V", "adController", "Lcom/ironsource/fk;", "Lcom/ironsource/fk;", "()Lcom/ironsource/fk;", "(Lcom/ironsource/fk;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/dd;", "<init>", "(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/u1;Lcom/ironsource/ye;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ek implements vc {

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final LevelPlay.AdFormat adFormat;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String adUnitId;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final tc fullscreenAdControllerFactory;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final u1 adUnitDataFactory;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final ye mediationServicesProvider;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final n9 currentTimeProvider;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private sc adController;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private fk listener;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private dd state;

    /* JADX INFO: renamed from: com.ironsource.ek$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcom/ironsource/ek$a;", "", "", oo.d, "Lcom/unity3d/mediation/LevelPlay$AdFormat;", ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT, "", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(String placementName, LevelPlay.AdFormat adFormat) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            l1 l1VarA = l1.a.a(a.a(adFormat), b2.b.MEDIATION);
            if (!l1VarA.g()) {
                l1VarA.getEventSender().getAdInteraction().a(placementName, "SDK is not initialized", false);
                return false;
            }
            i8 i8VarA = jl.INSTANCE.d().x().a(placementName, adFormat);
            boolean zD = i8VarA.d();
            l1VarA.getEventSender().getAdInteraction().a(placementName, i8VarA.e(), zD);
            return zD;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0015\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0013\u001a\u0004\b\r\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/ironsource/ek$b;", "", "Lcom/ironsource/l1;", "a", "Lcom/ironsource/l1;", "b", "()Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/tc;", "Lcom/ironsource/tc;", "()Lcom/ironsource/tc;", "adControllerFactory", "Lcom/ironsource/ye;", "c", "Lcom/ironsource/ye;", "d", "()Lcom/ironsource/ye;", IronSourceConstants.EVENTS_PROVIDER, "Lcom/ironsource/n9;", "Lcom/ironsource/n9;", "()Lcom/ironsource/n9;", "currentTimeProvider", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final l1 adTools;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final tc adControllerFactory;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        private final ye provider;

        /* JADX INFO: renamed from: d, reason: from kotlin metadata */
        private final n9 currentTimeProvider;

        public b(l1 adTools, tc adControllerFactory, ye provider, n9 currentTimeProvider) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(adControllerFactory, "adControllerFactory");
            Intrinsics.checkNotNullParameter(provider, "provider");
            Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
            this.adTools = adTools;
            this.adControllerFactory = adControllerFactory;
            this.provider = provider;
            this.currentTimeProvider = currentTimeProvider;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final tc getAdControllerFactory() {
            return this.adControllerFactory;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final l1 getAdTools() {
            return this.adTools;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final n9 getCurrentTimeProvider() {
            return this.currentTimeProvider;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final ye getProvider() {
            return this.provider;
        }
    }

    public ek(LevelPlay.AdFormat adFormat, String adUnitId, l1 adTools, tc fullscreenAdControllerFactory, u1 adUnitDataFactory, ye mediationServicesProvider, n9 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(fullscreenAdControllerFactory, "fullscreenAdControllerFactory");
        Intrinsics.checkNotNullParameter(adUnitDataFactory, "adUnitDataFactory");
        Intrinsics.checkNotNullParameter(mediationServicesProvider, "mediationServicesProvider");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.adFormat = adFormat;
        this.adUnitId = adUnitId;
        this.adTools = adTools;
        this.fullscreenAdControllerFactory = fullscreenAdControllerFactory;
        this.adUnitDataFactory = adUnitDataFactory;
        this.mediationServicesProvider = mediationServicesProvider;
        this.currentTimeProvider = currentTimeProvider;
        this.state = new wc(this);
    }

    public /* synthetic */ ek(LevelPlay.AdFormat adFormat, String str, l1 l1Var, tc tcVar, u1 u1Var, ye yeVar, n9 n9Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, str, l1Var, tcVar, u1Var, (i & 32) != 0 ? jl.INSTANCE.d() : yeVar, n9Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adTools.getEventSender().getTroubleshoot().b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ek this$0, Activity activity, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        this$0.adTools.getEventSender().getTroubleshoot().c();
        this$0.state.a(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ek this$0, LevelPlayAdError levelPlayAdError) {
        String errorMessage;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        zt troubleshoot = this$0.adTools.getEventSender().getTroubleshoot();
        int errorCode = levelPlayAdError != null ? levelPlayAdError.getErrorCode() : 0;
        if (levelPlayAdError == null || (errorMessage = levelPlayAdError.getErrorMessage()) == null) {
            errorMessage = "";
        }
        troubleshoot.b(errorCode, errorMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ek this$0, LevelPlayAdError error, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        Intrinsics.checkNotNullParameter(adInfo, "$adInfo");
        fk fkVar = this$0.listener;
        if (fkVar != null) {
            fkVar.onAdDisplayFailed(error, adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ek this$0, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInfo, "$adInfo");
        fk fkVar = this$0.listener;
        if (fkVar != null) {
            fkVar.onAdLoaded(adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ek this$0, LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(reward, "$reward");
        fk fkVar = this$0.listener;
        if (fkVar != null) {
            fkVar.onAdRewarded(reward, this$0.state.getAdInfo());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayAdError levelPlayAdError, ek this$0) {
        fk fkVar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (levelPlayAdError == null || (fkVar = this$0.listener) == null) {
            return;
        }
        fkVar.onAdLoadFailed(levelPlayAdError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adTools.getEventSender().getTroubleshoot().a();
        this$0.state.loadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ek this$0, LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        this$0.adTools.getEventSender().getTroubleshoot().a(error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ek this$0, LevelPlayAdInfo currentAdInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(currentAdInfo, "$currentAdInfo");
        fk fkVar = this$0.listener;
        if (fkVar != null) {
            fkVar.onAdClosed(currentAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fk fkVar = this$0.listener;
        if (fkVar != null) {
            fkVar.onAdClicked(this$0.state.getAdInfo());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(ek this$0, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInfo, "$adInfo");
        this$0.state.onAdInfoChanged(adInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(new wc(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ek this$0, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInfo, "$adInfo");
        fk fkVar = this$0.listener;
        if (fkVar != null) {
            fkVar.onAdInfoChanged(adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(new wc(this$0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ek this$0, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInfo, "$adInfo");
        this$0.a(new ad(this$0, adInfo, this$0.currentTimeProvider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adTools.getEventSender().getTroubleshoot().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fk fkVar = this$0.listener;
        if (fkVar != null) {
            fkVar.onAdDisplayed(this$0.state.getAdInfo());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ek this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(new wc(this$0));
    }

    @Override // org.json.vc
    public void a() {
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdDisplayed adInfo: " + this.state.getAdInfo(), (String) null, 2, (Object) null));
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                ek.f(this.f$0);
            }
        });
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                ek.g(this.f$0);
            }
        });
    }

    public final void a(final Activity activity, final String placementName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ek.a(this.f$0, activity, placementName);
            }
        });
    }

    public final void a(dd state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
    }

    public final void a(fk fkVar) {
        this.listener = fkVar;
    }

    public final void a(sc scVar) {
        this.adController = scVar;
    }

    @Override // org.json.vc
    public void a(LevelPlayAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        LevelPlayAdInfo levelPlayAdInfoA = this.state.getAdInfo();
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ek.e(this.f$0);
            }
        });
        a(error, levelPlayAdInfoA);
    }

    public final void a(final LevelPlayAdError error, final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdDisplayFailed error: " + error + ", adInfo: " + adInfo, (String) null, 2, (Object) null));
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                ek.b(this.f$0, error);
            }
        });
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ek.a(this.f$0, error, adInfo);
            }
        });
    }

    public final void a(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdLoaded adInfo: " + adInfo, (String) null, 2, (Object) null));
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ek.a(this.f$0);
            }
        });
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ek.a(this.f$0, adInfo);
            }
        });
    }

    @Override // org.json.vc
    public void a(final LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(reward, "reward");
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdRewarded adInfo: " + this.state.getAdInfo() + " reward: " + reward, (String) null, 2, (Object) null));
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ek.a(this.f$0, reward);
            }
        });
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final sc getAdController() {
        return this.adController;
    }

    public final void b(final LevelPlayAdError error) {
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdLoadFailed error: " + error, (String) null, 2, (Object) null));
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ek.a(this.f$0, error);
            }
        });
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ek.a(error, this);
            }
        });
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final LevelPlay.AdFormat getAdFormat() {
        return this.adFormat;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final l1 getAdTools() {
        return this.adTools;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final u1 getAdUnitDataFactory() {
        return this.adUnitDataFactory;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getAdUnitId() {
        return this.adUnitId;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final tc getFullscreenAdControllerFactory() {
        return this.fullscreenAdControllerFactory;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final fk getListener() {
        return this.listener;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final ye getMediationServicesProvider() {
        return this.mediationServicesProvider;
    }

    public final boolean j() {
        g1 g1VarB = this.state.b();
        this.adTools.getEventSender().getLoad().a(Boolean.valueOf(g1VarB.getIsReady()), g1VarB instanceof g1.a ? ((g1.a) g1VarB).d() : null);
        return g1VarB.getIsReady();
    }

    public final void k() {
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ek.b(this.f$0);
            }
        });
    }

    public final void l() {
        a(new bd(this));
        sc scVar = this.adController;
        if (scVar != null) {
            scVar.h();
        }
    }

    @Override // org.json.vc
    public void onAdClicked() {
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdClicked adInfo: " + this.state.getAdInfo(), (String) null, 2, (Object) null));
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ek.c(this.f$0);
            }
        });
    }

    @Override // org.json.vc
    public void onAdClosed() {
        final LevelPlayAdInfo levelPlayAdInfoA = this.state.getAdInfo();
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdClosed adInfo: " + levelPlayAdInfoA, (String) null, 2, (Object) null));
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                ek.d(this.f$0);
            }
        });
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                ek.b(this.f$0, levelPlayAdInfoA);
            }
        });
    }

    @Override // org.json.vc
    public void onAdInfoChanged(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.CALLBACK.verbose(l1.a(this.adTools, "onAdInfoChanged adInfo: " + adInfo, (String) null, 2, (Object) null));
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ek.c(this.f$0, adInfo);
            }
        });
        this.adTools.e(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                ek.d(this.f$0, adInfo);
            }
        });
    }

    @Override // org.json.vc
    public void onAdLoadFailed(LevelPlayAdError error) {
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ek.h(this.f$0);
            }
        });
        b(error);
    }

    @Override // org.json.vc
    public void onAdLoaded(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.adTools.d(new Runnable() { // from class: com.ironsource.ek$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ek.e(this.f$0, adInfo);
            }
        });
        a(adInfo);
    }
}
