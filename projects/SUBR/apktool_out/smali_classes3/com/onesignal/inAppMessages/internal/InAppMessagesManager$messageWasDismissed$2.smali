.class final Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$messageWasDismissed$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppMessagesManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;->messageWasDismissed(Lcom/onesignal/inAppMessages/internal/InAppMessage;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $message:Lcom/onesignal/inAppMessages/internal/InAppMessage;


# direct methods
.method constructor <init>(Lcom/onesignal/inAppMessages/internal/InAppMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$messageWasDismissed$2;->$message:Lcom/onesignal/inAppMessages/internal/InAppMessage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 467
    check-cast p1, Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;

    invoke-virtual {p0, p1}, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$messageWasDismissed$2;->invoke(Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    new-instance v0, Lcom/onesignal/inAppMessages/internal/InAppMessageLifecycleEvent;

    iget-object v1, p0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager$messageWasDismissed$2;->$message:Lcom/onesignal/inAppMessages/internal/InAppMessage;

    check-cast v1, Lcom/onesignal/inAppMessages/IInAppMessage;

    invoke-direct {v0, v1}, Lcom/onesignal/inAppMessages/internal/InAppMessageLifecycleEvent;-><init>(Lcom/onesignal/inAppMessages/IInAppMessage;)V

    check-cast v0, Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;

    invoke-interface {p1, v0}, Lcom/onesignal/inAppMessages/IInAppMessageLifecycleListener;->onDidDismiss(Lcom/onesignal/inAppMessages/IInAppMessageDidDismissEvent;)V

    return-void
.end method
