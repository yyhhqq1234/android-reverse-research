.class final Lcom/netease/epay/sdk/base/network/HttpClient$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/network/HttpClient;->realStartRequest(Lcom/netease/epay/sdk/base/network/EpayNetRequest;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

.field final synthetic val$netRequest:Lcom/netease/epay/sdk/base/network/EpayNetRequest;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;Lcom/netease/epay/sdk/base/network/EpayNetRequest;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    iput-object p3, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$netRequest:Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/network/HttpClient;->access$000(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;

    invoke-direct {v0, p0, p2}, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;-><init>(Lcom/netease/epay/sdk/base/network/HttpClient$1;Ljava/io/IOException;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/network/HttpClient;->access$000(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-static {p2, v0}, Lcom/netease/epay/sdk/base/network/HttpClient;->gsonConvert(Lokhttp3/Response;Lcom/netease/epay/sdk/base/network/INetCallback;)Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    move-result-object v0

    move-object v1, v0

    .line 106
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->reqParams:Lorg/json/JSONObject;

    .line 107
    new-instance v2, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;-><init>(Lcom/netease/epay/sdk/base/network/HttpClient$1;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lorg/json/JSONObject;)V

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    const-string v1, "-102"

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1
.end method
