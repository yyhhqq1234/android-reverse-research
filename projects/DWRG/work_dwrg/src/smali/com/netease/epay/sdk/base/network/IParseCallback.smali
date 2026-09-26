.class public interface abstract Lcom/netease/epay/sdk/base/network/IParseCallback;
.super Ljava/lang/Object;
.source "IParseCallback.java"


# virtual methods
.method public abstract parse(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Z",
            "Lcom/netease/epay/sdk/base/network/NewBaseResponse",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract parseFailure(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
