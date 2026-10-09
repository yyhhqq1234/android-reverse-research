.class public Lcom/tencent/msdk/sdkwrapper/qq/QQDBHelper;
.super Ljava/lang/Object;
.source "QQDBHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllLoginRecord()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 57
    .local v0, "qqLoginModel":Lcom/tencent/msdk/db/QQLoginModel;
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->deleteAll()I

    .line 58
    return-void
.end method

.method public static getLoginRecord()Lcom/tencent/msdk/api/LoginRet;
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 16
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    new-instance v2, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v2}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/msdk/db/QQLoginModel;->getLastQQLoginUserinfo()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v1

    .line 17
    .local v1, "qqLoginModel":Lcom/tencent/msdk/db/QQLoginModel;
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Lcom/tencent/msdk/db/QQLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/msdk/api/LoginRet;->toLogStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public static saveLoginRecord(Lcom/tencent/msdk/api/LoginRet;)Z
    .locals 5
    .param p0, "loginRet"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 26
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    const-string v1, "MSDKFakeData"

    iput-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    :cond_2
    const-string v1, "MSDKFakeData"

    iput-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 35
    :cond_3
    new-instance v1, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v1}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/msdk/db/QQLoginModel;->getLastQQLoginUserinfo()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v0

    .line 36
    .local v0, "qqLoginModel":Lcom/tencent/msdk/db/QQLoginModel;
    if-nez v0, :cond_4

    .line 37
    new-instance v0, Lcom/tencent/msdk/db/QQLoginModel;

    .end local v0    # "qqLoginModel":Lcom/tencent/msdk/db/QQLoginModel;
    invoke-direct {v0}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 39
    .restart local v0    # "qqLoginModel":Lcom/tencent/msdk/db/QQLoginModel;
    :cond_4
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v3}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v3}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 44
    invoke-virtual {p0, v4}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v4}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 48
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/tencent/msdk/api/LoginRet;->toLogStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->save()Z

    move-result v1

    return v1
.end method
