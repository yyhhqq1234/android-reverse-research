.class public Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;
.super Ljava/lang/Object;
.source "UserInfoUtil.java"


# static fields
.field private static volatile userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpenId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getUserInfo()Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized updateOpenId(Ljava/lang/String;)V
    .locals 2
    .param p0, "openId"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v1, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    invoke-virtual {v0, p0}, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->setOpenId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v1

    return-void

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateUserInfo(Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;)V
    .locals 3
    .param p0, "userInfo"    # Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    .prologue
    .line 13
    const-class v1, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 19
    :goto_0
    monitor-exit v1

    return-void

    .line 16
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->openId:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    iget v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    iput v2, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->userType:I

    .line 18
    sget-object v0, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    iget-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;->token:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
