.class Lcom/netease/epay/sdk/psw/ResetPwdController$1$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "ResetPwdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/ResetPwdController$1;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/ResetPwdController$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/ResetPwdController$1;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/ResetPwdController$1$1;->a:Lcom/netease/epay/sdk/psw/ResetPwdController$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "result"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 65
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 66
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/ResetPwdController$1$1;->a:Lcom/netease/epay/sdk/psw/ResetPwdController$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/psw/ResetPwdController$1;->a:Lcom/netease/epay/sdk/psw/ResetPwdController;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/psw/ResetPwdController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 67
    return-void
.end method
