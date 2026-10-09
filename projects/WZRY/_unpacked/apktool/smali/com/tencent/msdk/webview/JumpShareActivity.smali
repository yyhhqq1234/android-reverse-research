.class public Lcom/tencent/msdk/webview/JumpShareActivity;
.super Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;
.source "JumpShareActivity.java"


# static fields
.field private static final THUMB_SIZE:I = 0xc8

.field public static final VIEW_IPC_MESSAGE:Ljava/lang/String; = "view_ipc_message"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->tryLoadSo()V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/webview/JumpShareActivity;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private getShareImgData(Ljava/lang/String;)[B
    .locals 9
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc8

    .line 144
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 145
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 146
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 147
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 149
    .local v4, "h":I
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 150
    .local v6, "w":I
    const/4 v1, 0x1

    .line 151
    .local v1, "be":I
    if-le v6, v4, :cond_2

    if-le v6, v8, :cond_2

    .line 152
    div-int/lit16 v1, v6, 0xc8

    .line 156
    :cond_0
    :goto_0
    if-gtz v1, :cond_1

    .line 157
    const/4 v1, 0x1

    .line 159
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "picture scale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 160
    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v2, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 164
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 172
    :goto_1
    return-object v7

    .line 153
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-ge v6, v4, :cond_0

    if-le v4, v8, :cond_0

    .line 154
    div-int/lit16 v1, v4, 0xc8

    goto :goto_0

    .line 168
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private handlerWXshareData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "viewMessage"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "json":Lorg/json/JSONObject;
    const-string v6, "MsdkMethod"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    const-string v6, "MsdkMethod"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "msdkMethod":Ljava/lang/String;
    const-string v6, "WGSendToWeixinWithMusic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "WGSendToWeiXinWithUrl"

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "WGSendToWeixin"

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    :cond_0
    const-string v6, "imgFilePath"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    const-string v6, "imgFilePath"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "imgPath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/tencent/msdk/webview/JumpShareActivity;->getShareImgData(Ljava/lang/String;)[B

    move-result-object v1

    .line 108
    .local v1, "imgData":[B
    if-eqz v1, :cond_1

    .line 109
    invoke-static {v1}, Lcom/tencent/msdk/tools/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "imgStr":Ljava/lang/String;
    const-string/jumbo v6, "webview_image_data_string"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v6, "imgFilePath"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    .end local v1    # "imgData":[B
    .end local v2    # "imgPath":Ljava/lang/String;
    .end local v3    # "imgStr":Ljava/lang/String;
    .end local v5    # "msdkMethod":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 120
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local p1    # "viewMessage":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 117
    .restart local p1    # "viewMessage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private recordTbsVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "viewMessage"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "tbs_version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string/jumbo v3, "tbs_version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "tbsVersion":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 135
    sget-object v3, Lcom/tencent/msdk/stat/eBuglyLogLevel;->eBuglyLogLevel_I:Lcom/tencent/msdk/stat/eBuglyLogLevel;

    invoke-static {v3, v2}, Lcom/tencent/msdk/api/WGPlatform;->WGBuglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "tbsVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public finishView()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "view_name_webview"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/tencent/msdk/framework/msdkview/MSDKViewPanel;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget-boolean v2, Lcom/tencent/msdk/api/WGPlatform;->isInited:Z

    if-nez v2, :cond_1

    .line 58
    const-string v2, "Main process is killed. MSDK need to be init. Please close browser and restart."

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/JumpShareActivity;->finish()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/JumpShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/webview/JumpShareActivity;->mIntent:Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/tencent/msdk/webview/JumpShareActivity;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 74
    const-string v2, "Intent to JumpShareActivity is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/JumpShareActivity;->finish()V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/tencent/msdk/webview/JumpShareActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "view_ipc_message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "viewMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    iget-object v2, p0, Lcom/tencent/msdk/webview/JumpShareActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "MsdkMethod"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "methodName":Ljava/lang/String;
    const-string v2, "notifyClose"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    const-string v2, "Browser close, but router is not match."

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 94
    .end local v0    # "methodName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/JumpShareActivity;->finish()V

    goto :goto_0

    .line 86
    .restart local v0    # "methodName":Ljava/lang/String;
    :cond_3
    const-string v2, "Intent has not ipc message"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/tencent/msdk/webview/JumpShareActivity;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v0    # "methodName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1}, Lcom/tencent/msdk/webview/JumpShareActivity;->recordTbsVersion(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v1}, Lcom/tencent/msdk/webview/JumpShareActivity;->handlerWXshareData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/webview/JumpShareActivity;->sendEvent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public recvEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method
