.class public final Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;
.super Ljava/lang/Object;
.source "RequestPermissionService.kt"

# interfaces
.implements Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->startPrompt(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1",
        "Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;",
        "onActivityAvailable",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onActivityStopped",
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
.field final synthetic $androidPermissionString:Ljava/lang/String;

.field final synthetic $callbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $permissionRequestType:Ljava/lang/String;

.field final synthetic this$0:Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;


# direct methods
.method constructor <init>(Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->this$0:Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;

    iput-object p2, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->$permissionRequestType:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->$androidPermissionString:Ljava/lang/String;

    iput-object p4, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->$callbackClass:Ljava/lang/Class;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAvailable(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/onesignal/core/activities/PermissionsActivity;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->this$0:Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;

    invoke-static {p1}, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;->access$get_application$p(Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService;)Lcom/onesignal/core/internal/application/IApplicationService;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;

    invoke-interface {p1, v0}, Lcom/onesignal/core/internal/application/IApplicationService;->removeActivityLifecycleHandler(Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;)V

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/onesignal/core/activities/PermissionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "INTENT_EXTRA_PERMISSION_TYPE"

    .line 55
    iget-object v2, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->$permissionRequestType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "INTENT_EXTRA_ANDROID_PERMISSION_STRING"

    .line 56
    iget-object v3, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->$androidPermissionString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/onesignal/core/internal/permissions/impl/RequestPermissionService$startPrompt$1;->$callbackClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTENT_EXTRA_CALLBACK_CLASS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    sget v0, Lcom/onesignal/core/R$anim;->onesignal_fade_in:I

    .line 61
    sget v1, Lcom/onesignal/core/R$anim;->onesignal_fade_out:I

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
