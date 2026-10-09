.class public Lcom/tencent/msdk/webview/JsBridge;
.super Ljava/lang/Object;
.source "JsBridge.java"


# static fields
.field public static final IS_FULLSCREEN:Ljava/lang/String; = "isFullScreen"

.field public static final JS_METHOD:Ljava/lang/String; = "MsdkMethod"

.field public static final SHARE_ACT:Ljava/lang/String; = "act"

.field public static final SHARE_DESC:Ljava/lang/String; = "desc"

.field public static final SHARE_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final SHARE_GAMETAG:Ljava/lang/String; = "gameTag"

.field public static final SHARE_GAME_DATA:Ljava/lang/String; = "MsgData"

.field public static final SHARE_IMGDATA:Ljava/lang/String; = "imgData"

.field public static final SHARE_IMGFILEPATH:Ljava/lang/String; = "imgFilePath"

.field public static final SHARE_IMGURL:Ljava/lang/String; = "imgUrl"

.field public static final SHARE_IMGURLLEN:Ljava/lang/String; = "imgUrlLen"

.field public static final SHARE_MEDIAID:Ljava/lang/String; = "mediaId"

.field public static final SHARE_MEDIATAGNAME:Ljava/lang/String; = "mediaTagName"

.field public static final SHARE_MESSAGEACTION:Ljava/lang/String; = "messageAction"

.field public static final SHARE_MESSAGEEXT:Ljava/lang/String; = "messageExt"

.field public static final SHARE_MSDKEXTINFO:Ljava/lang/String; = "msdkExtInfo"

.field public static final SHARE_MUSICDATARUL:Ljava/lang/String; = "musicDataUrl"

.field public static final SHARE_MUSICURL:Ljava/lang/String; = "musicUrl"

.field public static final SHARE_PREVIEWTEXT:Ljava/lang/String; = "previewText"

.field public static final SHARE_QQ_FOPENID:Ljava/lang/String; = "fopenid"

.field public static final SHARE_SCENE:Ljava/lang/String; = "scene"

.field public static final SHARE_SUMMARY:Ljava/lang/String; = "summary"

.field public static final SHARE_TARGEURL:Ljava/lang/String; = "targetUrl"

.field public static final SHARE_THUMBIMGDATA:Ljava/lang/String; = "thumbImgData"

.field public static final SHARE_THUMBIMGDATALEN:Ljava/lang/String; = "thumbImgDataLen"

.field public static final SHARE_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_URL:Ljava/lang/String; = "url"

.field public static final SHARE_WXGAMELINE:Ljava/lang/String; = "wxgameline"

.field public static final SHARE_WX_FOPENID:Ljava/lang/String; = "fOpenId"

.field private static final THUMB_SIZE:I = 0xc8

.field private static mActivity:Landroid/app/Activity;

.field private static mWebView:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CloseMSDKWebview(Ljava/lang/String;)V
    .locals 1
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 540
    sget-object v0, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 541
    return-void
.end method

.method public static Init(Lcom/tencent/smtt/sdk/WebView;Landroid/app/Activity;)V
    .locals 0
    .param p0, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    sput-object p0, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 67
    sput-object p1, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method private static WGGetWXGameLinePicture(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "JsonMessage"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 143
    sget-object v9, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    .line 144
    .local v4, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "wxgameline"

    invoke-direct {v2, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v2, "datafile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 146
    const-string v1, ""

    .line 149
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 150
    .local v5, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 151
    .local v7, "length":I
    new-array v0, v7, [B

    .line 152
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 153
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 154
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/tencent/msdk/tools/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    .end local v0    # "buffer":[B
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    :goto_0
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    sget-object v9, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    const-class v10, Lcom/tencent/msdk/webview/JumpShareActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "MsdkMethod"

    const-string v10, "reportGameline"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    sget-object v9, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 175
    .end local v1    # "data":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 155
    .restart local v1    # "data":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    const-string v9, "loading picture data exception"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 170
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v9, "picture data:null"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 172
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "error_type"

    const-string v10, "3"

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v9

    const-string v10, "WGShareToWXGameline"

    invoke-virtual {v9, v11, v10, v8}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 175
    const-string v1, ""

    goto :goto_2
.end method

.method private static WGSendMessageToNative(Ljava/lang/String;)V
    .locals 3
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WGSendMessageToNative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 336
    invoke-static {p0}, Lcom/tencent/msdk/webview/JsBridge;->parseShareParamers(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse JsonParams error, JsonParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    sget-object v1, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static WGSendToQQ(Ljava/lang/String;)V
    .locals 6
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {p0}, Lcom/tencent/msdk/webview/JsBridge;->parseShareParamers(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 347
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_0

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse JsonParams error, JsonParams:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v1, 0x0

    .line 352
    .local v1, "imgUrl":Ljava/lang/String;
    const-string v4, "imgUrl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    const-string v4, "imgUrl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "imgData":Ljava/lang/String;
    const-string v4, "imgData"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 357
    const-string v4, "imgData"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 360
    invoke-static {}, Lcom/tencent/msdk/webview/JsBridge;->getWebViewImagePath()Ljava/lang/String;

    move-result-object v1

    .line 370
    .end local v0    # "imgData":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    const-string v4, "get WebView Image error"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .restart local v0    # "imgData":Ljava/lang/String;
    :cond_3
    const-string v4, "imgData"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v4, "parse img data to path"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 365
    invoke-static {v0}, Lcom/tencent/msdk/webview/JsBridge;->getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 374
    .end local v0    # "imgData":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imgUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 376
    .local v2, "imgUrlLen":I
    const-string v4, "imgUrl"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v4, "imgUrlLen"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    sget-object v4, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static WGSendToQQWithMusic(Ljava/lang/String;)V
    .locals 3
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {p0}, Lcom/tencent/msdk/webview/JsBridge;->parseShareParamers(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse JsonParams error, JsonParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    sget-object v1, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static WGSendToQQWithPhoto(Ljava/lang/String;)V
    .locals 5
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-static {p0}, Lcom/tencent/msdk/webview/JsBridge;->parseShareParamers(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 392
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse JsonParams error, JsonParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 396
    :cond_0
    const/4 v1, 0x0

    .line 397
    .local v1, "imgFilePath":Ljava/lang/String;
    const-string v3, "imgFilePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    const-string v3, "imgFilePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "imgData":Ljava/lang/String;
    const-string v3, "imgData"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    const-string v3, "imgData"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    invoke-static {}, Lcom/tencent/msdk/webview/JsBridge;->getWebViewImagePath()Ljava/lang/String;

    move-result-object v1

    .line 414
    .end local v0    # "imgData":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 415
    const-string v3, "get WebView Image error"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    .restart local v0    # "imgData":Ljava/lang/String;
    :cond_3
    const-string v3, "imgData"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-static {v0}, Lcom/tencent/msdk/webview/JsBridge;->getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 418
    .end local v0    # "imgData":Ljava/lang/String;
    :cond_4
    const-string v3, "imgFilePath"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    sget-object v3, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static WGSendToWeiXinWithUrl(Ljava/lang/String;)V
    .locals 1
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/msdk/webview/JsBridge;->sendWeixinShareData(Ljava/lang/String;Z)V

    .line 454
    return-void
.end method

.method private static WGSendToWeixin(Ljava/lang/String;)V
    .locals 1
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/msdk/webview/JsBridge;->sendWeixinShareData(Ljava/lang/String;Z)V

    .line 442
    return-void
.end method

.method private static WGSendToWeixinWithMusic(Ljava/lang/String;)V
    .locals 1
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/msdk/webview/JsBridge;->sendWeixinShareData(Ljava/lang/String;Z)V

    .line 446
    return-void
.end method

.method private static WGSendToWeixinWithPhoto(Ljava/lang/String;)V
    .locals 1
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/msdk/webview/JsBridge;->sendWeixinShareData(Ljava/lang/String;Z)V

    .line 450
    return-void
.end method

.method private static WGSetFullScreen(Ljava/lang/String;)V
    .locals 4
    .param p0, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "isFullScreen"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 134
    .local v1, "isFullScreen":Z
    sget-object v3, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/tencent/msdk/webview/WebViewActivity;

    if-eqz v3, :cond_0

    .line 135
    sget-object v3, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-virtual {v3, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->setFullScreen(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "isFullScreen":Z
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static canResolved(Ljava/lang/String;)Z
    .locals 6
    .param p0, "JsonMessage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const-string v4, "JsonMessage is empty"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/high16 v5, 0x300000

    if-le v4, v5, :cond_2

    .line 76
    const-string v4, "js content is to large the size should Less than 3M"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the message from javescript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 81
    const-string v3, ""

    .line 82
    .local v3, "methodName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "isMsdkMethod":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "MsdkMethod"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v3}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse JsonMessage error, JsonMessage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 231
    const-string v9, "data is empty"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 232
    const-string v6, ""

    .line 291
    :cond_0
    :goto_0
    return-object v6

    .line 234
    :cond_1
    const-string v6, ""

    .line 237
    .local v6, "imagePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v9, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/tencent/msdk/tools/FileUtils;->getAppExternalRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    const-string v10, "msdk_webview"

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v1, "dir":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 241
    invoke-static {v1}, Lcom/tencent/msdk/tools/FileUtils;->delFiles(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 242
    const-string v9, "create sdcard file error"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 243
    const-string v6, ""

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 247
    const-string v8, ""

    .line 248
    .local v8, "thumbName":Ljava/lang/String;
    const-string v9, "image/png"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_4

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "thumb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 255
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v5, "imageFile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 258
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 260
    :cond_3
    const/4 v3, 0x0

    .line 262
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 263
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v9, "base64,"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 265
    .local v7, "index":I
    if-eq v7, v12, :cond_6

    .line 266
    add-int/lit8 v9, v7, 0x7

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "datas":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/tencent/msdk/tools/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 271
    .end local v0    # "datas":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 279
    if-eqz v4, :cond_8

    .line 281
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 282
    const/4 v5, 0x0

    .line 283
    const/4 p0, 0x0

    move-object v3, v4

    .line 287
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 250
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "imageFile":Ljava/io/File;
    .end local v7    # "index":I
    :cond_4
    const-string v9, "image/jpeg"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_5

    .line 251
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "thumb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 253
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "thumb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 269
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "imageFile":Ljava/io/File;
    .restart local v7    # "index":I
    :cond_6
    const/4 v9, 0x0

    :try_start_3
    invoke-static {p0, v9}, Lcom/tencent/msdk/tools/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 272
    .end local v7    # "index":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 274
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    if-eqz v3, :cond_0

    .line 281
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 282
    const/4 v5, 0x0

    .line 283
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 284
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "index":I
    :catch_1
    move-exception v2

    .line 286
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 287
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 284
    .end local v7    # "index":I
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 286
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 275
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 277
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 279
    if-eqz v3, :cond_0

    .line 281
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 282
    const/4 v5, 0x0

    .line 283
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 284
    :catch_4
    move-exception v2

    .line 286
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v3, :cond_7

    .line 281
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 282
    const/4 v5, 0x0

    .line 283
    const/4 p0, 0x0

    .line 287
    :cond_7
    :goto_6
    throw v9

    .line 284
    :catch_5
    move-exception v2

    .line 286
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 275
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 272
    :catch_7
    move-exception v2

    goto :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "index":I
    :cond_8
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private static getWebViewImageData(Z)[B
    .locals 14
    .param p0, "isBigImage"    # Z

    .prologue
    const/4 v8, 0x0

    const/16 v13, 0xc8

    const/16 v12, 0x5a

    const/high16 v11, 0x43480000    # 200.0f

    const/4 v10, 0x1

    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, "imageData":[B
    sget-object v9, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 181
    sget-object v9, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v9}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 183
    .local v5, "sourceImage":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 184
    const-string v9, "get Image Data error, sourceImage is null"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    move-object v4, v3

    .line 226
    .end local v3    # "imageData":[B
    .local v4, "imageData":[B
    :goto_0
    return-object v8

    .line 187
    .end local v4    # "imageData":[B
    .restart local v3    # "imageData":[B
    :cond_0
    if-eqz p0, :cond_1

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v8, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 192
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    sget-object v8, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isBigImage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";imgaeDataLegth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Byte"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move-object v4, v3

    .end local v3    # "imageData":[B
    .restart local v4    # "imageData":[B
    move-object v8, v3

    .line 226
    goto :goto_0

    .line 193
    .end local v4    # "imageData":[B
    .restart local v3    # "imageData":[B
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v6, 0x0

    .line 198
    .local v6, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v7, v9

    .line 199
    .local v7, "w":F
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v2, v9

    .line 200
    .local v2, "h":F
    cmpl-float v9, v7, v2

    if-lez v9, :cond_2

    .line 201
    div-float v9, v2, v7

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-static {v5, v13, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 207
    :goto_2
    if-nez v6, :cond_3

    .line 208
    const-string v9, "get Image Data error, thumbBmp is null"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v3

    .line 210
    .end local v3    # "imageData":[B
    .restart local v4    # "imageData":[B
    goto :goto_0

    .line 204
    .end local v4    # "imageData":[B
    .restart local v3    # "imageData":[B
    :cond_2
    div-float v9, v7, v2

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-static {v5, v9, v13, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2

    .line 212
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v8, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 216
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 217
    :catch_1
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static getWebViewImagePath()Ljava/lang/String;
    .locals 10

    .prologue
    .line 295
    const-string v4, ""

    .line 297
    .local v4, "imagePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/tencent/msdk/tools/FileUtils;->getAppExternalRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    const-string v8, "msdk_webview"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 299
    invoke-static {v0}, Lcom/tencent/msdk/tools/FileUtils;->delFiles(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 300
    const-string v4, ""

    .line 331
    .end local v4    # "imagePath":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 303
    .restart local v4    # "imagePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "thumb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "thumbName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v3, "imageFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 308
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 310
    :cond_1
    sget-object v7, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 311
    sget-object v7, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 313
    .local v5, "thumb":Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 314
    const-string v4, ""

    goto :goto_0

    .line 317
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 318
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 319
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v5, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 320
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 321
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 322
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    sget-object v7, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/WebView;->setDrawingCacheEnabled(Z)V

    .line 329
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 331
    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 325
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 326
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static parseMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "JsonMessage"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v6, Lcom/tencent/msdk/webview/JsBridge;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v6, :cond_0

    .line 98
    const-string v6, "JsBridge error, mWebView is null"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 99
    const-string v6, ""

    .line 126
    :goto_0
    return-object v6

    .line 101
    :cond_0
    sget-object v6, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    if-nez v6, :cond_1

    .line 102
    const-string v6, "JsBridge error, mActivity is null"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 103
    const-string v6, ""

    goto :goto_0

    .line 106
    :cond_1
    const-string v4, ""

    .line 108
    .local v4, "methodName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "json":Lorg/json/JSONObject;
    const-string v6, "MsdkMethod"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    const-class v0, Lcom/tencent/msdk/webview/JsBridge;

    .line 111
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/tencent/msdk/webview/JsBridge;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 113
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 114
    .local v5, "result":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 117
    :cond_2
    const-string v6, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 118
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/tencent/msdk/webview/JsBridge;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse JsonMessage error, JsonMessage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 126
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    const-string v6, ""

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static parseShareParamers(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "JsonParams"    # Ljava/lang/String;

    .prologue
    .line 496
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/tencent/msdk/webview/JumpShareActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 500
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "MsdkMethod"

    const-string v5, "MsdkMethod"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v4, "scene"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 508
    const-string v4, "scene"

    const-string v5, "scene"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 510
    :cond_0
    const-string/jumbo v4, "title"

    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v4, "desc"

    const-string v5, "desc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string/jumbo v4, "url"

    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v4, "musicUrl"

    const-string v5, "musicUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v4, "musicDataUrl"

    const-string v5, "musicDataUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v4, "fopenid"

    const-string v5, "fopenid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string/jumbo v4, "summary"

    const-string/jumbo v5, "summary"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string/jumbo v4, "targetUrl"

    const-string/jumbo v5, "targetUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v4, "previewText"

    const-string v5, "previewText"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v4, "gameTag"

    const-string v5, "gameTag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v4, "mediaTagName"

    const-string v5, "mediaTagName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v4, "messageExt"

    const-string v5, "messageExt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v4, "messageAction"

    const-string v5, "messageAction"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v4, "fOpenId"

    const-string v5, "fOpenId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v4, "description"

    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v4, "mediaId"

    const-string v5, "mediaId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v4, "msdkExtInfo"

    const-string v5, "msdkExtInfo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v4, "act"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 528
    const-string v4, "act"

    const-string v5, "act"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 530
    :cond_1
    const-string v4, "imgUrl"

    const-string v5, "imgUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v4, "imgFilePath"

    const-string v5, "imgFilePath"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v4, "imgData"

    const-string v5, "imgData"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v4, "MsgData"

    const-string v5, "MsgData"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JsonParams:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move-object v2, v3

    .line 535
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 501
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse JsonParams error, JsonParams:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 503
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sendWeixinShareData(Ljava/lang/String;Z)V
    .locals 7
    .param p0, "JsonParams"    # Ljava/lang/String;
    .param p1, "isBigImage"    # Z

    .prologue
    .line 457
    const/4 v3, 0x0

    .line 458
    .local v3, "thumbImgData":[B
    const/4 v4, 0x0

    .line 460
    .local v4, "thumbImgDataLen":I
    const/4 v1, 0x0

    .line 461
    .local v1, "imgPath":Ljava/lang/String;
    invoke-static {p0}, Lcom/tencent/msdk/webview/JsBridge;->parseShareParamers(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 462
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse JsonParams error, JsonParams:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 493
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v5, "imgData"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 468
    const-string v5, "imgData"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "imgData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 470
    invoke-static {p1}, Lcom/tencent/msdk/webview/JsBridge;->getWebViewImageData(Z)[B

    move-result-object v3

    .line 477
    .end local v0    # "imgData":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 478
    const-string v5, "get image data error, thumbImgData is null"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    .restart local v0    # "imgData":Ljava/lang/String;
    :cond_2
    const-string v5, "imgData"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-static {v0}, Lcom/tencent/msdk/webview/JsBridge;->getJsImgDataPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 481
    .end local v0    # "imgData":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 482
    array-length v4, v3

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "thumbImgDataLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v5, "thumbImgData"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 485
    const-string/jumbo v5, "thumbImgDataLen"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    :goto_2
    sget-object v5, Lcom/tencent/msdk/webview/JsBridge;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 486
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 487
    const-string v5, "imgFilePath"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 489
    :cond_5
    const-string v5, "no data and no path"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
