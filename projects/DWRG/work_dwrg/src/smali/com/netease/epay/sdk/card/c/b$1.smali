.class Lcom/netease/epay/sdk/card/c/b$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCardFirstPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/IdentityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/c/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/b;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/IdentityData;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/IdentityData;->identityInfo:Lcom/netease/epay/sdk/base/model/IdentityInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/IdentityInfo;->trueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/a;->b(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onResponseArrived()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/a;->b()V

    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$1;->a:Lcom/netease/epay/sdk/card/c/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/c/b;->a()V

    .line 54
    :cond_0
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Lcom/netease/epay/sdk/base/model/IdentityData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/c/b$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/IdentityData;)V

    return-void
.end method
