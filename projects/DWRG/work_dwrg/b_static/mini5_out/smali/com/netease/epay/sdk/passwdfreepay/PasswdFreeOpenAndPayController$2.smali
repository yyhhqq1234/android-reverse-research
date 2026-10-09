.class Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$2;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "PasswdFreeOpenAndPayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->toPasswdFreePay(Landroid/content/Context;Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;

.field final synthetic val$controller:Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$2;->this$0:Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;

    iput-object p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$2;->val$controller:Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    const-string v0, "000000"

    goto :goto_0

    :cond_0
    const-string v0, "FC22A2"

    .line 2
    :goto_0
    iput-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 6
    iget-object p1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    iput-object p1, v0, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$2;->val$controller:Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    return-void
.end method
