.class public Lcom/tencent/midas/control/APMidasPayHelper;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;


# static fields
.field public static MED_DISTRIBUTE_CALL:Ljava/lang/String; = null

.field public static MED_DISTRIBUTE_CALL2:Ljava/lang/String; = null

.field public static final MED_DISTRIBUTE_CALLBACK_FROM_MIDAS_PAY:Ljava/lang/String; = "callbackFromMidasPay"

.field public static MED_DISTRIBUTE_H5PAY:Ljava/lang/String; = null

.field public static MED_DISTRIBUTE_HANDLE_QQ_WALLET_INTENT:Ljava/lang/String; = null

.field public static MED_DISTRIBUTE_HANDLE_WX_INTENT:Ljava/lang/String; = null

.field public static final MED_DISTRIBUTE_HF_COUPONS_ROLLBACK:Ljava/lang/String; = "hfCouponsRollBack"

.field public static MED_DISTRIBUTE_INFO:Ljava/lang/String; = null

.field public static MED_DISTRIBUTE_INIT:Ljava/lang/String; = null

.field public static MED_DISTRIBUTE_NET:Ljava/lang/String; = null

.field public static MED_DISTRIBUTE_PAY:Ljava/lang/String; = null

.field public static MED_DISTRIBUTE_WEB:Ljava/lang/String; = null

.field public static final MED_DISTRIBUTE_WX_MINIPROGRAM:Ljava/lang/String; = "launchWXMiniProgram"

.field public static final MED_DISTRIBUTE_WX_MINIPROGRAM_ONRESPONSE:Ljava/lang/String; = "launchWXMiniProgram_OnResponse"

.field public static final MED_DISTRIBUTE_XGAME_CONSUME:Ljava/lang/String; = "consumeAsync"

.field public static final MED_DISTRIBUTE_XGAME_QUERY:Ljava/lang/String; = "queryInventoryAsync"

.field public static MIDAS_INNER_WEBVIEW:I = 0x0

.field public static MIDAS_OUT_WEBVIEW:I = 0x0

.field public static MIDAS_PLUGIN_NAME:Ljava/lang/String; = null

.field public static final MIDAS_PLUGIN_VERSION:Ljava/lang/String; = "1.6.9a"

.field public static MIDAS_WEBVIEW:I = 0x0

.field public static PKG_DISTRIBUTE:Ljava/lang/String; = null

.field public static final PLUGIN_INITFAIL:I = 0x2

.field private static final PLUGIN_INITIDLE:I = -0x1

.field public static final PLUGIN_INITING:I = 0x0

.field public static final PLUGIN_INITSUCC:I = 0x1

.field private static final RET_CHANGE_H5:I = -0x186ab

.field private static final RET_MSG_CHANGE_H5:Ljava/lang/String; = "needChangeH5"

.field private static final TAG:Ljava/lang/String; = "APMidasPayHelper"

.field private static dexloadObject:Ljava/lang/Object;

.field private static env:Ljava/lang/String;

.field private static initCount:I

.field private static initObject:Ljava/lang/Object;

.field private static initRequest:Lcom/tencent/midas/api/request/APMidasBaseRequest;

.field public static initState:I

.field private static isInitSucc:Z

.field private static isNeedLocalUpdate:Z

.field public static isNewProcess:Z

.field private static loadingObject:Ljava/lang/Object;

.field private static logEnable:Z

.field public static midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

.field public static netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

.field private static netCallBack_ReqType:Ljava/lang/String;

.field private static remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

.field public static requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

.field public static staticActivityContext:Landroid/app/Activity;

.field public static webview:Landroid/webkit/WebView;

.field public static x5Webview:Lcom/tencent/smtt/sdk/WebView;


# instance fields
.field retobj:Ljava/lang/Object;

.field public saveType:I

.field public screenType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    const-string v0, "MidasPay"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    .line 55
    const-string v0, "com.tencent.midas.pay.APMidasDistribute"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    .line 57
    const-string v0, "golbalInit"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_INIT:Ljava/lang/String;

    .line 58
    const-string v0, "openMidasPay"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_PAY:Ljava/lang/String;

    .line 59
    const-string v0, "openMidasNet"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_NET:Ljava/lang/String;

    .line 60
    const-string v0, "openMidasInfo"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_INFO:Ljava/lang/String;

    .line 61
    const-string v0, "openMidasCall"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_CALL:Ljava/lang/String;

    .line 62
    const-string v0, "openMidasCall2"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_CALL2:Ljava/lang/String;

    .line 63
    const-string v0, "openMidasH5Pay"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_H5PAY:Ljava/lang/String;

    .line 64
    const-string v0, "openMidasWeb"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_WEB:Ljava/lang/String;

    .line 65
    const-string v0, "handleWXIntent"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_HANDLE_WX_INTENT:Ljava/lang/String;

    .line 66
    const-string v0, "handleQQWalletIntent"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_HANDLE_QQ_WALLET_INTENT:Ljava/lang/String;

    .line 85
    sput v1, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_WEBVIEW:I

    .line 86
    sput v1, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_INNER_WEBVIEW:I

    .line 87
    const/4 v0, 0x1

    sput v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_OUT_WEBVIEW:I

    .line 92
    const-string v0, "release"

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->env:Ljava/lang/String;

    .line 109
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .line 111
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .line 113
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    .line 116
    sput v1, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    .line 119
    const/4 v0, -0x1

    sput v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->dexloadObject:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->loadingObject:Ljava/lang/Object;

    .line 144
    sput-boolean v1, Lcom/tencent/midas/control/APMidasPayHelper;->isInitSucc:Z

    .line 145
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->initRequest:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 147
    sput-boolean v1, Lcom/tencent/midas/control/APMidasPayHelper;->isNeedLocalUpdate:Z

    .line 148
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    .line 150
    sput-boolean v1, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    .line 152
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 153
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Lcom/tencent/midas/control/APMidasPayHelper;->saveType:I

    .line 107
    iput v0, p0, Lcom/tencent/midas/control/APMidasPayHelper;->screenType:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/control/APMidasPayHelper;->retobj:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->dexloadObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/midas/control/APMidasPayHelper;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/midas/control/APMidasPayHelper;->openPlugin(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/tencent/midas/control/APMidasPayHelper;->isInitSucc:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/control/APMidasPayHelper;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/midas/control/APMidasPayHelper;->toH5MidasPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/tencent/midas/control/IAPInitCallBack;

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/tencent/midas/control/APMidasPayHelper;->preLoadMidasPay(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V

    return-void
.end method

.method static synthetic access$200()Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->initRequest:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->env:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/tencent/midas/control/APMidasPayHelper;->logEnable:Z

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 44
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    return v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->loadingObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/control/APMidasPayHelper;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/midas/control/APMidasPayHelper;->toMidasPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
    sput-object p0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()Lcom/tencent/midas/control/APCallBackResultReceiver;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tencent/midas/control/APCallBackResultReceiver;)Lcom/tencent/midas/control/APCallBackResultReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/midas/control/APCallBackResultReceiver;

    .prologue
    .line 44
    sput-object p0, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    return-object p0
.end method

.method public static declared-synchronized getJSContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    const-class v3, Lcom/tencent/midas/control/APMidasPayHelper;

    monitor-enter v3

    :try_start_0
    const-string v2, "APMidasPayHelper"

    const-string v4, "getJSContent"

    invoke-static {v2, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->init(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 345
    const-string v0, ""

    .line 347
    .local v0, "jsContent":Ljava/lang/String;
    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v1}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 349
    .local v1, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    const-string v2, "getH5JS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, p0, v2, v4}, Lcom/tencent/midas/control/APMidasPayHelper;->callWithContext(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jsContent":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .restart local v0    # "jsContent":Ljava/lang/String;
    monitor-exit v3

    return-object v0

    .line 341
    .end local v0    # "jsContent":Ljava/lang/String;
    .end local v1    # "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized h5Init(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "x5View"    # Lcom/tencent/smtt/sdk/WebView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 269
    const-class v4, Lcom/tencent/midas/control/APMidasPayHelper;

    monitor-enter v4

    :try_start_0
    const-string v3, "APMidasPayHelper"

    const-string v5, "h5Init"

    invoke-static {v3, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sput-object p2, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    .line 271
    sput-object p1, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    .line 273
    invoke-static {p0}, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    .line 275
    sget v3, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    if-ge v3, v6, :cond_1

    .line 276
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->release()V

    .line 277
    const-string v3, "init"

    new-instance v5, Lcom/tencent/midas/control/APMidasPayHelper$3;

    invoke-direct {v5, p0}, Lcom/tencent/midas/control/APMidasPayHelper$3;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v3, v5}, Lcom/tencent/midas/control/APMidasPayHelper;->preLoadPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 314
    :cond_1
    :try_start_1
    const-string v1, ""

    .line 316
    .local v1, "jsContent":Ljava/lang/String;
    new-instance v2, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v2}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 319
    .local v2, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    const-string v3, "getH5JS"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, p0, v3, v5}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "jsContent":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 322
    .restart local v1    # "jsContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 324
    :try_start_2
    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    if-eqz v3, :cond_2

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 328
    :cond_2
    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v3, :cond_0

    .line 329
    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "APMidasPayHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "h5Init loadJS error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsContent":Ljava/lang/String;
    .end local v2    # "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 217
    const-class v2, Lcom/tencent/midas/control/APMidasPayHelper;

    monitor-enter v2

    :try_start_0
    const-string v1, "APMidasPayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init initCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {p0}, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    .line 220
    sput-object p1, Lcom/tencent/midas/control/APMidasPayHelper;->initRequest:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 222
    sget v1, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    sget-boolean v1, Lcom/tencent/midas/control/APMidasPayHelper;->isInitSucc:Z

    if-nez v1, :cond_1

    .line 223
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->release()V

    .line 224
    const-string v1, "init"

    new-instance v3, Lcom/tencent/midas/control/APMidasPayHelper$1;

    invoke-direct {v3}, Lcom/tencent/midas/control/APMidasPayHelper$1;-><init>()V

    invoke-static {p0, v1, v3}, Lcom/tencent/midas/control/APMidasPayHelper;->preLoadPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V

    .line 260
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v1

    const-string v3, "init"

    invoke-virtual {v1, v3}, Lcom/tencent/midas/data/APPluginReportManager;->dataReport(Ljava/lang/String;)V

    .line 261
    sget v1, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit v2

    return-void

    .line 237
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/tencent/midas/control/APMidasPayHelper;->isInitSucc:Z

    if-eqz v1, :cond_0

    .line 238
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    new-instance v3, Lcom/tencent/midas/control/APMidasPayHelper$2;

    invoke-direct {v3, p0}, Lcom/tencent/midas/control/APMidasPayHelper$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isLogEnable()Z
    .locals 1

    .prologue
    .line 375
    sget-boolean v0, Lcom/tencent/midas/control/APMidasPayHelper;->logEnable:Z

    return v0
.end method

.method public static isNewProcess(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1259
    const-string v0, "com.tencent.midas.proxyactivity.APMidasPayProxyActivity"

    .line 1261
    .local v0, "activity":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1262
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1264
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1265
    .local v6, "pkgName":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v7, v6, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1266
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1268
    .local v2, "actvityInfo":[Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v12, v2

    if-ge v3, v12, :cond_1

    .line 1269
    aget-object v9, v2, v3

    .line 1270
    .local v9, "srcInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1271
    .local v1, "activityname":Ljava/lang/String;
    const-string v12, "com.tencent.midas.proxyactivity.APMidasPayProxyActivity"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1272
    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1273
    .local v8, "processName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "midasPay"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_0

    .line 1280
    .end local v1    # "activityname":Ljava/lang/String;
    .end local v2    # "actvityInfo":[Landroid/content/pm/ActivityInfo;
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "processName":Ljava/lang/String;
    .end local v9    # "srcInfo":Landroid/content/pm/ActivityInfo;
    :goto_1
    return v10

    .line 1268
    .restart local v1    # "activityname":Ljava/lang/String;
    .restart local v2    # "actvityInfo":[Landroid/content/pm/ActivityInfo;
    .restart local v3    # "j":I
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "srcInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1278
    .end local v1    # "activityname":Ljava/lang/String;
    .end local v2    # "actvityInfo":[Landroid/content/pm/ActivityInfo;
    .end local v3    # "j":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "srcInfo":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v10

    :cond_1
    move v10, v11

    .line 1280
    goto :goto_1
.end method

.method public static midasCallBack(Lcom/tencent/midas/api/APMidasResponse;)V
    .locals 4
    .param p0, "response"    # Lcom/tencent/midas/api/APMidasResponse;

    .prologue
    const/4 v3, 0x0

    .line 1064
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    const v1, -0x186ab

    if-ne v0, v1, :cond_0

    const-string v0, "needChangeH5"

    iget-object v1, p0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 1066
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "change_h5_from_cgi"

    invoke-static {v0, v1, v2}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->startPureH5Pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    sput-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1092
    :goto_0
    return-void

    .line 1075
    :cond_0
    const-string v0, "APMidasPayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "midasCallBack resultCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " midasCallBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    if-eqz v0, :cond_1

    .line 1077
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-interface {v0, p0}, Lcom/tencent/midas/api/IAPMidasPayCallBack;->MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V

    .line 1078
    sput-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .line 1082
    :cond_1
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    if-eqz v0, :cond_2

    .line 1083
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    invoke-virtual {v0, v3}, Lcom/tencent/midas/control/APCallBackResultReceiver;->setReceiver(Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;)V

    .line 1084
    sput-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    .line 1086
    :cond_2
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    const-string v1, "launchpay"

    invoke-virtual {v0, v1}, Lcom/tencent/midas/data/APPluginReportManager;->dataReport(Ljava/lang/String;)V

    .line 1088
    sput-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 1089
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->release()V

    .line 1090
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->closeLog()V

    .line 1091
    sput-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    goto :goto_0
.end method

.method public static midasH5CallBack(Ljava/lang/String;)V
    .locals 5
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1119
    const-string v1, "APMidasPayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midasH5CallBack params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " webview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x5Webview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1122
    :try_start_0
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :cond_0
    :goto_0
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_1

    .line 1129
    :try_start_1
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1136
    :cond_1
    :goto_1
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    if-eqz v1, :cond_2

    .line 1137
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    invoke-virtual {v1, v4}, Lcom/tencent/midas/control/APCallBackResultReceiver;->setReceiver(Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;)V

    .line 1138
    sput-object v4, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    .line 1148
    :cond_2
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v1

    const-string v2, "launchpay"

    invoke-virtual {v1, v2}, Lcom/tencent/midas/data/APPluginReportManager;->dataReport(Ljava/lang/String;)V

    .line 1149
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->release()V

    .line 1150
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->closeLog()V

    .line 1151
    sput-object v4, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1152
    sput-object v4, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 1153
    return-void

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "APMidasPayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midasH5CallBack error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1130
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1131
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "APMidasPayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midasH5CallBack error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static midasLoginExpire()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1098
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    if-eqz v0, :cond_0

    .line 1099
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-interface {v0}, Lcom/tencent/midas/api/IAPMidasPayCallBack;->MidasPayNeedLogin()V

    .line 1100
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .line 1104
    :cond_0
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    if-eqz v0, :cond_1

    .line 1105
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/control/APCallBackResultReceiver;->setReceiver(Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;)V

    .line 1106
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->remotRecevier:Lcom/tencent/midas/control/APCallBackResultReceiver;

    .line 1108
    :cond_1
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    const-string v1, "launchpay"

    invoke-virtual {v0, v1}, Lcom/tencent/midas/data/APPluginReportManager;->dataReport(Ljava/lang/String;)V

    .line 1109
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->release()V

    .line 1110
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->closeLog()V

    .line 1111
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1112
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 1113
    return-void
.end method

.method public static onNetError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p0, "reqType"    # Ljava/lang/String;
    .param p1, "resultCode"    # Ljava/lang/Integer;
    .param p2, "resultMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1163
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    if-eqz v0, :cond_0

    .line 1164
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/tencent/midas/api/IAPMidasNetCallBack;->MidasNetError(Ljava/lang/String;ILjava/lang/String;)V

    .line 1165
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .line 1166
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    .line 1169
    :cond_0
    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1170
    return-void
.end method

.method public static onNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "reqType"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1195
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    if-eqz v0, :cond_0

    .line 1196
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    invoke-interface {v0, p0, p1}, Lcom/tencent/midas/api/IAPMidasNetCallBack;->MidasNetFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    sput-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .line 1198
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    .line 1202
    :cond_0
    sput-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1203
    return-void
.end method

.method public static onNetStop(Ljava/lang/String;)V
    .locals 2
    .param p0, "reqType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1178
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    if-eqz v0, :cond_0

    .line 1179
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    invoke-interface {v0, p0}, Lcom/tencent/midas/api/IAPMidasNetCallBack;->MidasNetStop(Ljava/lang/String;)V

    .line 1180
    sput-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .line 1181
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    .line 1185
    :cond_0
    sput-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 1186
    return-void
.end method

.method private openPlugin(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 862
    const-string v2, "APMidasPayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling into openPlugin, method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 863
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 862
    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v1, 0x0

    .line 869
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p1, v2, v3, p3, v4}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 875
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v2

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->dataReport(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 880
    :goto_1
    const-string v2, "APMidasPayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openPlugin obj:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return-void

    .line 870
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 876
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 877
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "APMidasPayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openPlugin dataReport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private pluginInitErrCallBack(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1209
    const-string v0, "APMidasPayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginInitErrCallBack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->getInitErrorMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pluginInitErrCallBack"

    .line 1211
    invoke-static {p1, v0, v1}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->startPureH5Pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1217
    :cond_0
    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper$11;

    invoke-direct {v0, p0, p1}, Lcom/tencent/midas/control/APMidasPayHelper$11;-><init>(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static preLoadMidasPay(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "initCallback"    # Lcom/tencent/midas/control/IAPInitCallBack;

    .prologue
    const/4 v13, 0x0

    .line 910
    const-string v9, "APMidasPayHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling into preLoadMidasPay "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 911
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 910
    invoke-static {v9, v10}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 916
    .local v2, "dateStart":J
    sget-boolean v9, Lcom/tencent/midas/control/APMidasPayHelper;->isNeedLocalUpdate:Z

    if-eqz v9, :cond_2

    .line 918
    const-string v9, "APMidasPayHelper"

    const-string v10, "Calling into preLoadMidasPay isNeedLocalUpdate == true"

    invoke-static {v9, v10}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installFromLocal(Landroid/content/Context;)I

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 923
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-static {v10}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "sdk.plugin.init.installFromLocal.time"

    invoke-virtual {v9, v10, v11, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V

    .line 924
    sput-boolean v13, Lcom/tencent/midas/control/APMidasPayHelper;->isNeedLocalUpdate:Z

    .line 929
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 931
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->isNeedUpdateFromAssets(Landroid/content/Context;)I

    move-result v5

    .line 934
    .local v5, "isNeedAssetsUpdate":I
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v9

    .line 935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-static {v10}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "sdk.plugin.init.isNeedAssetsUpdate.time"

    .line 934
    invoke-virtual {v9, v10, v11, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V

    .line 939
    const-string v9, "APMidasPayHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preLoadMidasPay isNeedUpdateFromAssets = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/4 v7, 0x0

    .line 944
    .local v7, "ret":I
    if-lez v5, :cond_0

    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 947
    invoke-static {p0, v5}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installPlugin(Landroid/content/Context;I)I

    move-result v7

    .line 950
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v9

    .line 951
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-static {v10}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "sdk.plugin.init.installFromAssets.time"

    .line 950
    invoke-virtual {v9, v10, v11, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V

    .line 956
    :cond_0
    const-string v9, "APMidasPayHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preLoadMidasPay installPlugin ret:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " initRequest:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/tencent/midas/control/APMidasPayHelper;->initRequest:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    sget-object v10, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v10

    .line 959
    if-eqz v7, :cond_3

    .line 960
    const/4 v9, 0x0

    :try_start_0
    sput v9, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    .line 961
    const/4 v9, 0x2

    sput v9, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 962
    if-eqz p2, :cond_1

    .line 963
    const/4 v9, -0x1

    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->getInitErrorMsg()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v11, p1, v12}, Lcom/tencent/midas/control/IAPInitCallBack;->result(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1056
    :cond_1
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1057
    return-void

    .line 926
    .end local v5    # "isNeedAssetsUpdate":I
    .end local v7    # "ret":I
    :cond_2
    const-string v9, "APMidasPayHelper"

    const-string v10, "Calling into preLoadMidasPay isNeedLocalUpdate == false"

    invoke-static {v9, v10}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 967
    .restart local v5    # "isNeedAssetsUpdate":I
    .restart local v7    # "ret":I
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 970
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginChecker;->isPluginValid(Landroid/content/Context;)Z

    move-result v8

    .line 971
    .local v8, "valid":Z
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v9

    .line 972
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-static {v11}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "sdk.plugin.init.pluginvalid.time"

    .line 971
    invoke-virtual {v9, v11, v12, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V

    .line 975
    if-nez v8, :cond_5

    .line 976
    const-string v9, "APMidasPayHelper"

    const-string v11, "preLoadMidasPay isPluginValid false"

    invoke-static {v9, v11}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    .line 980
    const/4 v9, -0x1

    sput v9, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 981
    if-eqz p2, :cond_4

    .line 982
    const/4 v9, 0x0

    sput v9, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    .line 983
    const/4 v9, -0x1

    const-string/jumbo v11, "\u652f\u4ed8\u63d2\u4ef6\u6821\u9a8c\u5931\u8d25"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v9, v11, p1, v12}, Lcom/tencent/midas/control/IAPInitCallBack;->result(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 985
    :cond_4
    sget-object v11, Lcom/tencent/midas/control/APMidasPayHelper;->loadingObject:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 986
    :try_start_2
    sget-object v9, Lcom/tencent/midas/control/APMidasPayHelper;->loadingObject:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 987
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9

    .line 1056
    .end local v8    # "valid":Z
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 991
    .restart local v8    # "valid":Z
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 992
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginLoader;->preCreateClassLoaderByPath(Landroid/content/Context;)V

    .line 993
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-static {v11}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "sdk.plugin.init.loadDex.time"

    invoke-virtual {v9, v11, v12, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1002
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, "launchInterfaceName":Ljava/lang/String;
    instance-of v9, p0, Landroid/app/Activity;

    if-eqz v9, :cond_6

    .line 1006
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v9, v0

    new-instance v11, Lcom/tencent/midas/control/APMidasPayHelper$10;

    move-object/from16 v0, p2

    invoke-direct {v11, v6, p0, v0, p1}, Lcom/tencent/midas/control/APMidasPayHelper$10;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/midas/control/IAPInitCallBack;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 994
    .end local v6    # "launchInterfaceName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 995
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "APMidasPayHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preLoadMidasPay preCreateClassLoaderByPath e: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1049
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "launchInterfaceName":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    sput v9, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 1050
    sget-object v11, Lcom/tencent/midas/control/APMidasPayHelper;->loadingObject:Ljava/lang/Object;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1051
    :try_start_6
    sget-object v9, Lcom/tencent/midas/control/APMidasPayHelper;->loadingObject:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 1052
    monitor-exit v11

    goto/16 :goto_1

    :catchall_2
    move-exception v9

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private static preLoadPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "initCallback"    # Lcom/tencent/midas/control/IAPInitCallBack;

    .prologue
    .line 885
    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v2

    .line 886
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 887
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/midas/control/APMidasPayHelper$9;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 898
    .local v0, "preLoadPluginTh":Ljava/lang/Thread;
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 901
    return-void

    .line 887
    .end local v0    # "preLoadPluginTh":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static release(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1251
    const-string v0, "APMidasPayHelper"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    .line 1253
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1254
    const/4 v0, -0x1

    :try_start_0
    sput v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 1255
    monitor-exit v1

    .line 1256
    return-void

    .line 1255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEnv(Ljava/lang/String;)V
    .locals 1
    .param p0, "envi"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "test"

    .line 359
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dev"

    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "debug"

    .line 361
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "testing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    const-string p0, "release"

    .line 364
    :cond_0
    sput-object p0, Lcom/tencent/midas/control/APMidasPayHelper;->env:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .param p0, "blogEnable"    # Z

    .prologue
    .line 371
    sput-boolean p0, Lcom/tencent/midas/control/APMidasPayHelper;->logEnable:Z

    .line 372
    return-void
.end method

.method private toH5Midas(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "toMethod"    # Ljava/lang/String;
    .param p6, "fromMethod"    # Ljava/lang/String;

    .prologue
    .line 743
    const-string v0, "APMidasPayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toH5Midas initState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v7, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v7

    .line 746
    :try_start_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 747
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 748
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 749
    const-string/jumbo v0, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 750
    const-string/jumbo v0, "\u817e\u8baf\u652f\u4ed8\u670d\u52a1\u521d\u59cb\u5316\u4e2d"

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 753
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 755
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    :cond_1
    :goto_0
    :try_start_2
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 763
    const/4 v0, 0x0

    invoke-static {p1, p6, v0}, Lcom/tencent/midas/control/APMidasPayHelper;->preLoadPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V

    .line 767
    :cond_2
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    if-nez v0, :cond_3

    .line 768
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper$7;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/midas/control/APMidasPayHelper$7;-><init>(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 791
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 797
    monitor-exit v7

    .line 799
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 795
    :cond_3
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/tencent/midas/control/APMidasPayHelper;->toH5MidasPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v7

    goto :goto_1

    .line 797
    .end local v2    # "progressDialog":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 756
    .restart local v2    # "progressDialog":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private toH5MidasPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 807
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v1

    .line 808
    :try_start_0
    sget v2, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 809
    const-string v2, "APMidasPayHelper"

    const-string/jumbo v3, "toH5MidasPay plugin init error"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-direct {p0, p1}, Lcom/tencent/midas/control/APMidasPayHelper;->pluginInitErrCallBack(Landroid/app/Activity;)V

    .line 812
    const/4 v2, -0x1

    sput v2, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 813
    monitor-exit v1

    .line 853
    :goto_0
    return v0

    .line 815
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/midas/control/APMidasPayHelper$8;-><init>(Lcom/tencent/midas/control/APMidasPayHelper;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 853
    const/4 v0, 0x0

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private toMidas(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p3, "toMethod"    # Ljava/lang/String;
    .param p4, "fromMethod"    # Ljava/lang/String;

    .prologue
    .line 576
    if-nez p2, :cond_0

    .line 577
    const-string v0, "APMidasPayHelper"

    const-string/jumbo v1, "toMidas pay request is null"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v0, -0x1

    .line 656
    :goto_0
    return v0

    .line 581
    :cond_0
    sput-object p2, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 582
    sput-object p1, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 584
    const-string v0, "APMidasPayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToMidas initState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v10, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v10

    .line 587
    :try_start_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 588
    .local v3, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 589
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 590
    const-string/jumbo v0, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 591
    const-string/jumbo v0, "\u817e\u8baf\u652f\u4ed8\u670d\u52a1\u521d\u59cb\u5316\u4e2d"

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 594
    .local v4, "startTime":J
    invoke-static {p1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->isNeedUpdateFromLocal(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/midas/control/APMidasPayHelper;->isNeedLocalUpdate:Z

    .line 596
    sget-boolean v0, Lcom/tencent/midas/control/APMidasPayHelper;->isNeedLocalUpdate:Z

    if-eqz v0, :cond_1

    .line 597
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 598
    const/4 v0, -0x1

    :try_start_1
    sput v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 599
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :cond_1
    :try_start_2
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_NET:Ljava/lang/String;

    .line 605
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_INFO:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 607
    :try_start_3
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 613
    :cond_3
    :goto_1
    :try_start_4
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 616
    sget-boolean v0, Lcom/tencent/midas/control/APMidasPayHelper;->isNeedLocalUpdate:Z

    if-eqz v0, :cond_4

    .line 617
    invoke-static {p1}, Lcom/tencent/midas/control/APMidasPayHelper;->release(Landroid/content/Context;)V

    .line 619
    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, p4, v0}, Lcom/tencent/midas/control/APMidasPayHelper;->preLoadPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V

    .line 623
    :cond_5
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    if-nez v0, :cond_6

    .line 624
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper$5;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/tencent/midas/control/APMidasPayHelper$5;-><init>(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/ProgressDialog;JLandroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 648
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 654
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 656
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 599
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 654
    .end local v3    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v4    # "startTime":J
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 652
    .restart local v3    # "progressDialog":Landroid/app/ProgressDialog;
    .restart local v4    # "startTime":J
    :cond_6
    :try_start_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/midas/control/APMidasPayHelper;->toMidasPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 608
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private toMidasPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p3, "toMethod"    # Ljava/lang/String;
    .param p4, "fromMethod"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 664
    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v2

    .line 665
    :try_start_0
    sget v3, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 666
    const-string v3, "APMidasPayHelper"

    const-string/jumbo v4, "toMidasPay plugin init error"

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/tencent/midas/control/APMidasPayHelper;->pluginInitErrCallBack(Landroid/app/Activity;)V

    .line 669
    const/4 v3, -0x1

    sput v3, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 670
    monitor-exit v2

    .line 738
    :goto_0
    return v1

    .line 672
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    sput-object p2, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 675
    sput-object p1, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 692
    :try_start_1
    new-instance v1, Lcom/tencent/midas/control/APMidasPayHelper$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/tencent/midas/control/APMidasPayHelper$6;-><init>(Lcom/tencent/midas/control/APMidasPayHelper;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 486
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/midas/control/APMidasPayHelper;->callWithContext(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 490
    .local p4, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/midas/control/APMidasPayHelper;->callWithContext(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 494
    .local p3, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/tencent/midas/control/APMidasPayHelper;->callWithContext(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callWithContext(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 505
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    sget-object v4, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_CALL:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {p1, v2, v3, v4, v5}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 518
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 506
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "APMidasPayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callWithContext error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callWithContext(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 522
    .local p4, "paramsType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v7, Lcom/tencent/midas/control/APMidasPayHelper;->initObject:Ljava/lang/Object;

    monitor-enter v7

    .line 523
    :try_start_0
    const-string v0, "callWithContext "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget v0, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    if-nez v0, :cond_0

    .line 525
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/midas/control/APMidasPayHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/midas/control/APMidasPayHelper$4;-><init>(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 554
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 567
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    iget-object v0, p0, Lcom/tencent/midas/control/APMidasPayHelper;->retobj:Ljava/lang/Object;

    return-object v0

    .line 557
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_CALL2:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/control/APMidasPayHelper;->retobj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v6

    .line 562
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "callWithContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)I
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "reqType"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p4, "callBack"    # Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .prologue
    .line 463
    sput-object p4, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .line 464
    sput-object p2, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    .line 465
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_INFO:Ljava/lang/String;

    const-string v1, "getInfo"

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/tencent/midas/control/APMidasPayHelper;->toMidas(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h5Pay(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "x5View"    # Lcom/tencent/smtt/sdk/WebView;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;

    .prologue
    .line 435
    sput-object p2, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    .line 436
    sput-object p3, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    .line 439
    const-string v0, "APMidasPayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h5Pay webview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x5Webview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "midas_js_bridge_"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    sget-object v5, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_H5PAY:Ljava/lang/String;

    const-string v6, "h5Pay"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/midas/control/APMidasPayHelper;->toH5Midas(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public launchWXMiniProgram(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 471
    const-string v0, "launchWXMiniProgram"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v1, v4

    const-class v2, Landroid/os/ResultReceiver;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public launchWXMiniProgram_OnResponse(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 478
    const-string v0, "launchWXMiniProgram_OnResponse"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v1, v5

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    return-void
.end method

.method public launchWeb(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p3, "callBack"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .prologue
    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method public net(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasNetRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)I
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasNetRequest;
    .param p3, "callBack"    # Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .prologue
    .line 454
    sput-object p3, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack:Lcom/tencent/midas/api/IAPMidasNetCallBack;

    .line 455
    iget-object v0, p2, Lcom/tencent/midas/api/request/APMidasNetRequest;->reqType:Ljava/lang/String;

    sput-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->netCallBack_ReqType:Ljava/lang/String;

    .line 456
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_NET:Ljava/lang/String;

    const-string v1, "net"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/midas/control/APMidasPayHelper;->toMidas(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 157
    const-string v0, "APMidasPayHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remotRecevier payHelper resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez p1, :cond_0

    .line 159
    invoke-virtual {p0, p2}, Lcom/tencent/midas/control/APMidasPayHelper;->progressRemoteInfo(Landroid/os/Bundle;)V

    .line 161
    :cond_0
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)I
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p3, "callBack"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .prologue
    const/4 v5, 0x1

    .line 392
    const-string v1, "APMidasPayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling into pay, caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v1, "test"

    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->env:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    sget v1, Lcom/tencent/midas/control/APMidasPayHelper;->initCount:I

    if-ge v1, v5, :cond_0

    .line 398
    const-string/jumbo v1, "\u817e\u8baf\u652f\u4ed8\u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u8c03\u7528\u521d\u59cb\u5316\u63a5\u53e3!"

    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 402
    :cond_0
    sput-object p3, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .line 405
    sget-boolean v1, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TencentUnipay"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "launchpaycalling"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_PAY:Ljava/lang/String;

    const-string v2, "pay"

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/tencent/midas/control/APMidasPayHelper;->toMidas(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public progressRemoteInfo(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 164
    const-string/jumbo v6, "type"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "type":Ljava/lang/String;
    const-string v6, "APMidasPayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "progressRemoteInfo type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v6, "callback"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    new-instance v1, Lcom/tencent/midas/api/APMidasResponse;

    invoke-direct {v1}, Lcom/tencent/midas/api/APMidasResponse;-><init>()V

    .line 169
    .local v1, "midasResponse":Lcom/tencent/midas/api/APMidasResponse;
    const-string v6, "resultCode"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 170
    const-string v6, "resultInerCode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/tencent/midas/api/APMidasResponse;->resultInerCode:I

    .line 171
    const-string v6, "realSaveNum"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/tencent/midas/api/APMidasResponse;->realSaveNum:I

    .line 172
    const-string v6, "payChannel"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/tencent/midas/api/APMidasResponse;->payChannel:I

    .line 173
    const-string v6, "payState"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/tencent/midas/api/APMidasResponse;->payState:I

    .line 174
    const-string v6, "provideState"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/tencent/midas/api/APMidasResponse;->provideState:I

    .line 175
    const-string v6, "resultMsg"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 176
    const-string v6, "extendInfo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/midas/api/APMidasResponse;->extendInfo:Ljava/lang/String;

    .line 177
    const-string v6, "payReserve1"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/midas/api/APMidasResponse;->payReserve1:Ljava/lang/String;

    .line 178
    const-string v6, "payReserve2"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/midas/api/APMidasResponse;->payReserve2:Ljava/lang/String;

    .line 179
    const-string v6, "payReserve3"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tencent/midas/api/APMidasResponse;->payReserve3:Ljava/lang/String;

    .line 183
    const-string v6, "purchaseJson"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "purchaseJson":Ljava/lang/String;
    const-string v6, "purchaseSign"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "purchaseSign":Ljava/lang/String;
    const/4 v2, 0x0

    .line 189
    .local v2, "purchase":Lcom/tencent/midas/api/request/APPurchase;
    :try_start_0
    new-instance v2, Lcom/tencent/midas/api/request/APPurchase;

    .end local v2    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    invoke-direct {v2, v3, v4}, Lcom/tencent/midas/api/request/APPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .restart local v2    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    :goto_0
    iput-object v2, v1, Lcom/tencent/midas/api/APMidasResponse;->mAPPurchase:Lcom/tencent/midas/api/request/APPurchase;

    .line 199
    invoke-static {v1}, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack(Lcom/tencent/midas/api/APMidasResponse;)V

    .line 207
    .end local v1    # "midasResponse":Lcom/tencent/midas/api/APMidasResponse;
    .end local v2    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    .end local v3    # "purchaseJson":Ljava/lang/String;
    .end local v4    # "purchaseSign":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 190
    .restart local v1    # "midasResponse":Lcom/tencent/midas/api/APMidasResponse;
    .restart local v3    # "purchaseJson":Ljava/lang/String;
    .restart local v4    # "purchaseSign":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/tencent/midas/api/request/APPurchase;

    invoke-direct {v2}, Lcom/tencent/midas/api/request/APPurchase;-><init>()V

    .line 192
    .restart local v2    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    const-string v6, "progressRemoteInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "purchase creat fail1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/tencent/midas/api/request/APPurchase;

    invoke-direct {v2}, Lcom/tencent/midas/api/request/APPurchase;-><init>()V

    .line 195
    .restart local v2    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    const-string v6, "progressRemoteInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "purchase creat fail2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "midasResponse":Lcom/tencent/midas/api/APMidasResponse;
    .end local v2    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    .end local v3    # "purchaseJson":Ljava/lang/String;
    .end local v4    # "purchaseSign":Ljava/lang/String;
    :cond_1
    const-string v6, "h5callback"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 203
    const-string v6, "callbackinfo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/midas/control/APMidasPayHelper;->midasH5CallBack(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_2
    const-string v6, "needlogin"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->midasLoginExpire()V

    goto :goto_1
.end method

.method public setScreenType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/tencent/midas/control/APMidasPayHelper;->screenType:I

    .line 385
    return-void
.end method

.method public web(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p3, "callBack"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .prologue
    .line 419
    sput-object p3, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    .line 422
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/midas/control/APMidasPayHelper;->launchWeb(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 423
    return-void
.end method
