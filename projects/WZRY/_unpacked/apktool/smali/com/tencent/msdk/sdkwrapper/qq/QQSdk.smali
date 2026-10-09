.class public Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;
.super Ljava/lang/Object;
.source "QQSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$LoginListener;,
        Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendStructMessage(Ljava/lang/String;Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;)V
    .locals 13
    .param p0, "openid"    # Ljava/lang/String;
    .param p1, "info"    # Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qqsdk SendStructMessage openid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";scene: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";media_type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";description: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->description:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";musicUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";musicDataUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicDataUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";image_Url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->image_Url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";mediaTagName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->mediaTagName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";imgFilePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";extraScene: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->extraScene:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";messageExt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->messageExt:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";summary: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->summary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";videoPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->videoPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";imgFilePaths size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePaths:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 156
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    if-ne v6, v12, :cond_1

    .line 158
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v3, "params":Landroid/os/Bundle;
    const-string/jumbo v6, "title"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->title:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v6, "summary"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->description:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v6, "targetUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->url:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v6, "imageUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->image_Url:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v6, "cflag"

    iget v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v6, "appName"

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-virtual {v6, v7, v3, v8}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 258
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    if-ne v6, v11, :cond_4

    .line 170
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->getQQAppVersion()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "qqVsersion":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qq version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " compareTo 5.9.5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 172
    if-eqz v5, :cond_2

    const-string v6, "5.9.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    .line 173
    const-string v6, "WGSendToQQWithVideo require MobileQQ 5.9.5 or above"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 176
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 177
    .restart local v3    # "params":Landroid/os/Bundle;
    const-string v6, "req_type"

    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    iget-object v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->summary:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 179
    const-string/jumbo v6, "summary"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->summary:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_3
    const-string/jumbo v6, "videoPath"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->videoPath:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-virtual {v6, v7, v3, v8}, Lcom/tencent/tauth/Tencent;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    .line 185
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v5    # "qqVsersion":Ljava/lang/String;
    :cond_4
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    if-ne v6, v9, :cond_7

    .line 187
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->getQQAppVersion()Ljava/lang/String;

    move-result-object v5

    .line 188
    .restart local v5    # "qqVsersion":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qq version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " compareTo 5.9.5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 189
    if-eqz v5, :cond_5

    const-string v6, "5.9.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_5

    .line 190
    const-string v6, "WGSendToQQWithRichPhoto require MobileQQ 5.9.5 or above"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 193
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v4, "params1":Landroid/os/Bundle;
    const-string v6, "req_type"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    iget-object v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->summary:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 196
    const-string/jumbo v6, "summary"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->summary:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_6
    const-string v6, "imageUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-virtual {v6, v7, v4, v8}, Lcom/tencent/tauth/Tencent;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0

    .line 202
    .end local v4    # "params1":Landroid/os/Bundle;
    .end local v5    # "qqVsersion":Ljava/lang/String;
    :cond_7
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    if-ne v6, v8, :cond_b

    .line 204
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    if-ne v6, v8, :cond_8

    .line 205
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v1, "imgs":Landroid/os/Bundle;
    const-string v6, "req_type"

    invoke-virtual {v1, v6, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v6, "cflag"

    iget v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v6, "imageLocalUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePath:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v6, "appName"

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-virtual {v6, v7, v1, v8}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "imgs":Landroid/os/Bundle;
    :cond_8
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    if-ne v6, v10, :cond_0

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v2, "imgs1":Ljava/util/ArrayList;
    iget-object v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->imgFilePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 215
    .restart local v3    # "params":Landroid/os/Bundle;
    const-string v6, "req_type"

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v6, "imageUrl"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "extParams":Landroid/os/Bundle;
    iget-object v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->extraScene:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 220
    const-string v6, "hulian_extra_scene"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->extraScene:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_9
    iget-object v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->messageExt:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 223
    const-string v6, "hulian_call_back"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->messageExt:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_a
    const-string v6, "extMap"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-virtual {v6, v7, v3, v8}, Lcom/tencent/tauth/Tencent;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0

    .line 230
    .end local v0    # "extParams":Landroid/os/Bundle;
    .end local v2    # "imgs1":Ljava/util/ArrayList;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_b
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    if-ne v6, v10, :cond_c

    .line 232
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 233
    .restart local v3    # "params":Landroid/os/Bundle;
    const-string v6, "req_type"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v6, "targetUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v6, "title"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->title:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v6, "audio_url"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->musicDataUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v6, "imageUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->image_Url:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v6, "summary"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->description:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v6, "appName"

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v6, "cflag"

    iget v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-virtual {v6, v7, v3, v8}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0

    .line 244
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_c
    iget v6, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->media_type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 246
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 247
    .restart local v3    # "params":Landroid/os/Bundle;
    const-string/jumbo v6, "title"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->title:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v6, "summary"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->description:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v6, "targetUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->url:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v6, "imageUrl"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->image_Url:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v6, "share_to_qq_ark_info"

    iget-object v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->messageExt:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v6, "cflag"

    iget v7, p1, Lcom/tencent/msdk/sdkwrapper/qq/ShareInfoForQQ;->scene:I

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v6, "appName"

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    new-instance v8, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;

    invoke-direct {v8}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$ShareListener;-><init>()V

    invoke-virtual {v6, v7, v3, v8}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0
.end method

.method public static native ShareCancel()V
.end method

.method public static native ShareComplete()V
.end method

.method public static native ShareError(Ljava/lang/String;)V
.end method

.method public static addGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "fopenid"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "fopen_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "friend_label"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "add_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tauth/Tencent;->makeFriend(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 266
    return-void
.end method

.method public static getQQAppVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.mobileqq"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 96
    :goto_0
    return-object v2

    .line 88
    :cond_0
    const-string v2, "PackageInfo is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 89
    const-string v2, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    .line 96
    const-string v2, ""

    goto :goto_0
.end method

.method public static getQQSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "3.3.0.lite"

    return-object v0
.end method

.method public static handelIntent(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 274
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extras.getString(\"platform\"):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "platform"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extras.getString(\"current_uin\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "current_uin"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 277
    const-string v5, "platform"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "current_uin"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    const-string v5, "Launch is not from QQ Game Center."

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v5, "fromShemeActivity"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 281
    const-string v5, "Launch is from msdk ShemeActivity."

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    const-string v5, "qq_m"

    invoke-static {v5}, Lcom/tencent/msdk/framework/tools/ChannelUtil;->setPlatformId(Ljava/lang/String;)V

    .line 286
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 287
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "openid"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 288
    const-string v5, "openid"

    const-string v6, "openid"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    :goto_1
    const-string v5, "atoken"

    const-string v6, "atoken"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v5, "ptoken"

    const-string v6, "ptoken"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 296
    .local v1, "extInfo":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 297
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 290
    .end local v1    # "extInfo":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v5, "openid"

    const-string v6, "current_uin"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 300
    .restart local v1    # "extInfo":Lorg/json/JSONObject;
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v5, "extinfo"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->platformEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static isQQInstalled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.tencent.mobileqq"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    const-string v3, "PackageInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    return v2

    .line 60
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 65
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isQQSupportApi()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public static isTIMSupportApi()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public static native loginFail(ILjava/lang/String;)V
.end method

.method public static native platformEvent(Ljava/lang/String;)V
.end method

.method public static qqLogin()V
    .locals 5

    .prologue
    .line 105
    const-string v1, "Launch QQ Login"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "MSDK have not be init!"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "flag"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "msg"

    const-string/jumbo v2, "tencent is not init"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "WGLogin_lauchQQPlatForm"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 114
    const/16 v1, 0x3ea

    const-string v2, "MSDK have not be init!"

    invoke-static {v1, v2}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk;->loginFail(ILjava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 117
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    const-string v2, ""

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    const-string v3, "all"

    new-instance v4, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$LoginListener;

    invoke-direct {v4}, Lcom/tencent/msdk/sdkwrapper/qq/QQSdk$LoginListener;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "flag"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "WGLogin_lauchQQPlatForm"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static native sdkLoginCancel()V
.end method

.method public static native sdkLoginComplete(Ljava/lang/String;)V
.end method

.method public static native sdkLoginError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static setLoginState(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "openid"    # Ljava/lang/String;
    .param p1, "atoken"    # Ljava/lang/String;
    .param p2, "expired"    # J

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    const-string p0, ""

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    const-string p1, ""

    .line 134
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p0}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method
