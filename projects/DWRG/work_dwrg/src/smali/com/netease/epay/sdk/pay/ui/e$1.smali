.class final Lcom/netease/epay/sdk/pay/ui/e$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "FingerprintAuthenticationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/e;->a(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lcom/netease/epay/sdk/base/ui/SdkActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/e$1;->a:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/GetPublicKey;)V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/e;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/e;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "key"

    iget-object v3, p2, Lcom/netease/epay/sdk/base/model/GetPublicKey;->publicKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/e;->setArguments(Landroid/os/Bundle;)V

    .line 44
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/e$1;->a:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 45
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e$1;->a:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/netease/epay/sdk/base/model/GetPublicKey;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/e$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/GetPublicKey;)V

    return-void
.end method
