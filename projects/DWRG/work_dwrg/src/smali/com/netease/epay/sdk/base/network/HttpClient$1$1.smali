.class Lcom/netease/epay/sdk/base/network/HttpClient$1$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/network/HttpClient$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/network/HttpClient$1;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/network/HttpClient$1;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/network/INetCallback;->onResponseArrived()V

    .line 89
    new-instance v3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    const-string v0, "-102"

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient;->access$100()Lcom/netease/epay/sdk/base/network/IParseCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$netRequest:Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    iget-boolean v2, v2, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->isHome:Z

    iget-object v4, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v4, v4, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$netRequest:Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    iget-object v4, v4, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->url:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/epay/sdk/base/network/HttpClient$1$1;->this$0:Lcom/netease/epay/sdk/base/network/HttpClient$1;

    iget-object v6, v6, Lcom/netease/epay/sdk/base/network/HttpClient$1;->val$callback:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-interface/range {v0 .. v6}, Lcom/netease/epay/sdk/base/network/IParseCallback;->parseFailure(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 91
    return-void
.end method
