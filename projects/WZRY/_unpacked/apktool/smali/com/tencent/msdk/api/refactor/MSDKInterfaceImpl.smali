.class public Lcom/tencent/msdk/api/refactor/MSDKInterfaceImpl;
.super Ljava/lang/Object;
.source "MSDKInterfaceImpl.java"

# interfaces
.implements Lcom/tencent/msdk/api/refactor/MSDKInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "baseInfo"    # Lcom/tencent/msdk/api/MsdkBaseInfo;

    .prologue
    .line 60
    const-string v0, "Initialized start"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iput-object p2, v0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    .line 63
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iput-object p1, v0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 64
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    new-instance v1, Lcom/tencent/msdk/framework/CocosAdapter;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/framework/CocosAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/tencent/msdk/framework/MSDKEnv;->cocosAdapter:Lcom/tencent/msdk/framework/CocosAdapter;

    .line 66
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 67
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v1, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 68
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    .line 70
    invoke-static {p1}, Lcom/tencent/msdk/sdkwrapper/MSDKJniHelper/MSDKMethodC2J;->init(Landroid/app/Activity;)V

    .line 72
    invoke-static {p1, p2}, Lcom/tencent/msdk/sdkwrapper/push/MSDKPushUtil;->InitPush(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V

    .line 73
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->init()V

    .line 75
    invoke-static {}, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->startInternetConnectionNotifier()V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceImpl;->logPlatformSDKVersion(Landroid/content/Context;)V

    .line 80
    const-string v0, "Initialized end"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public IsDifferentActivity(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public WGAddCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGAddCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public WGAddGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fopenid"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGAddGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public WGAddLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J
    .locals 2
    .param p1, "localMsg"    # Lcom/tencent/msdk/api/LocalMessage;

    .prologue
    .line 594
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGAddLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public WGBindExistQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;

    .prologue
    .line 685
    const-string v0, "WGBindExistQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 686
    const-string v0, "WGBindExistQQGroupV2"

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 687
    return-void
.end method

.method public WGBindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "union_name"    # Ljava/lang/String;
    .param p3, "zoneid"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGBindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public WGBuglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lcom/tencent/msdk/stat/eBuglyLogLevel;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/tencent/msdk/stat/eBuglyLogLevel;->val()I

    move-result v0

    invoke-static {v0, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGBuglyLog(ILjava/lang/String;)V

    .line 615
    return-void
.end method

.method public WGCheckApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z
    .locals 1
    .param p1, "api"    # Lcom/tencent/msdk/qq/ApiName;

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/tencent/msdk/qq/ApiName;->val()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGCheckApiSupport(I)Z

    move-result v0

    return v0
.end method

.method public WGCheckNeedUpdate()V
    .locals 0

    .prologue
    .line 500
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGCheckNeedUpdate()V

    .line 501
    return-void
.end method

.method public WGCheckYYBInstalled()I
    .locals 1

    .prologue
    .line 505
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGCheckYYBInstalled()I

    move-result v0

    return v0
.end method

.method public WGCleanLocation()Z
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGCleanLocation()Z

    move-result v0

    return v0
.end method

.method public WGClearLocalNotifications()V
    .locals 0

    .prologue
    .line 599
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGClearLocalNotifications()V

    .line 600
    return-void
.end method

.method public WGCreateQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 4
    .param p1, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 663
    const-string v0, "WGCreateQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 665
    const-string v0, "WGCreateQQGroupV2"

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 666
    return-void
.end method

.method public WGCreateWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "chatRoomName"    # Ljava/lang/String;
    .param p3, "chatRoomNickName"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGCreateWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public WGDeletePushTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGDeletePushTag(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public WGEnableCrashReport(ZZ)V
    .locals 0
    .param p1, "bRdmEnable"    # Z
    .param p2, "bMtaEnable"    # Z

    .prologue
    .line 325
    return-void
.end method

.method public WGEndGameStatus(Ljava/lang/String;II)V
    .locals 0
    .param p1, "gameStatus"    # Ljava/lang/String;
    .param p2, "succ"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 560
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGEndGameStatus(Ljava/lang/String;II)V

    .line 561
    return-void
.end method

.method public WGFeedback(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGFeedback(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public WGGetChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WGGetLocationInfo()Z
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetLocationInfo()Z

    move-result v0

    return v0
.end method

.method public WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I
    .locals 1
    .param p1, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 229
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    move-result v0

    return v0
.end method

.method public WGGetNearbyPersonInfo()V
    .locals 0

    .prologue
    .line 470
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetNearbyPersonInfo()V

    .line 471
    return-void
.end method

.method public WGGetNoticeData(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;
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
    .line 429
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetNoticeData(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public WGGetPaytokenValidTime()I
    .locals 1

    .prologue
    .line 485
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetPaytokenValidTime()I

    move-result v0

    return v0
.end method

.method public WGGetPf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "gameCustomInfo"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetPf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WGGetPfKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetPfKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WGGetPlatformAPPVersion(Lcom/tencent/msdk/consts/EPlatform;)Ljava/lang/String;
    .locals 1
    .param p1, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 515
    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetPlatformAPPVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WGGetQQGroupCodeV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 4
    .param p1, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 691
    const-string v0, "WGGetQQGroupCodeV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 692
    const-string v0, "WGGetQQGroupCodeV2"

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 693
    return-void
.end method

.method public WGGetQQGroupListV2()V
    .locals 5

    .prologue
    .line 703
    const-string v0, "WGGetQQGroupListV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 704
    const-string v0, "WGGetQQGroupListV2"

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 705
    return-void
.end method

.method public WGGetRegisterChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetRegisterChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WGGetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WGHideScrollNotice()V
    .locals 0

    .prologue
    .line 439
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGHideScrollNotice()V

    .line 440
    return-void
.end method

.method public WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z
    .locals 1
    .param p1, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGIsPlatformInstalled(I)Z

    move-result v0

    return v0
.end method

.method public WGIsPlatformSupportApi(Lcom/tencent/msdk/consts/EPlatform;)Z
    .locals 1
    .param p1, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGIsPlatformSupportApi(I)Z

    move-result v0

    return v0
.end method

.method public WGJoinQQGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "qqGroupKey"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGJoinQQGroup(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public WGJoinQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;)V
    .locals 3
    .param p1, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    .line 673
    const-string v0, "WGJoinQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 674
    const-string v0, "WGJoinQQGroupV2"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 675
    return-void
.end method

.method public WGJoinWXGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "chatRoomNickName"    # Ljava/lang/String;

    .prologue
    .line 570
    invoke-static {p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGJoinWXGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public WGLogPlatformSDKVersion()V
    .locals 0

    .prologue
    .line 384
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGLogPlatformSDKVersion()V

    .line 385
    return-void
.end method

.method public WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V
    .locals 1
    .param p1, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGLogin(I)V

    .line 245
    return-void
.end method

.method public WGLoginOpt(Lcom/tencent/msdk/consts/EPlatform;I)I
    .locals 1
    .param p1, "platform"    # Lcom/tencent/msdk/consts/EPlatform;
    .param p2, "overtime"    # I

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    invoke-static {v0, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGLoginOpt(II)I

    move-result v0

    return v0
.end method

.method public WGLoginWithLocalInfo()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public WGLogout()Z
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGLogout()Z

    move-result v0

    return v0
.end method

.method public WGOpenAmsCenter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public WGOpenFullScreenWebViewWithJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 715
    const-string v0, "WGOpenFullScreenWebViewWithJson"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 716
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGOpenFullScreenWebViewWithJson(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public WGOpenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGOpenUrl(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public WGOpenUrl(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "screendir"    # Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .prologue
    .line 449
    invoke-virtual {p2}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->val()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGOpenUrl(Ljava/lang/String;I)V

    .line 450
    return-void
.end method

.method public WGOpenWeiXinDeeplink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGOpenWeiXinDeeplink(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public WGQrCodeLogin(Lcom/tencent/msdk/consts/EPlatform;)V
    .locals 1
    .param p1, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQrCodeLogin(I)V

    .line 255
    return-void
.end method

.method public WGQueryBindGuildV2(Ljava/lang/String;I)V
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 697
    const-string v0, "WGQueryBindGuildV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 698
    const-string v0, "WGQueryBindGuildV2"

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, p1, v2, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 699
    return-void
.end method

.method public WGQueryQQGameFriendsInfo()Z
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryQQGameFriendsInfo()Z

    move-result v0

    return v0
.end method

.method public WGQueryQQGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "zoneid"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-static {p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryQQGroupInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public WGQueryQQGroupInfoV2(Ljava/lang/String;)V
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 669
    const-string v0, "WGQueryQQGroupInfoV2"

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 670
    return-void
.end method

.method public WGQueryQQGroupKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupOpenid"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryQQGroupKey(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public WGQueryQQMyInfo()Z
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryQQMyInfo()Z

    move-result v0

    return v0
.end method

.method public WGQueryWXGameFriendsInfo()Z
    .locals 1

    .prologue
    .line 424
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryWXGameFriendsInfo()Z

    move-result v0

    return v0
.end method

.method public WGQueryWXGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "openIdList"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryWXGroupInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public WGQueryWXGroupStatus(Ljava/lang/String;Lcom/tencent/msdk/api/eStatusType;)V
    .locals 1
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/tencent/msdk/api/eStatusType;

    .prologue
    .line 585
    invoke-virtual {p2}, Lcom/tencent/msdk/api/eStatusType;->val()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryWXGroupStatus(Ljava/lang/String;I)V

    .line 586
    return-void
.end method

.method public WGQueryWXMyInfo()Z
    .locals 1

    .prologue
    .line 419
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQueryWXMyInfo()Z

    move-result v0

    return v0
.end method

.method public WGRealNameAuth(Lcom/tencent/msdk/api/RealNameAuthInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/tencent/msdk/api/RealNameAuthInfo;

    .prologue
    .line 619
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGRealNameAuth(Lcom/tencent/msdk/api/RealNameAuthInfo;)V

    .line 620
    return-void
.end method

.method public WGRefreshWXToken()V
    .locals 0

    .prologue
    .line 354
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGRefreshWXToken()V

    .line 355
    return-void
.end method

.method public WGRemindGuildLeaderV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 4
    .param p1, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 709
    const-string v0, "WGRemindGuildLeaderV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 710
    const-string v0, "WGRemindGuildLeaderV2"

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 711
    return-void
.end method

.method public WGReportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "isRealTime"    # Z

    .prologue
    .line 329
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGReportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    return-void
.end method

.method public WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "isRealTime"    # Z
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
    .line 334
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 335
    return-void
.end method

.method public WGReportPrajna(Ljava/lang/String;)V
    .locals 1
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 721
    const-string v0, "WGReportPrajna"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 722
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGReportPrajna(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public WGSendMessageToWechatGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/weixin/MsgBase;Lcom/tencent/msdk/weixin/BtnBase;Ljava/lang/String;)Z
    .locals 7
    .param p1, "friendOpenId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "pInfo"    # Lcom/tencent/msdk/weixin/MsgBase;
    .param p5, "pButton"    # Lcom/tencent/msdk/weixin/BtnBase;
    .param p6, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-virtual {p4}, Lcom/tencent/msdk/weixin/MsgBase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/tencent/msdk/weixin/MsgBase;->getMsgType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5}, Lcom/tencent/msdk/weixin/BtnBase;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendMessageToWechatGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public WGSendToQQ(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;
    .param p6, "imgUrlLen"    # I

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    return-void
.end method

.method public WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "act"    # I
    .param p2, "friendOpenId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "targetUrl"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;
    .param p7, "previewText"    # Ljava/lang/String;
    .param p8, "gameTag"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static/range {p1 .. p8}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "act"    # I
    .param p2, "friendOpenId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "targetUrl"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;
    .param p7, "previewText"    # Ljava/lang/String;
    .param p8, "gameTag"    # Ljava/lang/String;
    .param p9, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-static/range {p1 .. p9}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public WGSendToQQWithArk(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;
    .param p6, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQWithArk(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public WGSendToQQWithMusic(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "musicUrl"    # Ljava/lang/String;
    .param p5, "musicDataUrl"    # Ljava/lang/String;
    .param p6, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQWithMusic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;)V
    .locals 1
    .param p1, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p2, "imgFilePath"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v0

    invoke-static {v0, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQWithPhoto(ILjava/lang/String;)V

    .line 300
    return-void
.end method

.method public WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p2, "imgFilePaths"    # Ljava/lang/String;
    .param p3, "extraScene"    # Ljava/lang/String;
    .param p4, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eQQScene;->val()I

    move-result v0

    invoke-static {v0, p2, p3, p4}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQWithPhoto(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public WGSendToQQWithRichPhoto(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;
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
    .line 304
    .local p2, "imgFilePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQWithRichPhoto(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 305
    return-void
.end method

.method public WGSendToQQWithVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToQQWithVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "friendOpenid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "messageExt"    # Ljava/lang/String;
    .param p5, "mediaTagName"    # Ljava/lang/String;
    .param p6, "thumbMediaId"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static/range {p1 .. p6}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "friendOpenId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "messageExt"    # Ljava/lang/String;
    .param p5, "mediaTagName"    # Ljava/lang/String;
    .param p6, "thumbMediaId"    # Ljava/lang/String;
    .param p7, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static/range {p1 .. p7}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public WGSendToWXGroup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msgType"    # I
    .param p2, "subType"    # I
    .param p3, "unionid"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "messageExt"    # Ljava/lang/String;
    .param p7, "mediaTagName"    # Ljava/lang/String;
    .param p8, "imgUrl"    # Ljava/lang/String;
    .param p9, "msdkExtInfo"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-static/range {p1 .. p9}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWXGroup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public WGSendToWXWithMiniApp(ILjava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "thumbImgData"    # [B
    .param p5, "lens"    # I
    .param p6, "webpageUrl"    # Ljava/lang/String;
    .param p7, "userName"    # Ljava/lang/String;
    .param p8, "path"    # Ljava/lang/String;
    .param p9, "withShareTicket"    # Z
    .param p10, "messageExt"    # Ljava/lang/String;
    .param p11, "messageAction"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-static/range {p1 .. p11}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWXWithMiniApp(ILjava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public WGSendToWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "mediaTagName"    # Ljava/lang/String;
    .param p4, "thumbData"    # [B
    .param p5, "thumbDataLen"    # I
    .param p6, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static/range {p1 .. p6}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V

    .line 260
    return-void
.end method

.method public WGSendToWeixinWithMusic(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "musicUrl"    # Ljava/lang/String;
    .param p5, "musicDataUrl"    # Ljava/lang/String;
    .param p6, "mediaTagName"    # Ljava/lang/String;
    .param p7, "imgData"    # [B
    .param p8, "imgDataLen"    # I
    .param p9, "mediaExt"    # Ljava/lang/String;
    .param p10, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-static/range {v0 .. v9}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWeixinWithMusic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "mediaTagName"    # Ljava/lang/String;
    .param p3, "imgData"    # [B
    .param p4, "imgDataLen"    # I

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v0

    invoke-static {v0, p2, p3, p4}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWeixinWithPhoto(ILjava/lang/String;[BI)V

    .line 270
    return-void
.end method

.method public WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "mediaTagName"    # Ljava/lang/String;
    .param p3, "imgData"    # [B
    .param p4, "imgDataLen"    # I
    .param p5, "messageExt"    # Ljava/lang/String;
    .param p6, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWeixinWithPhoto(ILjava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public WGSendToWeixinWithPhotoPath(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "mediaTagName"    # Ljava/lang/String;
    .param p3, "imgPath"    # Ljava/lang/String;
    .param p4, "messageExt"    # Ljava/lang/String;
    .param p5, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWeixinWithPhotoPath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 8
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "mediaTagName"    # Ljava/lang/String;
    .param p6, "thumbImgData"    # [B
    .param p7, "thumbImgDataLen"    # I
    .param p8, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWeixinWithUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V

    .line 265
    return-void
.end method

.method public WGSendToWeixinWithVideo(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "thumbUrl"    # Ljava/lang/String;
    .param p5, "videoUrl"    # Ljava/lang/String;
    .param p6, "filePath"    # Ljava/lang/String;
    .param p7, "mediaTagName"    # Ljava/lang/String;
    .param p8, "mediaAction"    # Ljava/lang/String;
    .param p9, "mediaExt"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-virtual {p1}, Lcom/tencent/msdk/api/eWechatScene;->val()I

    move-result v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSendToWeixinWithVideo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public WGSetGroupObserver(Lcom/tencent/msdk/api/WGGroupObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/tencent/msdk/api/WGGroupObserver;

    .prologue
    .line 137
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setGroupObserver(Lcom/tencent/msdk/api/WGGroupObserver;)V

    .line 138
    return-void
.end method

.method public WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V
    .locals 0
    .param p1, "d"    # Lcom/tencent/msdk/api/WGPlatformObserver;

    .prologue
    .line 122
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setPlatformObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V

    .line 123
    return-void
.end method

.method public WGSetPermission(I)V
    .locals 0
    .param p1, "permissions"    # I

    .prologue
    .line 219
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSetPermission(I)V

    .line 220
    return-void
.end method

.method public WGSetPushTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 604
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSetPushTag(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public WGSetRealNameAuthObserver(Lcom/tencent/msdk/api/WGRealNameAuthObserver;)V
    .locals 0
    .param p1, "d"    # Lcom/tencent/msdk/api/WGRealNameAuthObserver;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setRealNameAuthObserver(Lcom/tencent/msdk/api/WGRealNameAuthObserver;)V

    .line 128
    return-void
.end method

.method public WGSetSaveUpdateObserver(Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;

    .prologue
    .line 142
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setSaveUpdateObserver(Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;)V

    .line 143
    return-void
.end method

.method public WGSetWebviewObserver(Lcom/tencent/msdk/api/WGWebviewObserver;)V
    .locals 0
    .param p1, "d"    # Lcom/tencent/msdk/api/WGWebviewObserver;

    .prologue
    .line 132
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/NotifyManager;->setWebviewObserver(Lcom/tencent/msdk/api/WGWebviewObserver;)V

    .line 133
    return-void
.end method

.method public WGShareToWXGameline([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "gameExtra"    # Ljava/lang/String;

    .prologue
    .line 635
    if-eqz p1, :cond_0

    .line 636
    array-length v0, p1

    invoke-static {p1, v0, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGShareToWXGameline([BILjava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    const-string v0, "img data is null"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public WGShowNotice(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGShowNotice(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public WGStartGameStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameStatus"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGStartGameStatus(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public WGStartSaveUpdate(Z)V
    .locals 0
    .param p1, "isUseYYB"    # Z

    .prologue
    .line 495
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGStartSaveUpdate(Z)V

    .line 496
    return-void
.end method

.method public WGSwitchUser(Z)Z
    .locals 1
    .param p1, "switchToLaunchUser"    # Z

    .prologue
    .line 239
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGSwitchUser(Z)Z

    move-result v0

    return v0
.end method

.method public WGTestSpeed(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 339
    .local p1, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGTestSpeed(Ljava/util/ArrayList;)V

    .line 340
    return-void
.end method

.method public WGUnbindQQGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupOpenid"    # Ljava/lang/String;
    .param p2, "unionid"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-static {p1, p2}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGUnbindQQGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public WGUnbindQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V
    .locals 4
    .param p1, "gameGuild"    # Lcom/tencent/msdk/api/GameGuild;

    .prologue
    .line 679
    const-string v0, "WGUnbindQQGroupV2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 680
    const-string v0, "WGUnbindQQGroupV2"

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V

    .line 681
    return-void
.end method

.method public WGUnbindWeiXinGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-static {p1}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->WGUnbindWeiXinGroup(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public handleCallback(Landroid/content/Intent;)V
    .locals 6
    .param p1, "srcIntent"    # Landroid/content/Intent;

    .prologue
    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    .line 158
    :cond_0
    const-string v4, "handleCallBack intent is NULL"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {p1}, Lcom/tencent/msdk/framework/mlog/MLog;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 165
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 174
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 177
    :cond_3
    invoke-static {v1}, Lcom/tencent/msdk/framework/tools/ChannelUtil;->setPlatformIdFromIntent(Landroid/os/Bundle;)V

    .line 178
    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->handelIntent(Landroid/os/Bundle;)V

    .line 179
    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->handelIntent(Landroid/os/Bundle;)V

    .line 180
    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/tencentVideo/TencentVideoSdk;->handelIntent(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logPlatformSDKVersion(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-string v0, "OpenSDK: 3.3.0.lite"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 85
    const-string v0, "WeixinSDKVersionName: android 5.0.8"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 87
    const-string v0, "WeixinSDKVersionCode: 620757000"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 89
    const-string v0, "Mta: 2.2.2"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeixinClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    .line 92
    invoke-static {p1, v1}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq"

    .line 94
    invoke-static {p1, v1}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQGameClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tencent.qqgame"

    .line 97
    invoke-static {p1, v1}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TpushVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/MSDKPushUtil;->getXgVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 104
    const/16 v0, 0x2b5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2776

    if-ne p1, v0, :cond_2

    .line 105
    :cond_0
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$LoginListener;

    invoke-direct {v0}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$LoginListener;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    const/16 v0, 0x2777

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2778

    if-ne p1, v0, :cond_1

    .line 108
    :cond_3
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v0}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    goto :goto_0
.end method

.method public onDestory(Landroid/app/Activity;)V
    .locals 0
    .param p1, "game"    # Landroid/app/Activity;

    .prologue
    .line 212
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->onDestroy()V

    .line 213
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/MSDKPushUtil;->UninitPush()V

    .line 214
    invoke-static {p1}, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->stopInternetConnectionNotifier(Landroid/app/Activity;)V

    .line 215
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->cocosAdapter:Lcom/tencent/msdk/framework/CocosAdapter;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/CocosAdapter;->onPause()V

    .line 200
    invoke-static {}, Lcom/tencent/msdk/framework/task/TaskManager;->getInstance()Lcom/tencent/msdk/framework/task/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/task/TaskManager;->stopTimer()V

    .line 201
    invoke-static {}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->getInstance()Lcom/tencent/msdk/framework/task/TinyTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->stopTimer()V

    .line 202
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->onStop()V

    .line 203
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->cocosAdapter:Lcom/tencent/msdk/framework/CocosAdapter;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/CocosAdapter;->onResume()V

    .line 191
    invoke-static {}, Lcom/tencent/msdk/framework/task/TaskManager;->getInstance()Lcom/tencent/msdk/framework/task/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/task/TaskManager;->startTimer()V

    .line 192
    invoke-static {}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->getInstance()Lcom/tencent/msdk/framework/task/TinyTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->startTimer()V

    .line 193
    invoke-static {}, Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;->onResume()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public wakeUpFromHall(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method
