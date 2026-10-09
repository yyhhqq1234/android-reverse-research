.class public Lcom/tencent/msdk/api/GroupRet;
.super Lcom/tencent/msdk/api/CallbackRet;
.source "GroupRet.java"


# instance fields
.field public errorCode:I

.field public mQQGroupInfo:Lcom/tencent/msdk/qq/group/QQGroupInfo;

.field public mQQGroupInfoV2:Lcom/tencent/msdk/api/QQGroupInfoV2;

.field public mWXGroupInfo:Lcom/tencent/msdk/weixin/group/WXGroupInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tencent/msdk/api/CallbackRet;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    .line 14
    new-instance v0, Lcom/tencent/msdk/api/QQGroupInfoV2;

    invoke-direct {v0}, Lcom/tencent/msdk/api/QQGroupInfoV2;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mQQGroupInfoV2:Lcom/tencent/msdk/api/QQGroupInfoV2;

    .line 15
    new-instance v0, Lcom/tencent/msdk/qq/group/QQGroupInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/qq/group/QQGroupInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mQQGroupInfo:Lcom/tencent/msdk/qq/group/QQGroupInfo;

    .line 16
    new-instance v0, Lcom/tencent/msdk/weixin/group/WXGroupInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/weixin/group/WXGroupInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mWXGroupInfo:Lcom/tencent/msdk/weixin/group/WXGroupInfo;

    .line 23
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "platform"    # I
    .param p2, "flag"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/api/CallbackRet;-><init>(IILjava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    .line 14
    new-instance v0, Lcom/tencent/msdk/api/QQGroupInfoV2;

    invoke-direct {v0}, Lcom/tencent/msdk/api/QQGroupInfoV2;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mQQGroupInfoV2:Lcom/tencent/msdk/api/QQGroupInfoV2;

    .line 15
    new-instance v0, Lcom/tencent/msdk/qq/group/QQGroupInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/qq/group/QQGroupInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mQQGroupInfo:Lcom/tencent/msdk/qq/group/QQGroupInfo;

    .line 16
    new-instance v0, Lcom/tencent/msdk/weixin/group/WXGroupInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/weixin/group/WXGroupInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mWXGroupInfo:Lcom/tencent/msdk/weixin/group/WXGroupInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public getQQGroupInfo()Lcom/tencent/msdk/qq/group/QQGroupInfo;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mQQGroupInfo:Lcom/tencent/msdk/qq/group/QQGroupInfo;

    return-object v0
.end method

.method public getWXGroupInfo()Lcom/tencent/msdk/weixin/group/WXGroupInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/msdk/api/GroupRet;->mWXGroupInfo:Lcom/tencent/msdk/weixin/group/WXGroupInfo;

    return-object v0
.end method

.method public toLog()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "***********************Location Info***********************"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "platform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->platform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/api/GroupRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 45
    const-string v0, "***********************LoginInfo***********************"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "GroupRet==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-super {p0}, Lcom/tencent/msdk/api/CallbackRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/tencent/msdk/api/GroupRet;->mQQGroupInfo:Lcom/tencent/msdk/qq/group/QQGroupInfo;

    invoke-virtual {v1}, Lcom/tencent/msdk/qq/group/QQGroupInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/tencent/msdk/api/GroupRet;->mWXGroupInfo:Lcom/tencent/msdk/weixin/group/WXGroupInfo;

    invoke-virtual {v1}, Lcom/tencent/msdk/weixin/group/WXGroupInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/tencent/msdk/api/GroupRet;->toLog()V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupRet\uff1aflag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff1bplatform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->platform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff1berrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/GroupRet;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff1bdesc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/api/GroupRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
