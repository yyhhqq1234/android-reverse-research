.class Lcom/netease/epay/sdk/pay/ui/k$4;
.super Lcom/netease/epay/sdk/NetCallback;
.source "PayFingerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/k;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/k;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/k$4;->a:Lcom/netease/epay/sdk/pay/ui/k;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "resp"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k$4;->a:Lcom/netease/epay/sdk/pay/ui/k;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k$4;->a:Lcom/netease/epay/sdk/pay/ui/k;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/k;->b(Lcom/netease/epay/sdk/pay/ui/k;)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 163
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/p;->c()Lcom/netease/epay/sdk/pay/ui/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/k$4;->a:Lcom/netease/epay/sdk/pay/ui/k;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 164
    return-void
.end method
