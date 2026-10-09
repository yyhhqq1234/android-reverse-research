.class public final Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;
.super Ljava/lang/Object;
.source "INotificationLimitManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;",
        "",
        "()V",
        "maxNumberOfNotifications",
        "",
        "getMaxNumberOfNotifications",
        "()I",
        "com.onesignal.notifications"
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
.field public static final INSTANCE:Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;

.field private static final maxNumberOfNotifications:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;

    invoke-direct {v0}, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;-><init>()V

    sput-object v0, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;->INSTANCE:Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;

    const/16 v0, 0x31

    .line 28
    sput v0, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;->maxNumberOfNotifications:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxNumberOfNotifications()I
    .locals 1

    .line 28
    sget v0, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;->maxNumberOfNotifications:I

    return v0
.end method
