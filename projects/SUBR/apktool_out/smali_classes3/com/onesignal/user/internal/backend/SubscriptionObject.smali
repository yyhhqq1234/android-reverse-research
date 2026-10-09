.class public final Lcom/onesignal/user/internal/backend/SubscriptionObject;
.super Ljava/lang/Object;
.source "SubscriptionObject.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001b\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0012R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u001c\u0010\u001dR\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u001dR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008 \u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onesignal/user/internal/backend/SubscriptionObject;",
        "",
        "id",
        "",
        "type",
        "Lcom/onesignal/user/internal/backend/SubscriptionObjectType;",
        "token",
        "enabled",
        "",
        "notificationTypes",
        "",
        "sdk",
        "deviceModel",
        "deviceOS",
        "rooted",
        "netType",
        "carrier",
        "appVersion",
        "(Ljava/lang/String;Lcom/onesignal/user/internal/backend/SubscriptionObjectType;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V",
        "getAppVersion",
        "()Ljava/lang/String;",
        "getCarrier",
        "getDeviceModel",
        "getDeviceOS",
        "getEnabled",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getId",
        "getNetType",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getNotificationTypes",
        "getRooted",
        "getSdk",
        "getToken",
        "getType",
        "()Lcom/onesignal/user/internal/backend/SubscriptionObjectType;",
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
.field private final appVersion:Ljava/lang/String;

.field private final carrier:Ljava/lang/String;

.field private final deviceModel:Ljava/lang/String;

.field private final deviceOS:Ljava/lang/String;

.field private final enabled:Ljava/lang/Boolean;

.field private final id:Ljava/lang/String;

.field private final netType:Ljava/lang/Integer;

.field private final notificationTypes:Ljava/lang/Integer;

.field private final rooted:Ljava/lang/Boolean;

.field private final sdk:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private final type:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;


# direct methods
.method public constructor <init>()V
    .locals 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfff

    const/4 v14, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/onesignal/user/internal/backend/SubscriptionObject;-><init>(Ljava/lang/String;Lcom/onesignal/user/internal/backend/SubscriptionObjectType;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/user/internal/backend/SubscriptionObjectType;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->id:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->type:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    .line 6
    iput-object p3, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->token:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->enabled:Ljava/lang/Boolean;

    .line 8
    iput-object p5, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->notificationTypes:Ljava/lang/Integer;

    .line 9
    iput-object p6, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->sdk:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->deviceModel:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->deviceOS:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->rooted:Ljava/lang/Boolean;

    .line 13
    iput-object p10, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->netType:Ljava/lang/Integer;

    .line 14
    iput-object p11, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->carrier:Ljava/lang/String;

    .line 15
    iput-object p12, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onesignal/user/internal/backend/SubscriptionObjectType;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v2, p12

    :goto_b
    move-object p1, p0

    move-object p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v2

    .line 3
    invoke-direct/range {p1 .. p13}, Lcom/onesignal/user/internal/backend/SubscriptionObject;-><init>(Ljava/lang/String;Lcom/onesignal/user/internal/backend/SubscriptionObjectType;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceOS()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->deviceOS:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetType()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->netType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNotificationTypes()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->notificationTypes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRooted()Ljava/lang/Boolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->rooted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSdk()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/onesignal/user/internal/backend/SubscriptionObjectType;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/onesignal/user/internal/backend/SubscriptionObject;->type:Lcom/onesignal/user/internal/backend/SubscriptionObjectType;

    return-object v0
.end method
