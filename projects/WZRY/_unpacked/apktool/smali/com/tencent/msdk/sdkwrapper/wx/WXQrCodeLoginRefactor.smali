.class public Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;
.super Ljava/lang/Object;
.source "WXQrCodeLoginRefactor.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/diffdev/OAuthListener;


# static fields
.field private static volatile instance:Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;


# instance fields
.field private useMSDKLayout:Z

.field private wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->useMSDKLayout:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    .line 41
    invoke-static {}, Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;->getDiffDevOAuth()Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->instance:Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->instance:Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;

    invoke-direct {v0}, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;-><init>()V

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->instance:Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->instance:Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateQrCodeImgActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "qrcodeImgPath"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v0, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 191
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 192
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    if-eqz p2, :cond_0

    .line 195
    const-string v2, "qrcode_img"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 199
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    .line 69
    const-string v0, "cancel scan code login"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->stopAuth()Z

    .line 71
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->removeAllListeners()V

    .line 72
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->detach()V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const/16 v0, 0x7d2

    const-string/jumbo v1, "weixin qc code login, user cancel"

    invoke-static {v0, v1}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->loginFail(ILjava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V
    .locals 5
    .param p1, "errCode"    # Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-boolean v2, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->useMSDKLayout:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 161
    const-string v2, "com.tencent.msdk.weixin.qrcode.HIDE_AUTH"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->updateQrCodeImgActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 166
    .local v0, "isOk":Z
    sget-object v2, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor$1;->$SwitchMap$com$tencent$mm$opensdk$diffdev$OAuthErrCode:[I

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 181
    const/16 v2, 0x7d4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthFinish errCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->loginFail(ILjava/lang/String;)V

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "flag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v2

    const-string v3, "WGQrCodeLogin_AuthFinsh"

    invoke-virtual {v2, v0, v3, v1}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 187
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-static {p2}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->firstLogin(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const/16 v2, 0x7d2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthFinish errCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", user cancel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->loginFail(ILjava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAuthGotQrcode(Ljava/lang/String;[B)V
    .locals 10
    .param p1, "qrcodeImgPath"    # Ljava/lang/String;
    .param p2, "imgBuf"    # [B

    .prologue
    const/4 v9, 0x0

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "qrcodeImgPath is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    .line 103
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    :cond_1
    if-nez p1, :cond_5

    .line 136
    const/16 v7, 0x7d4

    const-string/jumbo v8, "weixin qr code login, get qr code image error!"

    invoke-static {v7, v8}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->loginFail(ILjava/lang/String;)V

    .line 145
    :cond_2
    :goto_1
    return-void

    .line 104
    :cond_3
    if-eqz p2, :cond_4

    .line 105
    array-length v7, p2

    invoke-static {p2, v9, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 108
    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, "cw":Landroid/content/ContextWrapper;
    const-string v7, "msdk"

    invoke-virtual {v1, v7, v9}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, "dir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "qrcodeImg.png"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v6, "path":Ljava/io/File;
    const/4 v4, 0x0

    .line 114
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 116
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p1

    .line 121
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 124
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 122
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 125
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 117
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 118
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 122
    :catch_2
    move-exception v3

    .line 123
    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 121
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 124
    :goto_4
    throw v7

    .line 122
    :catch_3
    move-exception v3

    .line 123
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 128
    .end local v1    # "cw":Landroid/content/ContextWrapper;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "path":Ljava/io/File;
    :cond_4
    const-string v7, "qrcodeImgPath and imgBuf are both null"

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_5
    iget-boolean v7, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->useMSDKLayout:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 140
    const-string v7, "com.tencent.msdk.weixin.qrcode.QRCODE_READY"

    invoke-direct {p0, v7, p1}, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->updateQrCodeImgActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .restart local v1    # "cw":Landroid/content/ContextWrapper;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "path":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 117
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public onGetQrSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "nonceStr"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "useMSDKLayout"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->stopAuth()Z

    .line 83
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->removeAllListeners()V

    .line 84
    const-string v2, "snsapi_login,snsapi_userinfo,snsapi_friend,snsapi_message"

    .line 85
    .local v2, "scope":Ljava/lang/String;
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->wxOAuth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/opensdk/diffdev/OAuthListener;)Z

    move-result v7

    .line 87
    .local v7, "authRet":Z
    if-nez v7, :cond_0

    .line 88
    const/16 v0, 0x7d4

    const-string/jumbo v1, "weixin qr code login, sdk auth fail"

    invoke-static {v0, v1}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->loginFail(ILjava/lang/String;)V

    .line 92
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "flag"

    if-eqz v7, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v0

    const-string v1, "WGQrCodeLogin_Signature"

    invoke-virtual {v0, v7, v1, v8}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 95
    return-void

    .line 93
    :cond_1
    const-string v0, "-1"

    goto :goto_0
.end method

.method public onQrcodeScanned()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 149
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->useMSDKLayout:Z

    if-ne v0, v2, :cond_0

    .line 150
    const-string v0, "com.tencent.msdk.weixin.qrcode.QRCODE_SCANNED"

    invoke-direct {p0, v0, v3}, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->updateQrCodeImgActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v0

    const-string v1, "WGQrCodeLogin_Scanned"

    invoke-virtual {v0, v2, v1, v3}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public startView(Ljava/lang/String;)V
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "json":Lorg/json/JSONObject;
    const-string v6, "nonce"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "nonceStr":Ljava/lang/String;
    const-string/jumbo v6, "timestamp"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "timeStamp":Ljava/lang/String;
    const-string v6, "signature"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "signature":Ljava/lang/String;
    const-string/jumbo v6, "use_msdk_layout"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 62
    .local v5, "useMSDKLayout":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v2, v4, v3, v6}, Lcom/tencent/msdk/sdkwrapper/wx/WXQrCodeLoginRefactor;->onGetQrSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "nonceStr":Ljava/lang/String;
    .end local v3    # "signature":Ljava/lang/String;
    .end local v4    # "timeStamp":Ljava/lang/String;
    .end local v5    # "useMSDKLayout":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
