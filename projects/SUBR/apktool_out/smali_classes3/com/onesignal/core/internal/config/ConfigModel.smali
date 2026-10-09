.class public final Lcom/onesignal/core/internal/config/ConfigModel;
.super Lcom/onesignal/common/modeling/Model;
.source "ConfigModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010v\u001a\u0004\u0018\u00010\u00012\u0006\u0010w\u001a\u00020\u00042\u0006\u0010x\u001a\u00020yH\u0014R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR(\u0010\u001e\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR$\u0010!\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\u0016\"\u0004\u0008#\u0010\u0018R$\u0010$\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\u0016\"\u0004\u0008&\u0010\u0018R\u0011\u0010\'\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R$\u0010+\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010\u0010\"\u0004\u0008-\u0010\u0012R$\u0010.\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008/\u0010\u0016\"\u0004\u00080\u0010\u0018R$\u00101\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00082\u0010\u0010\"\u0004\u00083\u0010\u0012R(\u00104\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00085\u0010\u0007\"\u0004\u00086\u0010\tR$\u00108\u001a\u0002072\u0006\u0010\u0003\u001a\u0002078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R$\u0010=\u001a\u0002072\u0006\u0010\u0003\u001a\u0002078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008>\u0010:\"\u0004\u0008?\u0010<R$\u0010@\u001a\u0002072\u0006\u0010\u0003\u001a\u0002078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008A\u0010:\"\u0004\u0008B\u0010<R\u0011\u0010C\u001a\u00020D8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR$\u0010G\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008G\u0010\u0016\"\u0004\u0008H\u0010\u0018R$\u0010I\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008J\u0010\u0016\"\u0004\u0008K\u0010\u0018R(\u0010M\u001a\u0004\u0018\u00010L2\u0008\u0010\u0003\u001a\u0004\u0018\u00010L8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR$\u0010R\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008S\u0010\u0010\"\u0004\u0008T\u0010\u0012R$\u0010U\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008V\u0010\u0010\"\u0004\u0008W\u0010\u0012R$\u0010X\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Y\u0010\u0010\"\u0004\u0008Z\u0010\u0012R$\u0010[\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\\\u0010\u0010\"\u0004\u0008]\u0010\u0012R$\u0010^\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008_\u0010\u0010\"\u0004\u0008`\u0010\u0012R(\u0010a\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008b\u0010\u0007\"\u0004\u0008c\u0010\tR$\u0010d\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008e\u0010\u0016\"\u0004\u0008f\u0010\u0018R$\u0010g\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008h\u0010\u0016\"\u0004\u0008i\u0010\u0018R$\u0010j\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008k\u0010\u0010\"\u0004\u0008l\u0010\u0012R$\u0010m\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008n\u0010\u0016\"\u0004\u0008o\u0010\u0018R$\u0010p\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008q\u0010\u0016\"\u0004\u0008r\u0010\u0018R$\u0010s\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008t\u0010\u0016\"\u0004\u0008u\u0010\u0018\u00a8\u0006z"
    }
    d2 = {
        "Lcom/onesignal/core/internal/config/ConfigModel;",
        "Lcom/onesignal/common/modeling/Model;",
        "()V",
        "value",
        "",
        "apiUrl",
        "getApiUrl",
        "()Ljava/lang/String;",
        "setApiUrl",
        "(Ljava/lang/String;)V",
        "appId",
        "getAppId",
        "setAppId",
        "",
        "backgroundFetchNotificationPermissionInterval",
        "getBackgroundFetchNotificationPermissionInterval",
        "()J",
        "setBackgroundFetchNotificationPermissionInterval",
        "(J)V",
        "",
        "clearGroupOnSummaryClick",
        "getClearGroupOnSummaryClick",
        "()Z",
        "setClearGroupOnSummaryClick",
        "(Z)V",
        "consentGiven",
        "getConsentGiven",
        "()Ljava/lang/Boolean;",
        "setConsentGiven",
        "(Ljava/lang/Boolean;)V",
        "consentRequired",
        "getConsentRequired",
        "setConsentRequired",
        "disableGMSMissingPrompt",
        "getDisableGMSMissingPrompt",
        "setDisableGMSMissingPrompt",
        "enterprise",
        "getEnterprise",
        "setEnterprise",
        "fcmParams",
        "Lcom/onesignal/core/internal/config/FCMConfigModel;",
        "getFcmParams",
        "()Lcom/onesignal/core/internal/config/FCMConfigModel;",
        "fetchIAMMinInterval",
        "getFetchIAMMinInterval",
        "setFetchIAMMinInterval",
        "firebaseAnalytics",
        "getFirebaseAnalytics",
        "setFirebaseAnalytics",
        "foregroundFetchNotificationPermissionInterval",
        "getForegroundFetchNotificationPermissionInterval",
        "setForegroundFetchNotificationPermissionInterval",
        "googleProjectNumber",
        "getGoogleProjectNumber",
        "setGoogleProjectNumber",
        "",
        "httpGetTimeout",
        "getHttpGetTimeout",
        "()I",
        "setHttpGetTimeout",
        "(I)V",
        "httpRetryAfterParseFailFallback",
        "getHttpRetryAfterParseFailFallback",
        "setHttpRetryAfterParseFailFallback",
        "httpTimeout",
        "getHttpTimeout",
        "setHttpTimeout",
        "influenceParams",
        "Lcom/onesignal/core/internal/config/InfluenceConfigModel;",
        "getInfluenceParams",
        "()Lcom/onesignal/core/internal/config/InfluenceConfigModel;",
        "isInitializedWithRemote",
        "setInitializedWithRemote",
        "locationShared",
        "getLocationShared",
        "setLocationShared",
        "Lorg/json/JSONArray;",
        "notificationChannels",
        "getNotificationChannels",
        "()Lorg/json/JSONArray;",
        "setNotificationChannels",
        "(Lorg/json/JSONArray;)V",
        "opRepoDefaultFailRetryBackoff",
        "getOpRepoDefaultFailRetryBackoff",
        "setOpRepoDefaultFailRetryBackoff",
        "opRepoExecutionInterval",
        "getOpRepoExecutionInterval",
        "setOpRepoExecutionInterval",
        "opRepoPostCreateDelay",
        "getOpRepoPostCreateDelay",
        "setOpRepoPostCreateDelay",
        "opRepoPostCreateRetryUpTo",
        "getOpRepoPostCreateRetryUpTo",
        "setOpRepoPostCreateRetryUpTo",
        "opRepoPostWakeDelay",
        "getOpRepoPostWakeDelay",
        "setOpRepoPostWakeDelay",
        "pushSubscriptionId",
        "getPushSubscriptionId",
        "setPushSubscriptionId",
        "receiveReceiptEnabled",
        "getReceiveReceiptEnabled",
        "setReceiveReceiptEnabled",
        "restoreTTLFilter",
        "getRestoreTTLFilter",
        "setRestoreTTLFilter",
        "sessionFocusTimeout",
        "getSessionFocusTimeout",
        "setSessionFocusTimeout",
        "unsubscribeWhenNotificationsDisabled",
        "getUnsubscribeWhenNotificationsDisabled",
        "setUnsubscribeWhenNotificationsDisabled",
        "useIdentityVerification",
        "getUseIdentityVerification",
        "setUseIdentityVerification",
        "userRejectedGMSUpdate",
        "getUserRejectedGMSUpdate",
        "setUserRejectedGMSUpdate",
        "createModelForProperty",
        "property",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 7
    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onesignal/common/modeling/Model;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected createModelForProperty(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/onesignal/common/modeling/Model;
    .locals 2

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "influenceParams"

    .line 308
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    new-instance p1, Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    move-object v1, p0

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    invoke-direct {p1, v1, v0}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, p2}, Lcom/onesignal/core/internal/config/InfluenceConfigModel;->initializeFromJson(Lorg/json/JSONObject;)V

    .line 311
    check-cast p1, Lcom/onesignal/common/modeling/Model;

    return-object p1

    :cond_0
    const-string v1, "fcmParams"

    .line 314
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 315
    new-instance p1, Lcom/onesignal/core/internal/config/FCMConfigModel;

    move-object v1, p0

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    invoke-direct {p1, v1, v0}, Lcom/onesignal/core/internal/config/FCMConfigModel;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1, p2}, Lcom/onesignal/core/internal/config/FCMConfigModel;->initializeFromJson(Lorg/json/JSONObject;)V

    .line 317
    check-cast p1, Lcom/onesignal/common/modeling/Model;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getApiUrl()Ljava/lang/String;
    .locals 2

    .line 39
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$apiUrl$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$apiUrl$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "apiUrl"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getStringProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 4

    .line 21
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "appId"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundFetchNotificationPermissionInterval()J
    .locals 2

    .line 215
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$backgroundFetchNotificationPermissionInterval$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$backgroundFetchNotificationPermissionInterval$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "backgroundFetchNotificationPermissionInterval"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getClearGroupOnSummaryClick()Z
    .locals 2

    .line 287
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$clearGroupOnSummaryClick$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$clearGroupOnSummaryClick$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "clearGroupOnSummaryClick"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getConsentGiven()Ljava/lang/Boolean;
    .locals 4

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "consentGiven"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getOptBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getConsentRequired()Ljava/lang/Boolean;
    .locals 4

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "consentRequired"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getOptBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getDisableGMSMissingPrompt()Z
    .locals 2

    .line 73
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$disableGMSMissingPrompt$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$disableGMSMissingPrompt$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "disableGMSMissingPrompt"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getEnterprise()Z
    .locals 2

    .line 233
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$enterprise$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$enterprise$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "enterprise"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getFcmParams()Lcom/onesignal/core/internal/config/FCMConfigModel;
    .locals 2

    .line 302
    new-instance v0, Lcom/onesignal/core/internal/config/ConfigModel$fcmParams$2;

    invoke-direct {v0, p0}, Lcom/onesignal/core/internal/config/ConfigModel$fcmParams$2;-><init>(Lcom/onesignal/core/internal/config/ConfigModel;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "fcmParams"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getAnyProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onesignal.core.internal.config.FCMConfigModel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onesignal/core/internal/config/FCMConfigModel;

    return-object v0
.end method

.method public final getFetchIAMMinInterval()J
    .locals 2

    .line 196
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$fetchIAMMinInterval$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$fetchIAMMinInterval$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "fetchIAMMinInterval"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFirebaseAnalytics()Z
    .locals 2

    .line 260
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$firebaseAnalytics$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$firebaseAnalytics$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "firebaseAnalytics"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getForegroundFetchNotificationPermissionInterval()J
    .locals 2

    .line 205
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$foregroundFetchNotificationPermissionInterval$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$foregroundFetchNotificationPermissionInterval$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "foregroundFetchNotificationPermissionInterval"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGoogleProjectNumber()Ljava/lang/String;
    .locals 4

    .line 224
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "googleProjectNumber"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHttpGetTimeout()I
    .locals 2

    .line 109
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$httpGetTimeout$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$httpGetTimeout$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "httpGetTimeout"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getIntProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    return v0
.end method

.method public final getHttpRetryAfterParseFailFallback()I
    .locals 2

    .line 119
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$httpRetryAfterParseFailFallback$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$httpRetryAfterParseFailFallback$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "httpRetryAfterParseFailFallback"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getIntProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    return v0
.end method

.method public final getHttpTimeout()I
    .locals 2

    .line 100
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$httpTimeout$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$httpTimeout$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "httpTimeout"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getIntProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    return v0
.end method

.method public final getInfluenceParams()Lcom/onesignal/core/internal/config/InfluenceConfigModel;
    .locals 2

    .line 296
    new-instance v0, Lcom/onesignal/core/internal/config/ConfigModel$influenceParams$2;

    invoke-direct {v0, p0}, Lcom/onesignal/core/internal/config/ConfigModel$influenceParams$2;-><init>(Lcom/onesignal/core/internal/config/ConfigModel;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "influenceParams"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getAnyProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onesignal.core.internal.config.InfluenceConfigModel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onesignal/core/internal/config/InfluenceConfigModel;

    return-object v0
.end method

.method public final getLocationShared()Z
    .locals 2

    .line 66
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$locationShared$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$locationShared$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "locationShared"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getNotificationChannels()Lorg/json/JSONArray;
    .locals 3

    .line 251
    new-instance v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/onesignal/core/internal/config/ConfigModel$notificationChannels$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$notificationChannels$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "notificationChannels"

    invoke-virtual {p0, v2, v1}, Lcom/onesignal/core/internal/config/ConfigModel;->getOptStringProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    :cond_0
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOpRepoDefaultFailRetryBackoff()J
    .locals 2

    .line 187
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$opRepoDefaultFailRetryBackoff$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$opRepoDefaultFailRetryBackoff$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "opRepoDefaultFailRetryBackoff"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOpRepoExecutionInterval()J
    .locals 2

    .line 138
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$opRepoExecutionInterval$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$opRepoExecutionInterval$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "opRepoExecutionInterval"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOpRepoPostCreateDelay()J
    .locals 2

    .line 162
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$opRepoPostCreateDelay$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$opRepoPostCreateDelay$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "opRepoPostCreateDelay"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOpRepoPostCreateRetryUpTo()J
    .locals 2

    .line 175
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$opRepoPostCreateRetryUpTo$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$opRepoPostCreateRetryUpTo$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "opRepoPostCreateRetryUpTo"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOpRepoPostWakeDelay()J
    .locals 2

    .line 149
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$opRepoPostWakeDelay$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$opRepoPostWakeDelay$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "opRepoPostWakeDelay"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPushSubscriptionId()Ljava/lang/String;
    .locals 4

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "pushSubscriptionId"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onesignal/common/modeling/Model;->getOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getReceiveReceiptEnabled()Z
    .locals 2

    .line 278
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$receiveReceiptEnabled$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$receiveReceiptEnabled$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "receiveReceiptEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getRestoreTTLFilter()Z
    .locals 2

    .line 269
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$restoreTTLFilter$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$restoreTTLFilter$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "restoreTTLFilter"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getSessionFocusTimeout()J
    .locals 2

    .line 128
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$sessionFocusTimeout$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$sessionFocusTimeout$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "sessionFocusTimeout"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getLongProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUnsubscribeWhenNotificationsDisabled()Z
    .locals 2

    .line 91
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$unsubscribeWhenNotificationsDisabled$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$unsubscribeWhenNotificationsDisabled$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "unsubscribeWhenNotificationsDisabled"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getUseIdentityVerification()Z
    .locals 2

    .line 242
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$useIdentityVerification$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$useIdentityVerification$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "useIdentityVerification"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final getUserRejectedGMSUpdate()Z
    .locals 2

    .line 82
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$userRejectedGMSUpdate$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$userRejectedGMSUpdate$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "userRejectedGMSUpdate"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final isInitializedWithRemote()Z
    .locals 2

    .line 12
    sget-object v0, Lcom/onesignal/core/internal/config/ConfigModel$isInitializedWithRemote$2;->INSTANCE:Lcom/onesignal/core/internal/config/ConfigModel$isInitializedWithRemote$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-string v1, "isInitializedWithRemote"

    invoke-virtual {p0, v1, v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getBooleanProperty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final setApiUrl(Ljava/lang/String;)V
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v1, p0

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    const-string v2, "apiUrl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/onesignal/common/modeling/Model;->setStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v1, p0

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    const-string v2, "appId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/onesignal/common/modeling/Model;->setStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setBackgroundFetchNotificationPermissionInterval(J)V
    .locals 8

    .line 217
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "backgroundFetchNotificationPermissionInterval"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setClearGroupOnSummaryClick(Z)V
    .locals 7

    .line 289
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "clearGroupOnSummaryClick"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setConsentGiven(Ljava/lang/Boolean;)V
    .locals 7

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "consentGiven"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setConsentRequired(Ljava/lang/Boolean;)V
    .locals 7

    .line 50
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "consentRequired"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setDisableGMSMissingPrompt(Z)V
    .locals 7

    .line 75
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "disableGMSMissingPrompt"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setEnterprise(Z)V
    .locals 7

    .line 235
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "enterprise"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setFetchIAMMinInterval(J)V
    .locals 8

    .line 198
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "fetchIAMMinInterval"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setFirebaseAnalytics(Z)V
    .locals 7

    .line 262
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "firebaseAnalytics"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setForegroundFetchNotificationPermissionInterval(J)V
    .locals 8

    .line 207
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "foregroundFetchNotificationPermissionInterval"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setGoogleProjectNumber(Ljava/lang/String;)V
    .locals 7

    .line 226
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "googleProjectNumber"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setHttpGetTimeout(I)V
    .locals 7

    .line 111
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "httpGetTimeout"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setIntProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setHttpRetryAfterParseFailFallback(I)V
    .locals 7

    .line 121
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "httpRetryAfterParseFailFallback"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setIntProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setHttpTimeout(I)V
    .locals 7

    .line 102
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "httpTimeout"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setIntProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setInitializedWithRemote(Z)V
    .locals 7

    .line 14
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "isInitializedWithRemote"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setLocationShared(Z)V
    .locals 7

    .line 67
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "locationShared"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setNotificationChannels(Lorg/json/JSONArray;)V
    .locals 7

    .line 253
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "notificationChannels"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setOpRepoDefaultFailRetryBackoff(J)V
    .locals 8

    .line 189
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "opRepoDefaultFailRetryBackoff"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setOpRepoExecutionInterval(J)V
    .locals 8

    .line 140
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "opRepoExecutionInterval"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setOpRepoPostCreateDelay(J)V
    .locals 8

    .line 164
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "opRepoPostCreateDelay"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setOpRepoPostCreateRetryUpTo(J)V
    .locals 8

    .line 177
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "opRepoPostCreateRetryUpTo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setOpRepoPostWakeDelay(J)V
    .locals 8

    .line 151
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "opRepoPostWakeDelay"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setPushSubscriptionId(Ljava/lang/String;)V
    .locals 7

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "pushSubscriptionId"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setOptStringProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setReceiveReceiptEnabled(Z)V
    .locals 7

    .line 280
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "receiveReceiptEnabled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setRestoreTTLFilter(Z)V
    .locals 7

    .line 271
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "restoreTTLFilter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setSessionFocusTimeout(J)V
    .locals 8

    .line 130
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "sessionFocusTimeout"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/onesignal/common/modeling/Model;->setLongProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;JLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setUnsubscribeWhenNotificationsDisabled(Z)V
    .locals 7

    .line 93
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "unsubscribeWhenNotificationsDisabled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setUseIdentityVerification(Z)V
    .locals 7

    .line 244
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "useIdentityVerification"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final setUserRejectedGMSUpdate(Z)V
    .locals 7

    .line 84
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/Model;

    const-string v1, "userRejectedGMSUpdate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
