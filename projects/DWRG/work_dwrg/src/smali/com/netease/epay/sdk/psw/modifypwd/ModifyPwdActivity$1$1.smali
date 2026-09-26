.class Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "ModifyPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;->success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1$1;->b:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;

    iput-object p2, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "result"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 56
    const-string v0, "modifyPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/ModifyPwdController;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/ModifyPwdController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 60
    :cond_0
    return-void
.end method
