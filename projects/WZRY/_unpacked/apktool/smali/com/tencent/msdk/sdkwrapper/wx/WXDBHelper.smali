.class public Lcom/tencent/msdk/sdkwrapper/wx/WXDBHelper;
.super Ljava/lang/Object;
.source "WXDBHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllLoginRecord()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    .line 44
    .local v0, "wxLoginModel":Lcom/tencent/msdk/db/WxLoginModel;
    invoke-virtual {v0}, Lcom/tencent/msdk/db/WxLoginModel;->deleteAll()I

    .line 45
    return-void
.end method

.method public static getLoginRecord()Lcom/tencent/msdk/api/LoginRet;
    .locals 2

    .prologue
    .line 14
    new-instance v1, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v1}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->getLastWxLoginUserinfo()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v0

    .line 15
    .local v0, "wxLoginModel":Lcom/tencent/msdk/db/WxLoginModel;
    if-nez v0, :cond_0

    .line 16
    new-instance v1, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 18
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/msdk/db/WxLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v1

    goto :goto_0
.end method

.method public static saveLoginRecord(Lcom/tencent/msdk/api/LoginRet;)Z
    .locals 5
    .param p0, "loginRet"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x3

    .line 23
    new-instance v1, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v1}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->getLastWxLoginUserinfo()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v0

    .line 24
    .local v0, "wxLoginModel":Lcom/tencent/msdk/db/WxLoginModel;
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tencent/msdk/db/WxLoginModel;

    .end local v0    # "wxLoginModel":Lcom/tencent/msdk/db/WxLoginModel;
    invoke-direct {v0}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    .line 27
    .restart local v0    # "wxLoginModel":Lcom/tencent/msdk/db/WxLoginModel;
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v2}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v2}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    .line 32
    invoke-virtual {p0, v4}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v4}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 36
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/tencent/msdk/db/WxLoginModel;->save()Z

    move-result v1

    return v1
.end method
