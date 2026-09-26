.class Lcom/netease/epay/sdk/psw/verifypwd/e$1;
.super Ljava/lang/Object;
.source "VerifyPwdBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/verifypwd/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/verifypwd/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/verifypwd/e$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/e$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/e;->dismissAllowingStateLoss()V

    .line 35
    const-string v0, "verifyPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/VerifyPwdController;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    new-instance v2, Lcom/netease/epay/sdk/psw/verifypwd/f;

    sget-object v3, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/verifypwd/e$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/psw/verifypwd/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    invoke-direct {v2, v3, v1}, Lcom/netease/epay/sdk/psw/verifypwd/f;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/psw/VerifyPwdController;->a(Lcom/netease/epay/sdk/psw/verifypwd/f;)V

    .line 39
    :cond_0
    return-void
.end method
