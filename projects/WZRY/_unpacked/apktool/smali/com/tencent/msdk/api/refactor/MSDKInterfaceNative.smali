.class public Lcom/tencent/msdk/api/refactor/MSDKInterfaceNative;
.super Ljava/lang/Object;
.source "MSDKInterfaceNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native WGAddCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGAddGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGAddLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J
.end method

.method public static native WGBindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGBuglyLog(ILjava/lang/String;)V
.end method

.method public static native WGCheckApiSupport(I)Z
.end method

.method public static native WGCheckNeedUpdate()V
.end method

.method public static native WGCheckYYBInstalled()I
.end method

.method public static native WGCleanLocation()Z
.end method

.method public static native WGClearLocalNotifications()V
.end method

.method public static native WGCreateWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGDeletePushTag(Ljava/lang/String;)V
.end method

.method public static native WGEndGameStatus(Ljava/lang/String;II)V
.end method

.method public static native WGFeedback(Ljava/lang/String;)V
.end method

.method public static native WGGetChannelId()Ljava/lang/String;
.end method

.method public static native WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native WGGetLocationInfo()Z
.end method

.method public static native WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I
.end method

.method public static native WGGetNearbyPersonInfo()V
.end method

.method public static native WGGetNoticeData(Ljava/lang/String;)Ljava/util/Vector;
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

.method public static native WGGetPaytokenValidTime()I
.end method

.method public static native WGGetPf(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native WGGetPfKey()Ljava/lang/String;
.end method

.method public static native WGGetPlatformAPPVersion(I)Ljava/lang/String;
.end method

.method public static native WGGetRegisterChannelId()Ljava/lang/String;
.end method

.method public static native WGGetVersion()Ljava/lang/String;
.end method

.method public static native WGHideScrollNotice()V
.end method

.method public static native WGIsPlatformInstalled(I)Z
.end method

.method public static native WGIsPlatformSupportApi(I)Z
.end method

.method public static native WGJoinQQGroup(Ljava/lang/String;)V
.end method

.method public static native WGJoinQQGroupV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGJoinWXGroup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGLogPlatformSDKVersion()V
.end method

.method public static native WGLogin(I)V
.end method

.method public static native WGLoginOpt(II)I
.end method

.method public static native WGLogout()Z
.end method

.method public static native WGOpenFullScreenWebViewWithJson(Ljava/lang/String;)V
.end method

.method public static native WGOpenUrl(Ljava/lang/String;)V
.end method

.method public static native WGOpenUrl(Ljava/lang/String;I)V
.end method

.method public static native WGOpenWeiXinDeeplink(Ljava/lang/String;)V
.end method

.method public static native WGQQGroupV2(Ljava/lang/String;Lcom/tencent/msdk/api/GameGuild;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native WGQrCodeLogin(I)V
.end method

.method public static native WGQueryQQGameFriendsInfo()Z
.end method

.method public static native WGQueryQQGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGQueryQQGroupKey(Ljava/lang/String;)V
.end method

.method public static native WGQueryQQMyInfo()Z
.end method

.method public static native WGQueryWXGameFriendsInfo()Z
.end method

.method public static native WGQueryWXGroupInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGQueryWXGroupStatus(Ljava/lang/String;I)V
.end method

.method public static native WGQueryWXMyInfo()Z
.end method

.method public static native WGRealNameAuth(Lcom/tencent/msdk/api/RealNameAuthInfo;)V
.end method

.method public static native WGRefreshWXToken()V
.end method

.method public static native WGReportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
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

.method public static native WGReportPrajna(Ljava/lang/String;)V
.end method

.method public static native WGSendMessageToWechatGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native WGSendToQQ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native WGSendToQQGameFriend(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native WGSendToQQWithArk(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToQQWithMusic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToQQWithPhoto(ILjava/lang/String;)V
.end method

.method public static native WGSendToQQWithPhoto(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToQQWithRichPhoto(Ljava/lang/String;Ljava/util/ArrayList;)V
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

.method public static native WGSendToQQWithVideo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native WGSendToWXGameFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native WGSendToWXGroup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToWXWithMiniApp(ILjava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
.end method

.method public static native WGSendToWeixinWithMusic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToWeixinWithPhoto(ILjava/lang/String;[BI)V
.end method

.method public static native WGSendToWeixinWithPhoto(ILjava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToWeixinWithPhotoPath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSendToWeixinWithUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
.end method

.method public static native WGSendToWeixinWithVideo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGSetPermission(I)V
.end method

.method public static native WGSetPushTag(Ljava/lang/String;)V
.end method

.method public static native WGShareToWXGameline([BILjava/lang/String;)V
.end method

.method public static native WGShowNotice(Ljava/lang/String;)V
.end method

.method public static native WGStartGameStatus(Ljava/lang/String;)V
.end method

.method public static native WGStartSaveUpdate(Z)V
.end method

.method public static native WGSwitchUser(Z)Z
.end method

.method public static native WGTestSpeed(Ljava/util/ArrayList;)V
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

.method public static native WGUnbindQQGroup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native WGUnbindWeiXinGroup(Ljava/lang/String;)V
.end method

.method public static native init()V
.end method

.method public static native onDestroy()V
.end method

.method public static native onResume()V
.end method

.method public static native onStop()V
.end method
