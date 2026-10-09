.class public final Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;
.super Lcom/onesignal/core/internal/application/ActivityLifecycleHandlerBase;
.source "ApplicationService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/core/internal/application/impl/ApplicationService;->decorViewReady$lambda-1(Lcom/onesignal/core/internal/application/impl/ApplicationService;Ljava/lang/Runnable;Lcom/onesignal/core/internal/application/impl/ApplicationService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1",
        "Lcom/onesignal/core/internal/application/ActivityLifecycleHandlerBase;",
        "onActivityAvailable",
        "",
        "currentActivity",
        "Landroid/app/Activity;",
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
.field final synthetic $runnable:Ljava/lang/Runnable;

.field final synthetic $self:Lcom/onesignal/core/internal/application/impl/ApplicationService;

.field final synthetic this$0:Lcom/onesignal/core/internal/application/impl/ApplicationService;


# direct methods
.method constructor <init>(Lcom/onesignal/core/internal/application/impl/ApplicationService;Ljava/lang/Runnable;Lcom/onesignal/core/internal/application/impl/ApplicationService;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;->$self:Lcom/onesignal/core/internal/application/impl/ApplicationService;

    iput-object p2, p0, Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;->$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;->this$0:Lcom/onesignal/core/internal/application/impl/ApplicationService;

    .line 324
    invoke-direct {p0}, Lcom/onesignal/core/internal/application/ActivityLifecycleHandlerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAvailable(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;->$self:Lcom/onesignal/core/internal/application/impl/ApplicationService;

    move-object v1, p0

    check-cast v1, Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;

    invoke-virtual {v0, v1}, Lcom/onesignal/core/internal/application/impl/ApplicationService;->removeActivityLifecycleHandler(Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;)V

    .line 327
    sget-object v0, Lcom/onesignal/common/AndroidUtils;->INSTANCE:Lcom/onesignal/common/AndroidUtils;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/AndroidUtils;->isActivityFullyReady(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object p1, p0, Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;->$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;->this$0:Lcom/onesignal/core/internal/application/impl/ApplicationService;

    iget-object v1, p0, Lcom/onesignal/core/internal/application/impl/ApplicationService$decorViewReady$1$1;->$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/onesignal/core/internal/application/impl/ApplicationService;->decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
