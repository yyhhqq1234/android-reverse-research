.class public Lcom/netease/ntsharesdk/platform/YXEntry;
.super Lim/yixin/sdk/api/BaseYXEntryActivity;
.source "YXEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseYXEntryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIYXAPI()Lim/yixin/sdk/api/IYXAPI;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    const-string v1, "Yixin"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntsharesdk/Platform;->getAPIInst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/yixin/sdk/api/IYXAPI;

    return-object v0
.end method

.method public onReq(Lim/yixin/sdk/api/BaseReq;)V
    .locals 2
    .param p1, "arg0"    # Lim/yixin/sdk/api/BaseReq;

    .prologue
    .line 18
    const-string v0, "ntsharesdk"

    const-string v1, "Yixin on Req"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    const-string v1, "Yixin"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntsharesdk/Platform;->handleRequest(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/YXEntry;->finish()V

    .line 21
    return-void
.end method

.method public onResp(Lim/yixin/sdk/api/BaseResp;)V
    .locals 3
    .param p1, "arg0"    # Lim/yixin/sdk/api/BaseResp;

    .prologue
    .line 25
    const-string v0, "ntsharesdk"

    const-string v1, "Yixin on onResp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string v0, "ntsharesdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResp called: errCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lim/yixin/sdk/api/BaseResp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lim/yixin/sdk/api/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    const-string v2, ",transaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lim/yixin/sdk/api/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    const-string v1, "Yixin"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntsharesdk/Platform;->handleResponse(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/YXEntry;->finish()V

    .line 30
    return-void
.end method
