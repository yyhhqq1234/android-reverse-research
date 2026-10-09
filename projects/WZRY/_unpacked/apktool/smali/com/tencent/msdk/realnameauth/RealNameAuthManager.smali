.class public Lcom/tencent/msdk/realnameauth/RealNameAuthManager;
.super Ljava/lang/Object;
.source "RealNameAuthManager.java"


# static fields
.field public static final FLAG_CLOSE_BY_USER:I = -0x3

.field public static final FLAG_IMAGEDIALOG_INIT_FAIL:I = -0x3

.field public static final FLAG_MSDK_SERVER_ERROR:I = -0x2

.field public static final FLAG_NETWORK_ERROR:I = -0x1

.field public static final FLAG_SUCCEED:I = 0x0

.field private static final MSG_CALLBACK:I = 0x2

.field private static final MSG_START:I = 0x1

.field private static volatile instance:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;


# instance fields
.field private accesstoken:Ljava/lang/String;

.field public activity:Landroid/app/Activity;

.field private clickButton:Z

.field private extInfo:Ljava/lang/String;

.field private mSerialNumber:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field private nickName:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private platform:I

.field private realNameAuthListener:Lcom/tencent/msdk/realnameauth/RealNameAuthListener;

.field private webWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->instance:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->clickButton:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->activity:Landroid/app/Activity;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mSerialNumber:Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$1;-><init>(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)V

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->webWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    .line 252
    new-instance v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$3;-><init>(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mainHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->clickButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->platform:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->openid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->accesstoken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->webWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)Lcom/tencent/msdk/realnameauth/RealNameAuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->realNameAuthListener:Lcom/tencent/msdk/realnameauth/RealNameAuthListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->startRealNameProcessInMainThread()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/realnameauth/RealNameAuthManager;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->instance:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->instance:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    invoke-direct {v0}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->instance:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->instance:Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h5RealNameAuth(Lcom/tencent/msdk/realnameauth/model/CloudParameters;)V
    .locals 6
    .param p1, "parameters"    # Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    .prologue
    .line 232
    iget-object v1, p1, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p1, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->onRealNameAuthNotify(ILjava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p1, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->platform:I

    iget-object v3, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->openid:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->accesstoken:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->nickName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->getEncodeUrl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "msdkUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&serial_number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->init(Landroid/app/Activity;)V

    .line 244
    iget-object v1, p1, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->webWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/webviewx/api/MSDKWeb;->openWebWithConfig(Ljava/lang/String;Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;)I

    .line 245
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->reportData(I)V

    goto :goto_0
.end method

.method private highRiskAuth(Lcom/tencent/msdk/realnameauth/model/CloudParameters;)V
    .locals 3
    .param p1, "parameters"    # Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    .prologue
    .line 214
    new-instance v0, Lcom/tencent/msdk/realnameauth/ImageDialog;

    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;

    invoke-direct {v2, p0, p1}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager$2;-><init>(Lcom/tencent/msdk/realnameauth/RealNameAuthManager;Lcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/msdk/realnameauth/ImageDialog;-><init>(Landroid/app/Activity;Lcom/tencent/msdk/realnameauth/model/CloudParameters;Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;)V

    .line 228
    invoke-virtual {v0}, Lcom/tencent/msdk/realnameauth/ImageDialog;->show()V

    .line 229
    return-void
.end method

.method private oldRealNameAuth()V
    .locals 0

    .prologue
    .line 249
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->startRealNameNativeView()V

    .line 250
    return-void
.end method

.method private startRealNameProcessInMainThread()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 137
    const-string v4, "startRealNameProcess"

    invoke-static {v4}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 139
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRealNameProcessInMainThread exinfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->extInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 140
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->extInfo:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "extend1":Lorg/json/JSONObject;
    const-string v4, "serial_number"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mSerialNumber:Ljava/lang/String;

    .line 142
    const-string v4, "prajnaExt"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "prajnaExt":Ljava/lang/String;
    new-instance v2, Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    invoke-direct {v2}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;-><init>()V

    .line 162
    .local v2, "parameters":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    invoke-virtual {v2, v3}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->parseJsonOnlyBody(Ljava/lang/String;)V

    .line 163
    iget v4, v2, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->showType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 164
    invoke-direct {p0, v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->highRiskAuth(Lcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    .line 177
    .end local v1    # "extend1":Lorg/json/JSONObject;
    .end local v2    # "parameters":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    .end local v3    # "prajnaExt":Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    .restart local v1    # "extend1":Lorg/json/JSONObject;
    .restart local v2    # "parameters":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    .restart local v3    # "prajnaExt":Ljava/lang/String;
    :cond_0
    iget v4, v2, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->showType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 166
    invoke-direct {p0, v2}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->h5RealNameAuth(Lcom/tencent/msdk/realnameauth/model/CloudParameters;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v1    # "extend1":Lorg/json/JSONObject;
    .end local v2    # "parameters":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    .end local v3    # "prajnaExt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, ""

    invoke-virtual {p0, v6, v4}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->onRealNameAuthNotify(ILjava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "extend1":Lorg/json/JSONObject;
    .restart local v2    # "parameters":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    .restart local v3    # "prajnaExt":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget v4, v2, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->showType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->oldRealNameAuth()V

    goto :goto_0

    .line 171
    :cond_2
    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->onRealNameAuthNotify(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public OnWebRealNameAuthNotify(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    iget-boolean v4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->clickButton:Z

    if-eqz v4, :cond_0

    .line 95
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->reportData(I)V

    .line 97
    :cond_0
    iput-boolean v5, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->clickButton:Z

    .line 118
    :goto_0
    return-void

    .line 101
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "flag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "flag":I
    const-string v4, "desc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "desc":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->clickButton:Z

    if-eqz v4, :cond_2

    .line 106
    if-nez v2, :cond_3

    .line 107
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->reportData(I)V

    .line 111
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->clickButton:Z

    .line 114
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->onRealNameAuthNotify(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0    # "desc":Ljava/lang/String;
    .end local v2    # "flag":I
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "desc":Ljava/lang/String;
    .restart local v2    # "flag":I
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_3
    const/16 v4, 0x8

    :try_start_1
    invoke-static {v4}, Lcom/tencent/msdk/sdkwrapper/realname/RealNameWrapper;->reportData(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public StartRealNameAuth(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/realnameauth/RealNameAuthListener;)V
    .locals 2
    .param p1, "gameActivity"    # Landroid/app/Activity;
    .param p2, "userPlatform"    # I
    .param p3, "userOpenid"    # Ljava/lang/String;
    .param p4, "userAccesstoken"    # Ljava/lang/String;
    .param p5, "userNickName"    # Ljava/lang/String;
    .param p6, "userExtInfo"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/tencent/msdk/realnameauth/RealNameAuthListener;

    .prologue
    .line 71
    const-string v1, "StartRealNameAuth"

    invoke-static {v1}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 72
    iput-object p7, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->realNameAuthListener:Lcom/tencent/msdk/realnameauth/RealNameAuthListener;

    .line 73
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->activity:Landroid/app/Activity;

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->clickButton:Z

    .line 75
    iput p2, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->platform:I

    .line 76
    iput-object p3, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->openid:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->accesstoken:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->nickName:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->extInfo:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onRealNameAuthNotify(ILjava/lang/String;)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 130
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
