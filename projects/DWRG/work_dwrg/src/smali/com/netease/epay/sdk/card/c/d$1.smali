.class Lcom/netease/epay/sdk/card/c/d$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ForgetPwdHasCards3SmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/SignCardData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/c/d;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/d;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/d$1;->a:Lcom/netease/epay/sdk/card/c/d;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SignCardData;)V
    .locals 3

    .prologue
    .line 67
    new-instance v1, Lcom/netease/epay/sdk/card/b/a;

    const-string v0, "000000"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/netease/epay/sdk/card/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/netease/epay/sdk/card/b/a;->c:Z

    .line 69
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d$1;->a:Lcom/netease/epay/sdk/card/c/d;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/d;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/epay/sdk/card/b/a;->a:Ljava/lang/String;

    .line 70
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Lcom/netease/epay/sdk/card/b/a;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onResponseArrived()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d$1;->a:Lcom/netease/epay/sdk/card/c/d;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/d;->l:Lcom/netease/epay/sdk/card/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/c;->a()V

    .line 63
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p2, Lcom/netease/epay/sdk/base/model/SignCardData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/c/d$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SignCardData;)V

    return-void
.end method
