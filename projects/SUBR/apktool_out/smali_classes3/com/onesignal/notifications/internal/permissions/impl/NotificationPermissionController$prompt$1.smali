.class final Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NotificationPermissionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->prompt(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController"
    f = "NotificationPermissionController.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x90,
        0xa5
    }
    m = "prompt"
    n = {
        "this",
        "fallbackToSettings"
    }
    s = {
        "L$0",
        "Z$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;


# direct methods
.method constructor <init>(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->this$0:Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    iget-object p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->this$0:Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->prompt(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
