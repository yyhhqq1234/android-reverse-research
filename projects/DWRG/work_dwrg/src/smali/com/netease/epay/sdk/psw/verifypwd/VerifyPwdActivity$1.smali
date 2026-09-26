.class Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "VerifyPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->b()Lcom/netease/epay/sdk/controller/ControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 1
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 45
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->c()V

    .line 48
    :cond_0
    return-void
.end method
