.class public final Lcom/onesignal/notifications/receivers/ADMMessageReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "ADMMessageReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/notifications/receivers/ADMMessageReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/onesignal/notifications/receivers/ADMMessageReceiver;",
        "Lcom/amazon/device/messaging/ADMMessageReceiver;",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/onesignal/notifications/receivers/ADMMessageReceiver$Companion;

.field private static final JOB_ID:I = 0x1e3f3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/notifications/receivers/ADMMessageReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/notifications/receivers/ADMMessageReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/notifications/receivers/ADMMessageReceiver;->Companion:Lcom/onesignal/notifications/receivers/ADMMessageReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 9
    const-class v0, Lcom/onesignal/notifications/services/ADMMessageHandler;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADMMessageHandlerJobBase"

    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 19
    const-class v1, Lcom/onesignal/notifications/services/ADMMessageHandlerJob;

    const v2, 0x1e3f3

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/notifications/receivers/ADMMessageReceiver;->registerJobServiceClass(Ljava/lang/Class;I)V

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADM latest available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
