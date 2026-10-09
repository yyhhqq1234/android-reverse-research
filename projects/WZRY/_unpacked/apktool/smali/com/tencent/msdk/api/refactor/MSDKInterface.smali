.class public interface abstract Lcom/tencent/msdk/api/refactor/MSDKInterface;
.super Ljava/lang/Object;
.source "MSDKInterface.java"


# virtual methods
.method public abstract Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V
.end method

.method public abstract IsDifferentActivity(Landroid/app/Activity;)Ljava/lang/Boolean;
.end method

.method public abstract WGAddCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGAddGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGAddLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J
.end method

.method public abstract WGBindExistQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGBindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGBuglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V
.end method

.method public abstract WGCheckApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z
.end method

.method public abstract WGCheckNeedUpdate()V
.end method

.method public abstract WGCheckYYBInstalled()I
.end method

.method public abstract WGCleanLocation()Z
.end method

.method public abstract WGClearLocalNotifications()V
.end method

.method public abstract WGCreateQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V
.end method

.method public abstract WGCreateWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGDeletePushTag(Ljava/lang/String;)V
.end method

.method public abstract WGEnableCrashReport(ZZ)V
.end method

.method public abstract WGEndGameStatus(Ljava/lang/String;II)V
.end method

.method public abstract WGFeedback(Ljava/lang/String;)V
.end method

.method public abstract WGGetChannelId()Ljava/lang/String;
.end method

.method public abstract WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract WGGetLocationInfo()Z
.end method

.method public abstract WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I
.end method

.method public abstract WGGetNearbyPersonInfo()V
.end method

.method public abstract WGGetNoticeData(Ljava/lang/String;)Ljava/util/Vector;
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
.end method

.method public abstract WGGetPaytokenValidTime()I
.end method

.method public abstract WGGetPf(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract WGGetPfKey()Ljava/lang/String;
.end method

.method public abstract WGGetPlatformAPPVersion(Lcom/tencent/msdk/consts/EPlatform;)Ljava/lang/String;
.end method

.method public abstract WGGetQQGroupCodeV2(Lcom/tencent/msdk/api/GameGuild;)V
.end method

.method public abstract WGGetQQGroupListV2()V
.end method

.method public abstract WGGetRegisterChannelId()Ljava/lang/String;
.end method

.method public abstract WGGetVersion()Ljava/lang/String;
.end method

.method public abstract WGHideScrollNotice()V
.end method

.method public abstract WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z
.end method

.method public abstract WGIsPlatformSupportApi(Lcom/tencent/msdk/consts/EPlatform;)Z
.end method

.method public abstract WGJoinQQGroup(Ljava/lang/String;)V
.end method

.method public abstract WGJoinQQGroupV2(Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;)V
.end method

.method public abstract WGJoinWXGroup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGLogPlatformSDKVersion()V
.end method

.method public abstract WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V
.end method

.method public abstract WGLoginOpt(Lcom/tencent/msdk/consts/EPlatform;I)I
.end method

.method public abstract WGLoginWithLocalInfo()V
.end method

.method public abstract WGLogout()Z
.end method

.method public abstract WGOpenAmsCenter(Ljava/lang/String;)Z
.end method

.method public abstract WGOpenFullScreenWebViewWithJson(Ljava/lang/String;)V
.end method

.method public abstract WGOpenUrl(Ljava/lang/String;)V
.end method

.method public abstract WGOpenUrl(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;)V
.end method

.method public abstract WGOpenWeiXinDeeplink(Ljava/lang/String;)V
.end method

.method public abstract WGQrCodeLogin(Lcom/tencent/msdk/consts/EPlatform;)V
.end method

.method public abstract WGQueryBindGuildV2(Ljava/lang/String;I)V
.end method

.method public abstract WGQueryQQGameFriendsInfo()Z
.end method

.method public abstract WGQueryQQGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGQueryQQGroupInfoV2(Ljava/lang/String;)V
.end method

.method public abstract WGQueryQQGroupKey(Ljava/lang/String;)V
.end method

.method public abstract WGQueryQQMyInfo()Z
.end method

.method public abstract WGQueryWXGameFriendsInfo()Z
.end method

.method public abstract WGQueryWXGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGQueryWXGroupStatus(Ljava/lang/String;Lcom/tencent/msdk/api/eStatusType;)V
.end method

.method public abstract WGQueryWXMyInfo()Z
.end method

.method public abstract WGRealNameAuth(Lcom/tencent/msdk/api/RealNameAuthInfo;)V
.end method

.method public abstract WGRefreshWXToken()V
.end method

.method public abstract WGRemindGuildLeaderV2(Lcom/tencent/msdk/api/GameGuild;)V
.end method

.method public abstract WGReportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
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
.end method

.method public abstract WGReportPrajna(Ljava/lang/String;)V
.end method

.method public abstract WGSendMessageToWechatGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/weixin/MsgBase;Lcom/tencent/msdk/weixin/BtnBase;Ljava/lang/String;)Z
.end method

.method public abstract WGSendToQQ(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract WGSendToQQWithArk(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToQQWithMusic(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;)V
.end method

.method public abstract WGSendToQQWithPhoto(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToQQWithRichPhoto(Ljava/lang/String;Ljava/util/ArrayList;)V
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
.end method

.method public abstract WGSendToQQWithVideo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract WGSendToWXGroup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToWXWithMiniApp(ILjava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
.end method

.method public abstract WGSendToWeixinWithMusic(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BI)V
.end method

.method public abstract WGSendToWeixinWithPhoto(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToWeixinWithPhotoPath(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
.end method

.method public abstract WGSendToWeixinWithVideo(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGSetGroupObserver(Lcom/tencent/msdk/api/WGGroupObserver;)V
.end method

.method public abstract WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V
.end method

.method public abstract WGSetPermission(I)V
.end method

.method public abstract WGSetPushTag(Ljava/lang/String;)V
.end method

.method public abstract WGSetRealNameAuthObserver(Lcom/tencent/msdk/api/WGRealNameAuthObserver;)V
.end method

.method public abstract WGSetSaveUpdateObserver(Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;)V
.end method

.method public abstract WGSetWebviewObserver(Lcom/tencent/msdk/api/WGWebviewObserver;)V
.end method

.method public abstract WGShareToWXGameline([BLjava/lang/String;)V
.end method

.method public abstract WGShowNotice(Ljava/lang/String;)V
.end method

.method public abstract WGStartGameStatus(Ljava/lang/String;)V
.end method

.method public abstract WGStartSaveUpdate(Z)V
.end method

.method public abstract WGSwitchUser(Z)Z
.end method

.method public abstract WGTestSpeed(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract WGUnbindQQGroup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract WGUnbindQQGroupV2(Lcom/tencent/msdk/api/GameGuild;)V
.end method

.method public abstract WGUnbindWeiXinGroup(Ljava/lang/String;)V
.end method

.method public abstract handleCallback(Landroid/content/Intent;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onDestory(Landroid/app/Activity;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract wakeUpFromHall(Landroid/content/Intent;)Z
.end method
