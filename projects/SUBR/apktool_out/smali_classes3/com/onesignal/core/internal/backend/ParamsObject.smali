.class public final Lcom/onesignal/core/internal/backend/ParamsObject;
.super Ljava/lang/Object;
.source "IParamsBackendService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008.\u0018\u00002\u00020\u0001B\u00b1\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008\u001f\u0010\u0019\"\u0004\u0008 \u0010\u001bR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008%\u0010\u0019\"\u0004\u0008&\u0010\u001bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008/\u0010\u0019\"\u0004\u00080\u0010\u001bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008:\u0010\u0019\"\u0004\u0008;\u0010\u001bR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008<\u0010\u0019\"\u0004\u0008=\u0010\u001bR\u001e\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008>\u0010\u0019\"\u0004\u0008?\u0010\u001bR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008@\u0010\u0019\"\u0004\u0008A\u0010\u001bR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008B\u0010\u0019\"\u0004\u0008C\u0010\u001b\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onesignal/core/internal/backend/ParamsObject;",
        "",
        "googleProjectNumber",
        "",
        "enterprise",
        "",
        "useIdentityVerification",
        "notificationChannels",
        "Lorg/json/JSONArray;",
        "firebaseAnalytics",
        "restoreTTLFilter",
        "clearGroupOnSummaryClick",
        "receiveReceiptEnabled",
        "disableGMSMissingPrompt",
        "unsubscribeWhenNotificationsDisabled",
        "locationShared",
        "requiresUserPrivacyConsent",
        "opRepoExecutionInterval",
        "",
        "influenceParams",
        "Lcom/onesignal/core/internal/backend/InfluenceParamsObject;",
        "fcmParams",
        "Lcom/onesignal/core/internal/backend/FCMParamsObject;",
        "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/json/JSONArray;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/onesignal/core/internal/backend/InfluenceParamsObject;Lcom/onesignal/core/internal/backend/FCMParamsObject;)V",
        "getClearGroupOnSummaryClick",
        "()Ljava/lang/Boolean;",
        "setClearGroupOnSummaryClick",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getDisableGMSMissingPrompt",
        "setDisableGMSMissingPrompt",
        "getEnterprise",
        "setEnterprise",
        "getFcmParams",
        "()Lcom/onesignal/core/internal/backend/FCMParamsObject;",
        "setFcmParams",
        "(Lcom/onesignal/core/internal/backend/FCMParamsObject;)V",
        "getFirebaseAnalytics",
        "setFirebaseAnalytics",
        "getGoogleProjectNumber",
        "()Ljava/lang/String;",
        "setGoogleProjectNumber",
        "(Ljava/lang/String;)V",
        "getInfluenceParams",
        "()Lcom/onesignal/core/internal/backend/InfluenceParamsObject;",
        "setInfluenceParams",
        "(Lcom/onesignal/core/internal/backend/InfluenceParamsObject;)V",
        "getLocationShared",
        "setLocationShared",
        "getNotificationChannels",
        "()Lorg/json/JSONArray;",
        "setNotificationChannels",
        "(Lorg/json/JSONArray;)V",
        "getOpRepoExecutionInterval",
        "()Ljava/lang/Long;",
        "setOpRepoExecutionInterval",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getReceiveReceiptEnabled",
        "setReceiveReceiptEnabled",
        "getRequiresUserPrivacyConsent",
        "setRequiresUserPrivacyConsent",
        "getRestoreTTLFilter",
        "setRestoreTTLFilter",
        "getUnsubscribeWhenNotificationsDisabled",
        "setUnsubscribeWhenNotificationsDisabled",
        "getUseIdentityVerification",
        "setUseIdentityVerification",
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


# instance fields
.field private clearGroupOnSummaryClick:Ljava/lang/Boolean;

.field private disableGMSMissingPrompt:Ljava/lang/Boolean;

.field private enterprise:Ljava/lang/Boolean;

.field private fcmParams:Lcom/onesignal/core/internal/backend/FCMParamsObject;

.field private firebaseAnalytics:Ljava/lang/Boolean;

.field private googleProjectNumber:Ljava/lang/String;

.field private influenceParams:Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

.field private locationShared:Ljava/lang/Boolean;

.field private notificationChannels:Lorg/json/JSONArray;

.field private opRepoExecutionInterval:Ljava/lang/Long;

.field private receiveReceiptEnabled:Ljava/lang/Boolean;

.field private requiresUserPrivacyConsent:Ljava/lang/Boolean;

.field private restoreTTLFilter:Ljava/lang/Boolean;

.field private unsubscribeWhenNotificationsDisabled:Ljava/lang/Boolean;

.field private useIdentityVerification:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/json/JSONArray;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/onesignal/core/internal/backend/InfluenceParamsObject;Lcom/onesignal/core/internal/backend/FCMParamsObject;)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p15

    const-string v3, "influenceParams"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fcmParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    .line 24
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->googleProjectNumber:Ljava/lang/String;

    move-object v3, p2

    .line 25
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->enterprise:Ljava/lang/Boolean;

    move-object v3, p3

    .line 26
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->useIdentityVerification:Ljava/lang/Boolean;

    move-object v3, p4

    .line 27
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->notificationChannels:Lorg/json/JSONArray;

    move-object v3, p5

    .line 28
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->firebaseAnalytics:Ljava/lang/Boolean;

    move-object v3, p6

    .line 29
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->restoreTTLFilter:Ljava/lang/Boolean;

    move-object v3, p7

    .line 30
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->clearGroupOnSummaryClick:Ljava/lang/Boolean;

    move-object v3, p8

    .line 31
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->receiveReceiptEnabled:Ljava/lang/Boolean;

    move-object v3, p9

    .line 32
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->disableGMSMissingPrompt:Ljava/lang/Boolean;

    move-object v3, p10

    .line 33
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->unsubscribeWhenNotificationsDisabled:Ljava/lang/Boolean;

    move-object v3, p11

    .line 34
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->locationShared:Ljava/lang/Boolean;

    move-object/from16 v3, p12

    .line 35
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->requiresUserPrivacyConsent:Ljava/lang/Boolean;

    move-object/from16 v3, p13

    .line 36
    iput-object v3, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->opRepoExecutionInterval:Ljava/lang/Long;

    .line 37
    iput-object v1, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->influenceParams:Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

    .line 38
    iput-object v2, v0, Lcom/onesignal/core/internal/backend/ParamsObject;->fcmParams:Lcom/onesignal/core/internal/backend/FCMParamsObject;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/json/JSONArray;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/onesignal/core/internal/backend/InfluenceParamsObject;Lcom/onesignal/core/internal/backend/FCMParamsObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-object v10, v2

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-object v11, v2

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v12, v2

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object v13, v2

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object v14, v2

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object v15, v2

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move-object/from16 v16, v2

    goto :goto_c

    :cond_c
    move-object/from16 v16, p13

    :goto_c
    move-object/from16 v3, p0

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    .line 23
    invoke-direct/range {v3 .. v18}, Lcom/onesignal/core/internal/backend/ParamsObject;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/json/JSONArray;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/onesignal/core/internal/backend/InfluenceParamsObject;Lcom/onesignal/core/internal/backend/FCMParamsObject;)V

    return-void
.end method


# virtual methods
.method public final getClearGroupOnSummaryClick()Ljava/lang/Boolean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->clearGroupOnSummaryClick:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getDisableGMSMissingPrompt()Ljava/lang/Boolean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->disableGMSMissingPrompt:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnterprise()Ljava/lang/Boolean;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->enterprise:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getFcmParams()Lcom/onesignal/core/internal/backend/FCMParamsObject;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->fcmParams:Lcom/onesignal/core/internal/backend/FCMParamsObject;

    return-object v0
.end method

.method public final getFirebaseAnalytics()Ljava/lang/Boolean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->firebaseAnalytics:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getGoogleProjectNumber()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->googleProjectNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getInfluenceParams()Lcom/onesignal/core/internal/backend/InfluenceParamsObject;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->influenceParams:Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

    return-object v0
.end method

.method public final getLocationShared()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->locationShared:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getNotificationChannels()Lorg/json/JSONArray;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->notificationChannels:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getOpRepoExecutionInterval()Ljava/lang/Long;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->opRepoExecutionInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public final getReceiveReceiptEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->receiveReceiptEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRequiresUserPrivacyConsent()Ljava/lang/Boolean;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->requiresUserPrivacyConsent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRestoreTTLFilter()Ljava/lang/Boolean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->restoreTTLFilter:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUnsubscribeWhenNotificationsDisabled()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->unsubscribeWhenNotificationsDisabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUseIdentityVerification()Ljava/lang/Boolean;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->useIdentityVerification:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setClearGroupOnSummaryClick(Ljava/lang/Boolean;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->clearGroupOnSummaryClick:Ljava/lang/Boolean;

    return-void
.end method

.method public final setDisableGMSMissingPrompt(Ljava/lang/Boolean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->disableGMSMissingPrompt:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnterprise(Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->enterprise:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFcmParams(Lcom/onesignal/core/internal/backend/FCMParamsObject;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->fcmParams:Lcom/onesignal/core/internal/backend/FCMParamsObject;

    return-void
.end method

.method public final setFirebaseAnalytics(Ljava/lang/Boolean;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->firebaseAnalytics:Ljava/lang/Boolean;

    return-void
.end method

.method public final setGoogleProjectNumber(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->googleProjectNumber:Ljava/lang/String;

    return-void
.end method

.method public final setInfluenceParams(Lcom/onesignal/core/internal/backend/InfluenceParamsObject;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->influenceParams:Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

    return-void
.end method

.method public final setLocationShared(Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->locationShared:Ljava/lang/Boolean;

    return-void
.end method

.method public final setNotificationChannels(Lorg/json/JSONArray;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->notificationChannels:Lorg/json/JSONArray;

    return-void
.end method

.method public final setOpRepoExecutionInterval(Ljava/lang/Long;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->opRepoExecutionInterval:Ljava/lang/Long;

    return-void
.end method

.method public final setReceiveReceiptEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->receiveReceiptEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRequiresUserPrivacyConsent(Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->requiresUserPrivacyConsent:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRestoreTTLFilter(Ljava/lang/Boolean;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->restoreTTLFilter:Ljava/lang/Boolean;

    return-void
.end method

.method public final setUnsubscribeWhenNotificationsDisabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->unsubscribeWhenNotificationsDisabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setUseIdentityVerification(Ljava/lang/Boolean;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/ParamsObject;->useIdentityVerification:Ljava/lang/Boolean;

    return-void
.end method
