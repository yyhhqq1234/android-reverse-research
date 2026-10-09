.class public final Lcom/tencent/msdk/api/WGPlatform;
.super Ljava/lang/Object;
.source "WGPlatform.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->tryLoadSo()V

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/api/WGPlatform;->isInited:Z

    .line 40
    const-class v0, Lcom/tencent/msdk/api/WGPlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/api/WGPlatform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DestroyActivity()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public static Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseInfo"    # Lcom/tencent/msdk/api/MsdkBaseInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    invoke-static {}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->init(Landroid/app/Activity;)V

    .line 66
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/msdk/WeGame;->setmActivity(Landroid/app/Activity;)V

    .line 67
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/msdk/WeGame;->setFirstGameActivity(Landroid/app/Activity;)V

    .line 70
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/api/refactor/Router;->loadConfig()V

    .line 73
    invoke-static {}, Lcom/tencent/special/httpdns/Resolver;->getInstance()Lcom/tencent/special/httpdns/Resolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/special/httpdns/Resolver;->init(Landroid/content/Context;IZ)V

    .line 74
    sput-boolean v6, Lcom/tencent/msdk/api/WGPlatform;->isInited:Z

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "first_launch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "first launch, initX5Environment"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    .line 81
    const-string v2, "first_launch"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QbSdk.getTbsVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "qbsdkTbsVersion":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_I:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    invoke-static {v2, v1}, Lcom/tencent/msdk/api/WGPlatform;->WGBuglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V

    .line 96
    .end local v1    # "qbsdkTbsVersion":Ljava/lang/String;
    :cond_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static IsDifferentActivity(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->IsDifferentActivity(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static WGAddCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cardId"    # Ljava/lang/String;
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .prologue
    .line 726
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGAddCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_0
    return-void
.end method

.method public static WGAddGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "fopenid"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGAddGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    return-void
.end method

.method public static WGAddLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J
    .locals 2
    .param p0, "localMsg"    # Lcom/tencent/msdk/api/LocalMessage;

    .prologue
    .line 788
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGAddLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J

    move-result-wide v0

    .line 791
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static WGBindExistQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 924
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    const-string v0, "WGBindExistQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 926
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGBindExistQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    return-void
.end method

.method public static WGBindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "unionid"    # Ljava/lang/String;
    .param p1, "union_name"    # Ljava/lang/String;
    .param p2, "zoneid"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGBindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    return-void
.end method

.method public static WGBuglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # Lcom/tencent/msdk/stat/eBuglyLogLevel;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 815
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGBuglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V

    .line 818
    :cond_0
    return-void
.end method

.method public static WGCheckApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z
    .locals 1
    .param p0, "api"    # Lcom/tencent/msdk/qq/ApiName;

    .prologue
    .line 460
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGCheckApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGCheckNeedUpdate()V
    .locals 1

    .prologue
    .line 652
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGCheckNeedUpdate()V

    .line 656
    :cond_0
    return-void
.end method

.method public static WGCheckYYBInstalled()I
    .locals 1

    .prologue
    .line 659
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGCheckYYBInstalled()I

    move-result v0

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static WGCleanLocation()Z
    .locals 1

    .prologue
    .line 616
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGCleanLocation()Z

    move-result v0

    .line 619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGClearLocalNotifications()V
    .locals 1

    .prologue
    .line 794
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGClearLocalNotifications()V

    .line 798
    :cond_0
    return-void
.end method

.method public static WGCreateQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 1
    .param p0, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 896
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const-string v0, "WGCreateQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGCreateQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V

    .line 901
    :cond_0
    return-void
.end method

.method public static WGCreateWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "unionid"    # Ljava/lang/String;
    .param p1, "chatRoomName"    # Ljava/lang/String;
    .param p2, "chatRoomNickName"    # Ljava/lang/String;

    .prologue
    .line 745
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGCreateWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_0
    return-void
.end method

.method public static WGDeletePushTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGDeletePushTag(Ljava/lang/String;)V

    .line 812
    :cond_0
    return-void
.end method

.method public static WGEnableCrashReport(ZZ)V
    .locals 1
    .param p0, "bRdmEnable"    # Z
    .param p1, "bMtaEnable"    # Z

    .prologue
    .line 382
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGEnableCrashReport(ZZ)V

    .line 386
    :cond_0
    return-void
.end method

.method public static WGEndGameStatus(Ljava/lang/String;II)V
    .locals 1
    .param p0, "gameStatus"    # Ljava/lang/String;
    .param p1, "succ"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 739
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGEndGameStatus(Ljava/lang/String;II)V

    .line 742
    :cond_0
    return-void
.end method

.method public static WGFeedback(Ljava/lang/String;)V
    .locals 1
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGFeedback(Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method

.method public static WGGetChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetChannelId()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static WGGetLocationInfo()Z
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetLocationInfo()Z

    move-result v0

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I
    .locals 1
    .param p0, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 234
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static WGGetNearbyPersonInfo()V
    .locals 1

    .prologue
    .line 602
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetNearbyPersonInfo()V

    .line 606
    :cond_0
    return-void
.end method

.method public static WGGetNoticeData(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .param p0, "scene"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/notice/NoticeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetNoticeData(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 549
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_0
.end method

.method public static WGGetPaytokenValidTime()I
    .locals 1

    .prologue
    .line 623
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetPaytokenValidTime()I

    move-result v0

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static WGGetPf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "gameCustomInfo"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetPf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static WGGetPfKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetPfKey()Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static WGGetPlatformAPPVersion(Lcom/tencent/msdk/consts/EPlatform;)Ljava/lang/String;
    .locals 1
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 673
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetPlatformAPPVersion(Lcom/tencent/msdk/consts/EPlatform;)Ljava/lang/String;

    move-result-object v0

    .line 676
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static WGGetQQGroupCodeV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 1
    .param p0, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 931
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const-string v0, "WGGetQQGroupCodeV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetQQGroupCodeV2(Lcom/tencent/msdk/api/GameGuild;)V

    .line 936
    :cond_0
    return-void
.end method

.method public static WGGetQQGroupListV2()V
    .locals 1

    .prologue
    .line 945
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const-string v0, "WGGetQQGroupListV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 947
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetQQGroupListV2()V

    .line 950
    :cond_0
    return-void
.end method

.method public static WGGetRegisterChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetRegisterChannelId()Ljava/lang/String;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static WGGetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGGetVersion()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static WGHideScrollNotice()V
    .locals 1

    .prologue
    .line 560
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGHideScrollNotice()V

    .line 564
    :cond_0
    return-void
.end method

.method public static WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z
    .locals 1
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 432
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGIsPlatformSupportApi(Lcom/tencent/msdk/consts/EPlatform;)Z
    .locals 1
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 439
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGIsPlatformSupportApi(Lcom/tencent/msdk/consts/EPlatform;)Z

    move-result v0

    .line 442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGJoinQQGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "qqGroupKey"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGJoinQQGroup(Ljava/lang/String;)V

    .line 670
    :cond_0
    return-void
.end method

.method public static WGJoinQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;)V
    .locals 1
    .param p0, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    const-string v0, "WGJoinQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGJoinQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;)V

    .line 908
    :cond_0
    return-void
.end method

.method public static WGJoinWXGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "unionid"    # Ljava/lang/String;
    .param p1, "chatRoomNickName"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGJoinWXGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    return-void
.end method

.method public static WGLogPlatformSDKVersion()V
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGLogPlatformSDKVersion()V

    .line 471
    :cond_0
    return-void
.end method

.method public static WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V
    .locals 1
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 258
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    .line 262
    :cond_0
    return-void
.end method

.method public static WGLoginOpt(Lcom/tencent/msdk/consts/EPlatform;I)I
    .locals 1
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;
    .param p1, "overtime"    # I

    .prologue
    .line 265
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGLoginOpt(Lcom/tencent/msdk/consts/EPlatform;I)I

    move-result v0

    .line 270
    :goto_0
    return v0

    .line 268
    :cond_0
    const-string v0, "WGLoginOpt in V2 would use WGLogin"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 269
    invoke-static {p0}, Lcom/tencent/msdk/api/WGPlatform;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    .line 270
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static WGLoginWithLocalInfo()V
    .locals 2

    .prologue
    .line 595
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    invoke-interface {v0, v1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    .line 599
    :cond_0
    return-void
.end method

.method public static WGLogout()Z
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGLogout()Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGOpenAmsCenter(Ljava/lang/String;)Z
    .locals 1
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 590
    const-string v0, "WGOpenAmsCenter is been disable, please use WGOpenUrl"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public static WGOpenFullScreenWebViewWithJson(Ljava/lang/String;)V
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 960
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    const-string v0, "WGOpenFullScreenWebViewWithJson"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGOpenFullScreenWebViewWithJson(Ljava/lang/String;)V

    .line 965
    :cond_0
    return-void
.end method

.method public static WGOpenUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGOpenUrl(Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method public static WGOpenUrl(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "screendir"    # Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .prologue
    .line 575
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGOpenUrl(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;)V

    .line 579
    :cond_0
    return-void
.end method

.method public static WGOpenWeiXinDeeplink(Ljava/lang/String;)V
    .locals 1
    .param p0, "link"    # Ljava/lang/String;

    .prologue
    .line 719
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGOpenWeiXinDeeplink(Ljava/lang/String;)V

    .line 723
    :cond_0
    return-void
.end method

.method public static WGQrCodeLogin(Lcom/tencent/msdk/consts/EPlatform;)V
    .locals 1
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 275
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQrCodeLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    .line 279
    :cond_0
    return-void
.end method

.method public static WGQueryBindGuildV2(Ljava/lang/String;I)V
    .locals 1
    .param p0, "groupId"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 938
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const-string v0, "WGQueryBindGuildV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 940
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryBindGuildV2(Ljava/lang/String;I)V

    .line 943
    :cond_0
    return-void
.end method

.method public static WGQueryQQGameFriendsInfo()Z
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryQQGameFriendsInfo()Z

    move-result v0

    .line 528
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGQueryQQGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "unionid"    # Ljava/lang/String;
    .param p1, "zoneid"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryQQGroupInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_0
    return-void
.end method

.method public static WGQueryQQGroupInfoV2(Ljava/lang/String;)V
    .locals 1
    .param p0, "groupId"    # Ljava/lang/String;

    .prologue
    .line 917
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryQQGroupInfoV2(Ljava/lang/String;)V

    .line 922
    :cond_0
    return-void
.end method

.method public static WGQueryQQGroupKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "groupOpenid"    # Ljava/lang/String;

    .prologue
    .line 712
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryQQGroupKey(Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method public static WGQueryQQMyInfo()Z
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryQQMyInfo()Z

    move-result v0

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGQueryWXGameFriendsInfo()Z
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryWXGameFriendsInfo()Z

    move-result v0

    .line 542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGQueryWXGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "unionid"    # Ljava/lang/String;
    .param p1, "openIdList"    # Ljava/lang/String;

    .prologue
    .line 759
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryWXGroupInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_0
    return-void
.end method

.method public static WGQueryWXGroupStatus(Ljava/lang/String;Lcom/tencent/msdk/api/eStatusType;)V
    .locals 1
    .param p0, "unionid"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/tencent/msdk/api/eStatusType;

    .prologue
    .line 773
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryWXGroupStatus(Ljava/lang/String;Lcom/tencent/msdk/api/eStatusType;)V

    .line 777
    :cond_0
    return-void
.end method

.method public static WGQueryWXMyInfo()Z
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGQueryWXMyInfo()Z

    move-result v0

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGRealNameAuth(Lcom/tencent/msdk/api/RealNameAuthInfo;)V
    .locals 1
    .param p0, "info"    # Lcom/tencent/msdk/api/RealNameAuthInfo;

    .prologue
    .line 821
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGRealNameAuth(Lcom/tencent/msdk/api/RealNameAuthInfo;)V

    .line 825
    :cond_0
    return-void
.end method

.method public static WGRefreshWXToken()V
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGRefreshWXToken()V

    .line 429
    :cond_0
    return-void
.end method

.method public static WGRemindGuildLeaderV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 1
    .param p0, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 952
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const-string v0, "WGRemindGuildLeaderV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGRemindGuildLeaderV2(Lcom/tencent/msdk/api/GameGuild;)V

    .line 957
    :cond_0
    return-void
.end method

.method public static WGReportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "isRealTime"    # Z

    .prologue
    .line 389
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGReportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 393
    :cond_0
    return-void
.end method

.method public static WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 400
    :cond_0
    return-void
.end method

.method public static WGReportPrajna(Ljava/lang/String;)V
    .locals 1
    .param p0, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    const-string v0, "WGReportPrajna"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGReportPrajna(Ljava/lang/String;)V

    .line 973
    :cond_0
    return-void
.end method

.method public static WGSendMessageToWechatGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/weixin/MsgBase;Lcom/tencent/msdk/weixin/BtnBase;Ljava/lang/String;)Z
    .locals 7
    .param p0, "friendOpenId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "pInfo"    # Lcom/tencent/msdk/weixin/MsgBase;
    .param p4, "pButton"    # Lcom/tencent/msdk/weixin/BtnBase;
    .param p5, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 631
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendMessageToWechatGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/weixin/MsgBase;Lcom/tencent/msdk/weixin/BtnBase;Ljava/lang/String;)Z

    move-result v0

    .line 634
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGSendToQQ(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imgUrl"    # Ljava/lang/String;
    .param p5, "imgUrlLen"    # I

    .prologue
    .line 339
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQ(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    :cond_0
    return-void
.end method

.method public static WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "act"    # I
    .param p1, "friendOpenId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "targetUrl"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "previewText"    # Ljava/lang/String;
    .param p7, "gameTag"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "act"    # I
    .param p1, "friendOpenId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "targetUrl"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "previewText"    # Ljava/lang/String;
    .param p7, "gameTag"    # Ljava/lang/String;
    .param p8, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGSendToQQWithArk(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imgUrl"    # Ljava/lang/String;
    .param p5, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQWithArk(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method public static WGSendToQQWithMusic(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "musicUrl"    # Ljava/lang/String;
    .param p4, "musicDataUrl"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQWithMusic(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method

.method public static WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;)V
    .locals 1
    .param p0, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p1, "imgFilePath"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method public static WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p1, "imgFilePath"    # Ljava/lang/String;
    .param p2, "extraScene"    # Ljava/lang/String;
    .param p3, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 879
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_0
    return-void
.end method

.method public static WGSendToQQWithRichPhoto(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "summary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "imgFilePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQWithRichPhoto(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 357
    :cond_0
    return-void
.end method

.method public static WGSendToQQWithVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "summary"    # Ljava/lang/String;
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToQQWithVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void
.end method

.method public static WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "friendOpenid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "messageExt"    # Ljava/lang/String;
    .param p4, "mediaTagName"    # Ljava/lang/String;
    .param p5, "thumbMediaId"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 500
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "friendOpenId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "messageExt"    # Ljava/lang/String;
    .param p4, "mediaTagName"    # Ljava/lang/String;
    .param p5, "thumbMediaId"    # Ljava/lang/String;
    .param p6, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static WGSendToWXGroup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "msgType"    # I
    .param p1, "subType"    # I
    .param p2, "unionid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "messageExt"    # Ljava/lang/String;
    .param p6, "mediaTagName"    # Ljava/lang/String;
    .param p7, "imgUrl"    # Ljava/lang/String;
    .param p8, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWXGroup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_0
    return-void
.end method

.method public static WGSendToWXWithMiniApp(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "thumbImgData"    # [B
    .param p4, "lens"    # I
    .param p5, "webpageUrl"    # Ljava/lang/String;
    .param p6, "userName"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "withShareTicket"    # Z
    .param p9, "messageExt"    # Ljava/lang/String;
    .param p10, "messageAction"    # Ljava/lang/String;

    .prologue
    .line 888
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/api/eWechatScene;->value:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWXWithMiniApp(ILjava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_0
    return-void
.end method

.method public static WGSendToWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 7
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "mediaTagName"    # Ljava/lang/String;
    .param p3, "thumbData"    # [B
    .param p4, "thumbDataLen"    # I
    .param p5, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method public static WGSendToWeixinWithMusic(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "musicUrl"    # Ljava/lang/String;
    .param p4, "musicDataUrl"    # Ljava/lang/String;
    .param p5, "mediaTagName"    # Ljava/lang/String;
    .param p6, "imgData"    # [B
    .param p7, "imgDataLen"    # I
    .param p8, "mediaExt"    # Ljava/lang/String;
    .param p9, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWeixinWithMusic(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method public static WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BI)V
    .locals 1
    .param p0, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p1, "mediaTagName"    # Ljava/lang/String;
    .param p2, "imgData"    # [B
    .param p3, "imgDataLen"    # I

    .prologue
    .line 298
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BI)V

    .line 302
    :cond_0
    return-void
.end method

.method public static WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p1, "mediaTagName"    # Ljava/lang/String;
    .param p2, "imgData"    # [B
    .param p3, "imgDataLen"    # I
    .param p4, "messageExt"    # Ljava/lang/String;
    .param p5, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public static WGSendToWeixinWithPhotoPath(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p1, "mediaTagName"    # Ljava/lang/String;
    .param p2, "imgPath"    # Ljava/lang/String;
    .param p3, "messageExt"    # Ljava/lang/String;
    .param p4, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWeixinWithPhotoPath(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public static WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 9
    .param p0, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "mediaTagName"    # Ljava/lang/String;
    .param p5, "thumbImgData"    # [B
    .param p6, "thumbImgDataLen"    # I
    .param p7, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method public static WGSendToWeixinWithVideo(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "thumbUrl"    # Ljava/lang/String;
    .param p4, "videoUrl"    # Ljava/lang/String;
    .param p5, "filePath"    # Ljava/lang/String;
    .param p6, "mediaTagName"    # Ljava/lang/String;
    .param p7, "mediaAction"    # Ljava/lang/String;
    .param p8, "mediaExt"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSendToWeixinWithVideo(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_0
    return-void
.end method

.method public static WGSetGroupObserver(Lcom/tencent/msdk/api/WGGroupObserver;)V
    .locals 1
    .param p0, "Observer"    # Lcom/tencent/msdk/api/WGGroupObserver;

    .prologue
    .line 133
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSetGroupObserver(Lcom/tencent/msdk/api/WGGroupObserver;)V

    .line 137
    :cond_0
    return-void
.end method

.method public static WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/tencent/msdk/api/WGPlatformObserver;

    .prologue
    .line 109
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static WGSetPermission(I)V
    .locals 1
    .param p0, "permissions"    # I

    .prologue
    .line 216
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSetPermission(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public static WGSetPushTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 801
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSetPushTag(Ljava/lang/String;)V

    .line 805
    :cond_0
    return-void
.end method

.method public static WGSetRealNameAuthObserver(Lcom/tencent/msdk/api/WGRealNameAuthObserver;)V
    .locals 1
    .param p0, "d"    # Lcom/tencent/msdk/api/WGRealNameAuthObserver;

    .prologue
    .line 116
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSetRealNameAuthObserver(Lcom/tencent/msdk/api/WGRealNameAuthObserver;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static WGSetSaveUpdateObserver(Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;

    .prologue
    .line 645
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSetSaveUpdateObserver(Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;)V

    .line 649
    :cond_0
    return-void
.end method

.method public static WGSetWebviewObserver(Lcom/tencent/msdk/api/WGWebviewObserver;)V
    .locals 1
    .param p0, "d"    # Lcom/tencent/msdk/api/WGWebviewObserver;

    .prologue
    .line 123
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSetWebviewObserver(Lcom/tencent/msdk/api/WGWebviewObserver;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static WGShareToWXGameline([BLjava/lang/String;)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "gameExtra"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGShareToWXGameline([BLjava/lang/String;)V

    .line 867
    :cond_0
    return-void
.end method

.method public static WGShowNotice(Ljava/lang/String;)V
    .locals 1
    .param p0, "scene"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGShowNotice(Ljava/lang/String;)V

    .line 557
    :cond_0
    return-void
.end method

.method public static WGStartGameStatus(Ljava/lang/String;)V
    .locals 1
    .param p0, "gameStatus"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGStartGameStatus(Ljava/lang/String;)V

    .line 736
    :cond_0
    return-void
.end method

.method public static WGStartSaveUpdate(Z)V
    .locals 1
    .param p0, "isUseYYB"    # Z

    .prologue
    .line 638
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGStartSaveUpdate(Z)V

    .line 642
    :cond_0
    return-void
.end method

.method public static WGSwitchUser(Z)Z
    .locals 1
    .param p0, "switchToLaunchUser"    # Z

    .prologue
    .line 251
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGSwitchUser(Z)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static WGTestSpeed(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGTestSpeed(Ljava/util/ArrayList;)V

    .line 407
    :cond_0
    return-void
.end method

.method public static WGUnbindQQGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "groupOpenid"    # Ljava/lang/String;
    .param p1, "unionid"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGUnbindQQGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    return-void
.end method

.method public static WGUnbindQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 1
    .param p0, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 910
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    const-string v0, "WGUnbindQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 912
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGUnbindQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V

    .line 915
    :cond_0
    return-void
.end method

.method public static WGUnbindWeiXinGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "unionid"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->WGUnbindWeiXinGroup(Ljava/lang/String;)V

    .line 770
    :cond_0
    return-void
.end method

.method public static handleCallback(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->handleCallback(Landroid/content/Intent;)V

    .line 162
    :cond_0
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    :cond_0
    return-void
.end method

.method public static onDestory(Landroid/app/Activity;)V
    .locals 2
    .param p0, "game"    # Landroid/app/Activity;

    .prologue
    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 191
    const-string v0, "Lifecycle goto New Lifecycle onDestory"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->handlerOnDestroy(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->onPausedAdd(Z)V

    .line 180
    const-string v0, "Lifecycle goto New Lifecycle onPause"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static onRestart()V
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->onRestart()V

    .line 170
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->onResumeAdd(Z)V

    .line 174
    const-string v0, "Lifecycle goto New Lifecycle onResume"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static onStop()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->onStoppedAdd(Z)V

    .line 185
    const-string v0, "Lifecycle goto New Lifecycle onStop"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static wakeUpFromHall(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/msdk/WeGame;->wakeUpFromHall(Landroid/content/Intent;)Z

    move-result v1

    .line 146
    .local v1, "ret":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "flag"

    if-eqz v1, :cond_0

    const-string v2, "0"

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    const/4 v3, 0x1

    const-string/jumbo v4, "wakeUpFromHall"

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 149
    return v1

    .line 147
    :cond_0
    const-string v2, "-1"

    goto :goto_0
.end method
