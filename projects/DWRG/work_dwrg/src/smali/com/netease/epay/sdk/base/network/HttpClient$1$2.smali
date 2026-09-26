.class Lcom/netease/epay/sdk/base/network/HttpClient$1$2;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/network/HttpClient$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

.field final synthetic val$baseResponse:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic val$reqJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/network/HttpClient$1;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/network/HttpClient$1;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->val$baseResponse:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iput-object p3, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->val$reqJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/network/INetCallback;->onResponseArrived()V

    .line 113
    :cond_0
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient;->access$100()Lcom/netease/epay/sdk/base/network/IParseCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient;->access$100()Lcom/netease/epay/sdk/base/network/IParseCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$netRequest:Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    iget-boolean v2, v2, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->isHome:Z

    iget-object v3, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->val$baseResponse:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v4, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v4, v4, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$netRequest:Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    iget-object v4, v4, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->val$reqJson:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$2;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v6, v6, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-interface/range {v0 .. v6}, Lcom/netease/epay/sdk/base/network/IParseCallback;->parse(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 116
    :cond_1
    return-void
.end method
