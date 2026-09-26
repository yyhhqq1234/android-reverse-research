.class public abstract Lcom/netease/epay/sdk/NetCallback;
.super Ljava/lang/Object;
.source "NetCallback.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/network/INetCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netease/epay/sdk/base/network/INetCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaterDeal(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 39
    .local p0, "this":Lcom/netease/epay/sdk/NetCallback;, "Lcom/netease/epay/sdk/NetCallback<TT;>;"
    return-void
.end method

.method public onResponseArrived()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onRiskBlock(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 30
    .local p0, "this":Lcom/netease/epay/sdk/NetCallback;, "Lcom/netease/epay/sdk/NetCallback<TT;>;"
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 35
    .local p0, "this":Lcom/netease/epay/sdk/NetCallback;, "Lcom/netease/epay/sdk/NetCallback<TT;>;"
    return-void
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 20
    .local p0, "this":Lcom/netease/epay/sdk/NetCallback;, "Lcom/netease/epay/sdk/NetCallback<TT;>;"
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 1
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 25
    .local p0, "this":Lcom/netease/epay/sdk/NetCallback;, "Lcom/netease/epay/sdk/NetCallback<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
