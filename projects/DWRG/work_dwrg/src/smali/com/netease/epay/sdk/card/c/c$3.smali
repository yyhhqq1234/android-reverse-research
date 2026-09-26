.class Lcom/netease/epay/sdk/card/c/c$3;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCardMustSetPwdPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
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
.field final synthetic a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Lcom/netease/epay/sdk/card/c/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/c;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/c$3;->c:Lcom/netease/epay/sdk/card/c/c;

    iput-object p2, p0, Lcom/netease/epay/sdk/card/c/c$3;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iput-object p3, p0, Lcom/netease/epay/sdk/card/c/c$3;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 3
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$3;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$3;->c:Lcom/netease/epay/sdk/card/c/c;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/c$3;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/c$3;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-static {v0, v1, v2, p1}, Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/c/c;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$3;->c:Lcom/netease/epay/sdk/card/c/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/c/c;->a()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 6
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$3;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$3;->c:Lcom/netease/epay/sdk/card/c/c;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/c$3;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/c$3;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    new-instance v3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    const-string v4, "000000"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/c/c;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c$3;->c:Lcom/netease/epay/sdk/card/c/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/c/c;->a()V

    .line 93
    return-void
.end method
