.class public final enum Lcom/onesignal/core/internal/application/AppEntryAction;
.super Ljava/lang/Enum;
.source "AppEntryAction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/core/internal/application/AppEntryAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/core/internal/application/AppEntryAction;",
        "",
        "(Ljava/lang/String;I)V",
        "isAppClose",
        "",
        "()Z",
        "isAppOpen",
        "isNotificationClick",
        "NOTIFICATION_CLICK",
        "APP_OPEN",
        "APP_CLOSE",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/core/internal/application/AppEntryAction;

.field public static final enum APP_CLOSE:Lcom/onesignal/core/internal/application/AppEntryAction;

.field public static final enum APP_OPEN:Lcom/onesignal/core/internal/application/AppEntryAction;

.field public static final enum NOTIFICATION_CLICK:Lcom/onesignal/core/internal/application/AppEntryAction;


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/core/internal/application/AppEntryAction;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/onesignal/core/internal/application/AppEntryAction;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/core/internal/application/AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/core/internal/application/AppEntryAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/core/internal/application/AppEntryAction;->APP_OPEN:Lcom/onesignal/core/internal/application/AppEntryAction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/core/internal/application/AppEntryAction;->APP_CLOSE:Lcom/onesignal/core/internal/application/AppEntryAction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/onesignal/core/internal/application/AppEntryAction;

    const-string v1, "NOTIFICATION_CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/application/AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/core/internal/application/AppEntryAction;

    .line 15
    new-instance v0, Lcom/onesignal/core/internal/application/AppEntryAction;

    const-string v1, "APP_OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/application/AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->APP_OPEN:Lcom/onesignal/core/internal/application/AppEntryAction;

    .line 20
    new-instance v0, Lcom/onesignal/core/internal/application/AppEntryAction;

    const-string v1, "APP_CLOSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/application/AppEntryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->APP_CLOSE:Lcom/onesignal/core/internal/application/AppEntryAction;

    invoke-static {}, Lcom/onesignal/core/internal/application/AppEntryAction;->$values()[Lcom/onesignal/core/internal/application/AppEntryAction;

    move-result-object v0

    sput-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->$VALUES:[Lcom/onesignal/core/internal/application/AppEntryAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/core/internal/application/AppEntryAction;
    .locals 1

    const-class v0, Lcom/onesignal/core/internal/application/AppEntryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/core/internal/application/AppEntryAction;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/core/internal/application/AppEntryAction;
    .locals 1

    sget-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->$VALUES:[Lcom/onesignal/core/internal/application/AppEntryAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/core/internal/application/AppEntryAction;

    return-object v0
.end method


# virtual methods
.method public final isAppClose()Z
    .locals 1

    .line 29
    sget-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->APP_CLOSE:Lcom/onesignal/core/internal/application/AppEntryAction;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAppOpen()Z
    .locals 1

    .line 27
    sget-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->APP_OPEN:Lcom/onesignal/core/internal/application/AppEntryAction;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNotificationClick()Z
    .locals 1

    .line 25
    sget-object v0, Lcom/onesignal/core/internal/application/AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/core/internal/application/AppEntryAction;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
