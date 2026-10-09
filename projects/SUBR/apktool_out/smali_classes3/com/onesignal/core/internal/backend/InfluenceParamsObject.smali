.class public final Lcom/onesignal/core/internal/backend/InfluenceParamsObject;
.super Ljava/lang/Object;
.source "IParamsBackendService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001BY\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000bR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000f\u0010\rR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u0010\u0010\rR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0007\u0010\u0011R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\t\u0010\u0011R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\n\u0010\u0011R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onesignal/core/internal/backend/InfluenceParamsObject;",
        "",
        "indirectNotificationAttributionWindow",
        "",
        "notificationLimit",
        "indirectIAMAttributionWindow",
        "iamLimit",
        "isDirectEnabled",
        "",
        "isIndirectEnabled",
        "isUnattributedEnabled",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "getIamLimit",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getIndirectIAMAttributionWindow",
        "getIndirectNotificationAttributionWindow",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getNotificationLimit",
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
.field private final iamLimit:Ljava/lang/Integer;

.field private final indirectIAMAttributionWindow:Ljava/lang/Integer;

.field private final indirectNotificationAttributionWindow:Ljava/lang/Integer;

.field private final isDirectEnabled:Ljava/lang/Boolean;

.field private final isIndirectEnabled:Ljava/lang/Boolean;

.field private final isUnattributedEnabled:Ljava/lang/Boolean;

.field private final notificationLimit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->indirectNotificationAttributionWindow:Ljava/lang/Integer;

    .line 43
    iput-object p2, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->notificationLimit:Ljava/lang/Integer;

    .line 44
    iput-object p3, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->indirectIAMAttributionWindow:Ljava/lang/Integer;

    .line 45
    iput-object p4, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->iamLimit:Ljava/lang/Integer;

    .line 46
    iput-object p5, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->isDirectEnabled:Ljava/lang/Boolean;

    .line 47
    iput-object p6, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->isIndirectEnabled:Ljava/lang/Boolean;

    .line 48
    iput-object p7, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->isUnattributedEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, p6

    :goto_5
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    move-object p8, v0

    goto :goto_6

    :cond_6
    move-object p8, p7

    :goto_6
    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    .line 41
    invoke-direct/range {p1 .. p8}, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getIamLimit()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->iamLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndirectIAMAttributionWindow()Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->indirectIAMAttributionWindow:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIndirectNotificationAttributionWindow()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->indirectNotificationAttributionWindow:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNotificationLimit()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->notificationLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final isDirectEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->isDirectEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isIndirectEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->isIndirectEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isUnattributedEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;->isUnattributedEnabled:Ljava/lang/Boolean;

    return-object v0
.end method
