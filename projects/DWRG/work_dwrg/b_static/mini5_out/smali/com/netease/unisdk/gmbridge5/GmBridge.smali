.class public Lcom/netease/unisdk/gmbridge5/GmBridge;
.super Ljava/lang/Object;
.source "GmBridge.java"


# static fields
.field private static final OPEN_PAGE_AFTER_SETGENTOKENRESPONSE:I = 0x2

.field private static final SHOW_MENUS_AFTER_SETGENTOKENRESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "gm_bridge"

.field public static sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

.field private mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

.field private mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

.field private mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

.field private mRefer:Ljava/lang/String;

.field private mTodoAfterSetGenTokenResponse:I

.field private mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    .line 58
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 59
    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->init(III)V

    .line 60
    new-instance v0, Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-direct {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/GmBridge;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mRefer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/data/DataManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/netease/unisdk/gmbridge5/GmBridge;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge5/GmBridge;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/ITokenRequest;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;ZII)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoGMWebviewActivity(Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoNgWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/unisdk/gmbridge5/GmBridge;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object p0
.end method

.method static synthetic access$802(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netease/unisdk/gmbridge5/GmBridge;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private gotoGMWebviewActivity(Ljava/lang/String;ZII)V
    .locals 3

    .line 266
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    if-eqz v0, :cond_2

    .line 268
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx3;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    const-string v2, "ORIENTATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->THEME_TRANSLUCENT:I

    const-string v2, "THEME_TRANSLUCENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MODE_SHORT_EDGES:I

    const-string v2, "CUTOUT_MODE_SHORT_EDGES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_MARGIN:I

    const-string v2, "CUTOUT_MARGIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER_COLOR:Ljava/lang/String;

    const-string v2, "BLACK_BORDER_COLOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->WEBVIEW_BACKGROUND_COLOR:Ljava/lang/String;

    const-string v2, "WEBVIEW_BACKGROUND_COLOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    const-string v2, "BLACK_BORDER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    const-string v2, "ENABLE_UNISDK_PERMISSION_TIPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS:Ljava/lang/String;

    const-string v2, "UNISDK_PERMISSION_TIPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_GM_PERMISSION_RECORD_TIPS:Ljava/lang/String;

    const-string v2, "UNISDK_GM_PERMISSION_RECORD_TIPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_CHANNEL:Ljava/lang/String;

    const-string v2, "USERAGENT_CHANNEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_EXTEND:Ljava/lang/String;

    const-string v2, "USERAGENT_EXTEND"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_UDID:Ljava/lang/String;

    const-string v2, "USERAGENT_UDID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_JF_GAME_ID:Ljava/lang/String;

    const-string v2, "USERAGENT_JF_GAME_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS2:Ljava/lang/String;

    const-string v2, "UNISDK_PERMISSION_TIPS2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const-string v2, "DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO:I

    const-string v2, "DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    const-string v2, "GM_WEBVIEW_SINGLE_PROCESS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    sget-boolean v1, Lcom/netease/unisdk/gmbridge5/log/NgLog;->isDebug:Z

    const-string v2, "NGLOG_ISDEBUG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_SHOW_LOADING:I

    const-string v2, "GM_SHOW_LOADING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_USE_FONTS:I

    const-string v2, "GM_USE_FONTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CAMERA_PERMISSION:I

    const-string v2, "CAMERA_PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    sget-object v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->WEBVIEW_ORBIT_VERSION:Ljava/lang/String;

    const-string v2, "WEBVIEW_ORBIT_VERSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    sget-boolean v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->IS_HAS_START_UP:Z

    const-string v2, "IS_HAS_START_UP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "GM_I18N_INFO"

    .line 296
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    if-eqz v1, :cond_1

    .line 300
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->unbindService(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 301
    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    .line 303
    :cond_1
    new-instance v1, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    invoke-direct {v1}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;-><init>()V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    .line 304
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->bindService(Landroid/content/Context;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 307
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_3

    .line 309
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 311
    :cond_3
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->THEME_TRANSLUCENT:I

    if-eqz v0, :cond_4

    .line 312
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivityEx2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 314
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v1, "GM_WEBVIEW_URL"

    .line 318
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "GM_HASCUTOUT"

    .line 319
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "CUTOUT_WIDTH"

    .line 320
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "CUTOUT_HEIGHT"

    .line 321
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 323
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/personalinfolist/HookManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 325
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    const/4 p1, 0x0

    .line 326
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    return-void
.end method

.method private gotoNgWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "isSingleProcess"

    const-string v1, "backgroundColor"

    const-string v2, "blackBorderColor"

    const-string v3, "isFullScreen"

    const-string v4, "orientation"

    const-string v5, "1"

    .line 217
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string p2, "methodId"

    const-string v7, "NGWebViewOpenURL"

    .line 223
    invoke-virtual {v6, p2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "URLString"

    .line 224
    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "navigationBarVisible"

    .line 225
    invoke-virtual {v6, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isGmbridge"

    .line 226
    invoke-virtual {v6, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isShowProgressBar"

    .line 229
    sget p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_SHOW_LOADING:I

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "gmbridgeVersion"

    const-string p2, "6.0.2"

    .line 230
    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "gmbridgeLauangeInfo"

    .line 232
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->toJsonStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "gmbridgeUseragentExtend"

    .line 234
    sget-object p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->USERAGENT_EXTEND:Ljava/lang/String;

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "noSetScreenOrientationSensorWhenPlayVideo"

    .line 235
    sget p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SET_SCREEN_ORIENTATION_SENSOR_WHEN_PLAY_VIDEO:I

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "permissionTips"

    .line 236
    sget-object p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS:Ljava/lang/String;

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "permissionTipsOfRefuse"

    .line 237
    sget-object p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->UNISDK_PERMISSION_TIPS2:Ljava/lang/String;

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "enablePermissionTip"

    .line 238
    sget p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    if-eqz p1, :cond_2

    .line 242
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    invoke-virtual {v6, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    :cond_2
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 245
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER:I

    if-nez p1, :cond_3

    const-string p1, "2"

    goto :goto_1

    :cond_3
    move-object p1, v5

    :goto_1
    invoke-virtual {v6, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_4
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER_COLOR:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 248
    sget-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->CUTOUT_BLACK_BORDER_COLOR:Ljava/lang/String;

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_5
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->WEBVIEW_BACKGROUND_COLOR:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->WEBVIEW_BACKGROUND_COLOR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_6
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 254
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->GM_WEBVIEW_SINGLE_PROCESS:I

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const-string v5, "0"

    :goto_2
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    :cond_8
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private hideLoadingDialog()V
    .locals 2

    const-string v0, "gm_bridge"

    const-string v1, "hideLoadingDialog..."

    .line 431
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mLoadingDialog:Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$7;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$7;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private showLoadingDialog()V
    .locals 2

    .line 415
    sget v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->DONT_SHOW_LOADING_DIALOG_WHEN_WAIT_TOKEN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$6;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$6;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "gm_bridge"

    const-string v1, "destroy ##"

    .line 387
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    .line 389
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getInstance()Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    if-eqz v0, :cond_1

    const-string v1, "destroy"

    .line 394
    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->send(Ljava/lang/String;)V

    .line 397
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->shutdown()V

    return-void
.end method

.method public getDataManager()Lcom/netease/unisdk/gmbridge5/data/DataManager;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    return-object v0
.end method

.method public getFloatWindow()Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object v0
.end method

.method public getIPCManager()Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mIPCManager:Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;

    return-object v0
.end method

.method public openGMPage(Ljava/lang/String;)V
    .locals 8

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntOpenGMPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->hasCutout(Landroid/app/Activity;)Z

    move-result v5

    .line 137
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->getCutoutWidthHeight(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v6, v0, v2

    .line 138
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->getCutoutWidthHeight(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v2, 0x1

    aget v7, v0, v2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCutout : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mRefer:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GmSettings.IS_HAS_START_UP : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/netease/unisdk/gmbridge5/GmSettings;->IS_HAS_START_UP:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-boolean v0, Lcom/netease/unisdk/gmbridge5/GmSettings;->IS_HAS_START_UP:Z

    if-nez v0, :cond_1

    .line 145
    sput-boolean v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->IS_HAS_START_UP:Z

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1, v5, v6, v7}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoGMWebviewActivity(Ljava/lang/String;ZII)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/unisdk/gmbridge5/GmBridge$2;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;ZII)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openGMPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntOpenGMPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    .line 181
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->getCutoutWidthHeight(Landroid/app/Activity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 182
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->getCutoutWidthHeight(Landroid/app/Activity;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCutout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mRefer:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GmSettings.IS_HAS_START_UP : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/netease/unisdk/gmbridge5/GmSettings;->IS_HAS_START_UP:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->gotoNgWebview(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/GmBridge$3;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public receiveMessage(Ljava/lang/String;)V
    .locals 5

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 360
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->setFloatBtnVisible(Z)V

    .line 362
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "msgs"

    .line 363
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "menu_id"

    if-eqz p1, :cond_2

    .line 365
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 367
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 369
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->addRedIds(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_2
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->addRedIds(Ljava/lang/String;)V

    .line 375
    :cond_3
    new-instance p1, Lcom/netease/unisdk/gmbridge5/GmBridge$5;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$5;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntReceiveMessage error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gm_bridge"

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public requestMenus()V
    .locals 1

    const/4 v0, 0x1

    .line 409
    iput v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    .line 410
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->showLoadingDialog()V

    .line 411
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/ITokenRequest;->doRequest()V

    return-void
.end method

.method public sdkOnPause()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hide()V

    :cond_0
    return-void
.end method

.method public sdkOnResume()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->show()V

    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 76
    sput-boolean p1, Lcom/netease/unisdk/gmbridge5/log/NgLog;->isDebug:Z

    return-void
.end method

.method public setFloatBtnVisible(Z)V
    .locals 1

    .line 335
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mVisible:Z

    .line 336
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$4;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge$4;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Z)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGenTokenResponse(Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V

    .line 103
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->setGenTokenResponse(Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTodoAfterSetGenTokenResponse: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gm_bridge"

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTodoAfterSetGenTokenResponse:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "mTodoAfterSetGenTokenResponse == OPEN_PAGE_AFTER_SETGENTOKENRESPONSE"

    .line 106
    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance p1, Lcom/netease/unisdk/gmbridge5/GmBridge$1;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$1;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "mTodoAfterSetGenTokenResponse == SHOW_MENUS_AFTER_SETGENTOKENRESPONSE"

    .line 121
    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->showExpandLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 451
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$8;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/GmBridge$8;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->setRoleId(Ljava/lang/String;)V

    return-void
.end method

.method public setTokenRequest(Lcom/netease/unisdk/gmbridge5/ITokenRequest;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge;->mTokenRequest:Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    return-void
.end method

.method public setWebCloseListener(Lcom/netease/unisdk/gmbridge5/IWebCloseListener;)V
    .locals 0

    .line 84
    sput-object p1, Lcom/netease/unisdk/gmbridge5/GmBridge;->sWebCloseListener:Lcom/netease/unisdk/gmbridge5/IWebCloseListener;

    return-void
.end method
