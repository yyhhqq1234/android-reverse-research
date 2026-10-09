.class public Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;
.super Ljava/lang/Object;
.source "RealNameWrapper.java"


# static fields
.field public static final eMSDK_H5RealName_OpenWebview:I = 0x5

.field public static final eMSDK_H5RealName_ReturnAndLoginFail:I = 0x8

.field public static final eMSDK_H5RealName_ReturnAndLoginSucceed:I = 0x7

.field public static final eMSDK_H5RealName_ReturnAndNoNotify:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartRealNameAuth(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "userPlatform"    # I
    .param p1, "userOpenid"    # Ljava/lang/String;
    .param p2, "userAccesstoken"    # Ljava/lang/String;
    .param p3, "userNickName"    # Ljava/lang/String;
    .param p4, "userExtInfo"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "RealNameWrapper StartRealNameAuth"

    invoke-static {v0}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->getInstance()Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v7, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper$1;

    invoke-direct {v7}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper$1;-><init>()V

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->StartRealNameAuth(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/realnameauth/RealNameAuthListener;)V

    .line 39
    return-void
.end method

.method public static native onRealNameAuthNotifyNative(ILjava/lang/String;)V
.end method

.method public static native reportData(I)V
.end method

.method public static native sendRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native startRealNameNativeView()V
.end method
