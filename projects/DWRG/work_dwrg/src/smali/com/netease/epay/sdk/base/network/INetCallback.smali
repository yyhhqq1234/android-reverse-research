.class public interface abstract Lcom/netease/epay/sdk/base/network/INetCallback;
.super Ljava/lang/Object;
.source "INetCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLaterDeal(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
.end method

.method public abstract onResponseArrived()V
.end method

.method public abstract onRiskBlock(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
.end method

.method public abstract onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
.end method

.method public abstract onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
.end method

.method public abstract parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
.end method

.method public abstract success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "TT;)V"
        }
    .end annotation
.end method
