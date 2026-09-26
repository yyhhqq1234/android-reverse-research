.class public Lcom/netease/unisdk/gmbridge/view/WebViewDialog;
.super Lcom/netease/unisdk/gmbridge/view/BaseDialog;
.source "WebViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge WebViewDialog"


# instance fields
.field private mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

.field private mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

.field private mCameraImgPath:Ljava/lang/String;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mLayoutId:I

.field private mRemoteUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 62
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v1, "uni_gm_web_dialog_landscape"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mLayoutId:I

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 68
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$1;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 88
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v1, "uni_gm_web_dialog_portrait"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mLayoutId:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->interceptUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->pick()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->capture()V

    return-void
.end method

.method static synthetic access$402(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;)Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    return-object p1
.end method

.method static synthetic access$602(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Lcom/netease/unisdk/gmbridge/device/BatteryInfo;)Lcom/netease/unisdk/gmbridge/device/BatteryInfo;
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    return-object p1
.end method

.method private capture()V
    .locals 8

    .prologue
    .line 341
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    .line 344
    const-string v5, "gm_bridge WebViewDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCameraImgPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "imgFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".gmbridge.fileprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "authority":Ljava/lang/String;
    const-string v5, "gm_bridge WebViewDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "authority = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v4, 0x0

    .line 353
    .local v4, "photoUri":Landroid/net/Uri;
    :try_start_0
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 357
    :goto_1
    if-nez v4, :cond_2

    .line 359
    :try_start_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 364
    :cond_2
    :goto_2
    if-eqz v4, :cond_0

    .line 365
    const-string v5, "output"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    const/16 v6, 0x144

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    const/4 v5, 0x0

    sput-object v5, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "gm_bridge WebViewDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUriForFile Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 361
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "gm_bridge WebViewDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromFile Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getContentHeight()I
    .locals 2

    .prologue
    .line 183
    sget v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    int-to-float v0, v0

    sget v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 186
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    goto :goto_0
.end method

.method private getContentWidth()I
    .locals 2

    .prologue
    .line 175
    sget v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 176
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 178
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    goto :goto_0
.end method

.method private initWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 146
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 147
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 151
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$6;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$7;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$7;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 171
    return-void
.end method

.method private interceptUrl(Ljava/lang/String;)Z
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 231
    const/4 v13, 0x0

    .line 291
    :goto_0
    return v13

    .line 233
    :cond_0
    const-string v13, "csa/upload/image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 235
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mRemoteUrl:Ljava/lang/String;

    .line 236
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->showImgPickDialog(Z)V

    .line 291
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v13, 0x0

    goto :goto_0

    .line 239
    :cond_2
    const-string v13, "csa/info"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 240
    const-string v13, "callback"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "callbackFunc":Ljava/lang/String;
    const-string v13, "gm_bridge WebViewDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "info callback = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/netease/unisdk/gmbridge/device/DeviceUtil;->getDeviceInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/device/DeviceInfo;

    move-result-object v4

    .line 243
    .local v4, "deviceInfo":Lcom/netease/unisdk/gmbridge/device/DeviceInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    if-eqz v13, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    iget-object v13, v13, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    iput-object v13, v4, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->batteryLevel:Ljava/lang/String;

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryInfo:Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    iget-object v13, v13, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    iput-object v13, v4, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->batteryStatus:Ljava/lang/String;

    .line 247
    :cond_3
    invoke-virtual {v4}, Lcom/netease/unisdk/gmbridge/device/DeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "jsonStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    .end local v3    # "callbackFunc":Ljava/lang/String;
    .end local v4    # "deviceInfo":Lcom/netease/unisdk/gmbridge/device/DeviceInfo;
    .end local v7    # "jsonStr":Ljava/lang/String;
    :cond_4
    const-string v13, "csa/start_record"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 250
    const-string v13, "callback"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .restart local v3    # "callbackFunc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v13

    new-instance v14, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$8;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->startRecord(Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;)V

    goto :goto_1

    .line 257
    .end local v3    # "callbackFunc":Ljava/lang/String;
    :cond_5
    const-string v13, "csa/stop_record"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopRecord()V

    goto/16 :goto_1

    .line 259
    :cond_6
    const-string v13, "csa/cancel_record"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->cancelRecord()V

    goto/16 :goto_1

    .line 261
    :cond_7
    const-string v13, "csa/play_record"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 262
    const-string v13, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "playUrl":Ljava/lang/String;
    const-string v13, "name"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "name":Ljava/lang/String;
    const-string v13, "gm_bridge WebViewDialog"

    const-string v14, "playUrl = %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v13, v14, v15}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    const-string v13, "gm_bridge WebViewDialog"

    const-string v14, "name = %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-static {v13, v14, v15}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v13

    invoke-virtual {v13, v10, v9}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->playback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 267
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "playUrl":Ljava/lang/String;
    :cond_8
    const-string v13, "csa/stop_play"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopPlayback()V

    goto/16 :goto_1

    .line 269
    :cond_9
    const-string v13, "csa/set_window_size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 270
    const/high16 v12, 0x3f800000    # 1.0f

    .line 271
    .local v12, "wp":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 273
    .local v5, "hp":F
    :try_start_0
    const-string v13, "w"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 277
    :goto_2
    :try_start_1
    const-string v13, "h"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 280
    :goto_3
    const-string v13, "align"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "align":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mDialogView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    int-to-float v14, v14

    mul-float/2addr v14, v12

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v5

    float-to-int v15, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->updateViewSizeAndPosition(Landroid/view/View;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 282
    .end local v2    # "align":Ljava/lang/String;
    .end local v5    # "hp":F
    .end local v12    # "wp":F
    :cond_a
    const-string v13, "csa/play_video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 283
    const-string v13, "link"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "link":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 286
    .local v11, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v13, "video/mp4"

    invoke-virtual {v6, v11, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    const/4 v13, 0x0

    sput-object v13, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    goto/16 :goto_1

    .line 278
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "link":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    .restart local v5    # "hp":F
    .restart local v12    # "wp":F
    :catch_0
    move-exception v13

    goto :goto_3

    .line 274
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method private isIntentAvailable(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 301
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private pick()V
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x143

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 375
    const/4 v1, 0x0

    sput-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sRefer:Ljava/lang/String;

    .line 376
    return-void
.end method

.method private registerBatteryReceiver()V
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .line 423
    :cond_0
    new-instance v1, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$11;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-direct {v1, v2}, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;-><init>(Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .line 435
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    return-void
.end method

.method private setBackground()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    const-string v1, "#e0000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private showImgPickDialog(Z)V
    .locals 8
    .param p1, "hasCamera"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v4, "uni_gm_img_pick_dlg_title"

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 308
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v5, "uni_gm_img_pick_dlg_items"

    invoke-static {v4, v5}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "itemses":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 311
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 312
    .local v1, "items":[Ljava/lang/CharSequence;
    aget-object v3, v2, v6

    aput-object v3, v1, v6

    .line 313
    aget-object v3, v2, v7

    aput-object v3, v1, v7

    .line 318
    :goto_0
    new-instance v3, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;

    invoke-direct {v3, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$9;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 338
    return-void

    .line 315
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_0
    new-array v1, v7, [Ljava/lang/CharSequence;

    .line 316
    .restart local v1    # "items":[Ljava/lang/CharSequence;
    aget-object v3, v2, v6

    aput-object v3, v1, v6

    goto :goto_0
.end method

.method private startUpload(Ljava/lang/Object;)V
    .locals 3
    .param p1, "imgUri"    # Ljava/lang/Object;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mRemoteUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->obtain(Ljava/lang/String;)Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    move-result-object v0

    .line 391
    .local v0, "upInfo":Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
    const-string v1, "gm_bridge WebViewDialog"

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "uploading"

    iget-object v2, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$10;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-static {v1, v0, p1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V

    goto :goto_0
.end method

.method private updateViewSizeAndPosition(Landroid/view/View;IILjava/lang/String;)V
    .locals 5
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "align"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 191
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v0, "contentViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenHeight:I

    sub-int/2addr v3, p3

    div-int/lit8 v2, v3, 0x2

    .line 193
    .local v2, "tbMargin":I
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 194
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 195
    const-string v3, "left"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 197
    iget v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    sub-int/2addr v3, p2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 208
    return-void

    .line 198
    :cond_0
    const-string v3, "right"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 200
    iget v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    sub-int/2addr v3, p2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 202
    :cond_1
    iget v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mScreenWidth:I

    sub-int/2addr v3, p2

    div-int/lit8 v1, v3, 0x2

    .line 203
    .local v1, "lrMargin":I
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 204
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 441
    const-string v1, "gm_bridge WebViewDialog"

    const-string v2, "destroy"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 444
    iput-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mBatteryReceiver:Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 448
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 449
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 452
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 453
    iput-object v3, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    .line 455
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopRecord()V

    .line 456
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->stopPlayback()V

    .line 457
    sget-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    if-eqz v1, :cond_3

    .line 458
    sget-object v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    invoke-interface {v1}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;->onClosed()V

    .line 459
    sput-object v3, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sPageCloseListener:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IPageCloseListener;

    .line 461
    :cond_3
    sput-object v3, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .line 462
    invoke-super {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->destroy()V

    .line 463
    return-void
.end method

.method protected getDialogHeight()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, -0x1

    return v0
.end method

.method protected getDialogWidth()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method protected initDialogView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mLayoutId:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "content_view"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContentView:Landroid/widget/RelativeLayout;

    .line 94
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->getContentWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->getContentHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->updateViewSizeAndPosition(Landroid/view/View;IILjava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "close"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$2;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$2;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "back"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$3;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$3;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "forward"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "refresh"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$5;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$5;-><init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mContext:Landroid/content/Context;

    const-string v2, "web"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    .line 130
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->initWebView()V

    .line 131
    return-object v0
.end method

.method public jsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 408
    const-string v1, "javascript: %s( \'%s\' )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "url":Ljava/lang/String;
    const-string v1, "gm_bridge WebViewDialog"

    const-string v2, "jsCallback url = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onCaptureResult()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mCameraImgPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->startUpload(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public onPickResult(Landroid/net/Uri;)V
    .locals 0
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->startUpload(Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-super {p0}, Lcom/netease/unisdk/gmbridge/view/BaseDialog;->show()V

    .line 212
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->setBackground()V

    .line 213
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 215
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->registerBatteryReceiver()V

    .line 216
    return-void
.end method
