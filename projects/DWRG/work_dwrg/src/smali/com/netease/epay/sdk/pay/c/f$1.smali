.class Lcom/netease/epay/sdk/pay/c/f$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "GetRedPapersPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/c/f;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/c/f;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    iget-object v1, p2, Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;->activeUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/c/f;->a(Lcom/netease/epay/sdk/pay/c/f;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/c/f;->a(Lcom/netease/epay/sdk/pay/c/f;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-boolean v0, p2, Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;->hasPromotion:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    iget-object v2, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-static {v2}, Lcom/netease/epay/sdk/pay/c/f;->b(Lcom/netease/epay/sdk/pay/c/f;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 57
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/c/f;->c(Lcom/netease/epay/sdk/pay/c/f;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-static {v2}, Lcom/netease/epay/sdk/pay/c/f;->d(Lcom/netease/epay/sdk/pay/c/f;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    iget-object v3, v3, Lcom/netease/epay/sdk/pay/c/f;->b:Ljava/lang/Runnable;

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 1
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f$1;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/c/f;->e(Lcom/netease/epay/sdk/pay/c/f;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/c/f$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;)V

    return-void
.end method
