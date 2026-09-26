.class Lcom/netease/epay/sdk/pay/c/a$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "EpayPayActvPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/c/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/GetPublicKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/c/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/c/a;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/a$1;->a:Lcom/netease/epay/sdk/pay/c/a;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/GetPublicKey;)V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/GetPublicKey;->publicKey:Ljava/lang/String;

    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netease/epay/sdk/pay/ui/k;->a(Ljava/lang/String;Z)Lcom/netease/epay/sdk/pay/ui/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/a$1;->a:Lcom/netease/epay/sdk/pay/c/a;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/c/a;->a(Lcom/netease/epay/sdk/pay/c/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 50
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/o;->c()Lcom/netease/epay/sdk/pay/ui/o;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/a$1;->a:Lcom/netease/epay/sdk/pay/c/a;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/c/a;->a(Lcom/netease/epay/sdk/pay/c/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Lcom/netease/epay/sdk/base/model/GetPublicKey;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/c/a$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/GetPublicKey;)V

    return-void
.end method
