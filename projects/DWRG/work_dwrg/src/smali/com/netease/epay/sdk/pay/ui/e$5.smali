.class Lcom/netease/epay/sdk/pay/ui/e$5;
.super Lcom/netease/epay/sdk/NetCallback;
.source "FingerprintAuthenticationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/e;
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
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/e;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/e$5;->a:Lcom/netease/epay/sdk/pay/ui/e;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 3
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    const/4 v2, 0x1

    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e$5;->a:Lcom/netease/epay/sdk/pay/ui/e;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e$5;->a:Lcom/netease/epay/sdk/pay/ui/e;

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/pay/ui/e;->a(Lcom/netease/epay/sdk/pay/ui/e;Z)V

    .line 120
    return v2
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e$5;->a:Lcom/netease/epay/sdk/pay/ui/e;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u6307\u7eb9\u652f\u4ed8\u5df2\u5f00\u542f"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e$5;->a:Lcom/netease/epay/sdk/pay/ui/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/e;->a(Lcom/netease/epay/sdk/pay/ui/e;Z)V

    .line 114
    return-void
.end method
