.class public Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;
.super Ljava/lang/Object;
.source "NetworkV2Impl.java"

# interfaces
.implements Lcom/tencent/msdk/realnameauth/network/NetworkInterface;
.implements Lcom/tencent/msdk/communicator/IHttpRequestListener;


# instance fields
.field private lisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

.field private reqBody:Ljava/lang/String;

.field private reqUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;II)V
    .locals 2
    .param p1, "errorContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request fail, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->lisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;->onFailure(Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public onSuccess(Ljava/lang/String;II)V
    .locals 2
    .param p1, "netContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "what"    # I

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request succeed, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->lisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;->onSuccess(Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public send(Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;)V
    .locals 4
    .param p1, "lisenter"    # Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request send, url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nbody:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->lisenter:Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;

    .line 31
    new-instance v0, Lcom/tencent/msdk/communicator/HttpRequestManager;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;-><init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqBody:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/communicator/HttpRequestManager;->postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonBody"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqBody:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUrl(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "platform"    # I
    .param p3, "openid"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/communicator/UrlManager;->getUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/network/NetworkV2Impl;->reqUrl:Ljava/lang/String;

    .line 20
    return-void
.end method
