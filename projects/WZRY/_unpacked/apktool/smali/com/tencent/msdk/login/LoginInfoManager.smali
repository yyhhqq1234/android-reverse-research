.class public Lcom/tencent/msdk/login/LoginInfoManager;
.super Ljava/lang/Object;
.source "LoginInfoManager.java"


# static fields
.field private static volatile instance:Lcom/tencent/msdk/login/LoginInfoManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/login/LoginInfoManager;
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    if-nez v0, :cond_1

    .line 12
    const-class v1, Lcom/tencent/msdk/login/LoginInfoManager;

    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/tencent/msdk/login/LoginInfoManager;

    invoke-direct {v0}, Lcom/tencent/msdk/login/LoginInfoManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_1
    sget-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public deleteAllLoginRecord()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 64
    .local v0, "qui":Lcom/tencent/msdk/db/QQLoginModel;
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->deleteAll()I

    .line 66
    new-instance v1, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v1}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    .line 67
    .local v1, "wui":Lcom/tencent/msdk/db/WxLoginModel;
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->deleteAll()I

    .line 68
    return-void
.end method

.method public deleteLoginRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v0, p1}, Lcom/tencent/msdk/db/QQLoginModel;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "qui":Lcom/tencent/msdk/db/QQLoginModel;
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->delete()I

    .line 58
    new-instance v1, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/db/WxLoginModel;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "wui":Lcom/tencent/msdk/db/WxLoginModel;
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->delete()I

    .line 60
    return-void
.end method

.method public getLastLoginPlatform()I
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 51
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    return v1
.end method

.method public getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;
    .locals 6

    .prologue
    .line 26
    new-instance v2, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v2}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/msdk/db/QQLoginModel;->getLastQQLoginUserinfo()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v0

    .line 27
    .local v0, "qqUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    new-instance v2, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v2}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/msdk/db/WxLoginModel;->getLastWxLoginUserinfo()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v1

    .line 30
    .local v1, "wxUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    if-nez v0, :cond_1

    .line 31
    if-nez v1, :cond_0

    .line 32
    new-instance v2, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v2}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 43
    :goto_0
    return-object v2

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_0

    .line 37
    :cond_1
    if-nez v1, :cond_2

    .line 38
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_0

    .line 40
    :cond_2
    iget-wide v2, v0, Lcom/tencent/msdk/db/QQLoginModel;->create_at:J

    iget-wide v4, v1, Lcom/tencent/msdk/db/WxLoginModel;->create_at:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 41
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_0
.end method
