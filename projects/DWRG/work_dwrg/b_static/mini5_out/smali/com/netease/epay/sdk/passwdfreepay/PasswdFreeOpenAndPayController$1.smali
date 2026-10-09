.class Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "PasswdFreeOpenAndPayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$1;->this$0:Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroidx/fragment/app/FragmentActivity;

    const-string v3, "000000"

    invoke-direct {v0, v3, v1, v2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 6
    iget-object p1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    iput-object p1, v0, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$1;->this$0:Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 14
    iget-object p1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    iput-object p1, v0, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$1;->this$0:Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    :goto_0
    return-void
.end method
