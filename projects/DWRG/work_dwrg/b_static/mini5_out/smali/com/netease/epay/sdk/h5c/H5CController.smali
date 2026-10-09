.class public Lcom/netease/epay/sdk/h5c/H5CController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "H5CController.java"


# instance fields
.field private final callingParam:Lorg/json/JSONObject;

.field private controllerUrlMapper:Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;

.field private volatile forceExitMode:Z

.field private h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

.field private final h5cControllerBizId:Ljava/lang/String;

.field private h5cScene:Ljava/lang/String;

.field private originalParams:Lorg/json/JSONObject;

.field private performanceTracked:Z

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/AddCardControllerUrlMapper;

    const-string v1, "card"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/DepositWithdrawControllerUrlMapper;

    const-string v1, "dw"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/PayControllerUrlMapper;

    const-string v1, "pay"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/RiskControllerUrlMapper;

    const-string v1, "risk"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/PasswordFreePayUrlMapper;

    const-string v1, "passwdFreePay"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/UpdateLimitPasswordFreePayControllerUrlMapper;

    const-string v1, "setPasswdFreePayLimit"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/UpdatePaySequencePasswordFreePayControllerUrlMapper;

    const-string v1, "setPasswdFreePaySequence"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/UniversalPayControllerUrlMapper;

    const-string v1, "universalPay"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/ResetPwdUrlMapper;

    const-string v1, "resetPwd"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-class v0, Lcom/netease/epay/sdk/h5c/mapper/VerifySmsControllerMapper;

    const-string v1, "verifySms"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/h5c/ControllerUrlMappingFactory;->register(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/epay/sdk/h5c/H5CController;->performanceTracked:Z

    .line 125
    iput-boolean p2, p0, Lcom/netease/epay/sdk/h5c/H5CController;->forceExitMode:Z

    .line 126
    iput-object p1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->originalParams:Lorg/json/JSONObject;

    const-string p2, "callingParam"

    .line 127
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/h5c/H5CController;->callingParam:Lorg/json/JSONObject;

    const-string p2, "h5cUrl"

    .line 128
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    const-string p2, "h5cScene"

    .line 129
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cScene:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cControllerBizId:Ljava/lang/String;

    :try_start_0
    const-string v0, "controller_url_mapper"

    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;

    iput-object p1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->controllerUrlMapper:Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 135
    iget-object v1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    const-string v2, "initUrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cScene:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "exType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "exMsg"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "exStack"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EP5C20"

    invoke-static {p2, p1, v0}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private addHybridHandlers()V
    .locals 2

    .line 1
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/OpenH5cWebViewHandler;

    const-string v1, "openH5cWebView"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetH5CBackInterceptorHandler;

    const-string v1, "setH5CBackInterceptor"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetH5cBizResultHandler;

    const-string v1, "setH5CBusinessResult"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetH5CStorageHandler;

    const-string v1, "setH5CStorage"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/GetH5CStorageHandler;

    const-string v1, "getH5CStorage"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetH5cWebViewOptionHandler;

    const-string v1, "setH5CWebViewOptions"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/H5cAjaxHandler;

    const-string v1, "h5cAjax"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/CanIUseHandler;

    const-string v1, "canIUse"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/CanGoBackOrForwardHandler;

    const-string v1, "canGoBackOrForward"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/GetBackForwardListHandler;

    const-string v1, "getBackForwardList"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 11
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/IsAppInstalledHandler;

    const-string v1, "isAppInstalled"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetPageResultHandler;

    const-string v1, "setPageResult"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SentryHandler;

    const-string v1, "sentry"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 14
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/GetH5cBasicInfoHandler;

    const-string v1, "getH5cBasicInfo"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/OpenH5CSchemeHandler;

    const-string v1, "openH5CScheme"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/BankCardOCRHandler;

    const-string v1, "bankCardOCR"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 17
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/BiometricAuthHandler;

    const-string v1, "userAuthHandler"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/CphoneHandler;

    const-string v1, "validateDevice"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/WxPayHandler;

    const-string v1, "wxPay"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/CloudPayHandler;

    const-string v1, "cloudPay"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/HideLoadingHandler;

    const-string v1, "hideLoading"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/ShowLoadingHandler;

    const-string v1, "showLoading"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetDataFromH5CHandler;

    const-string v1, "setDataFromH5c"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 24
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetWindowHandler;

    const-string v1, "setWindow"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 25
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/SetNativeWindowFlagsHandler;

    const-string v1, "setNativeWindowFlags"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 26
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/CertificateHandler;

    const-string v1, "certificateHandler"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/ApplyAuthHandler;

    const-string v1, "applyAuth"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/GetPerformanceInfoHandler;

    const-string v1, "getPerformanceInfo"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    const-class v0, Lcom/netease/epay/sdk/h5c/hybrid/FaceDetectHandler;

    const-string v1, "faceDetect"

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4

    const-string v0, "h5c"

    .line 1
    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/h5c/H5CController;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2, v3, p0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/h5c/H5CController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    :cond_0
    return-void
.end method

.method private exitAllActivityByController()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->getInstance()Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/h5c/H5CController;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->finishFrom(Lcom/netease/epay/sdk/base/util/FrameworkActivityManager$ActivityFilter;)V

    return-void
.end method

.method private getPageConfig()Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "requestNativeTitleBar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;->DEFAULT_TITLE:Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "EP5C21"

    .line 11
    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 14
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;->NO_TITLE:Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;

    return-object v0

    .line 15
    :cond_2
    :goto_0
    sget-object v0, Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;->NO_TITLE:Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;

    return-object v0
.end method

.method private handleH5BizResult(Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    .line 3
    iget-boolean p1, p1, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->shouldExit:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->forceExitMode:Z

    .line 5
    new-instance p1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    iget-object v1, v0, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->code:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->msg:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    iget-boolean v1, v0, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->isSuccess:Z

    iput-boolean v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    .line 7
    iget-object v0, v0, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->data:Lorg/json/JSONObject;

    iput-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 8
    iput-object p2, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 9
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/h5c/H5CController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$testExitError$1(Lcom/netease/epay/sdk/h5c/H5CController;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/netease/epay/sdk/h5c/H5CController;->sendToSentry(Lcom/netease/epay/sdk/h5c/H5CController;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$testExitError$2(Lcom/netease/epay/sdk/h5c/H5CController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->forceExitMode:Z

    .line 2
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    invoke-direct {v0, p1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, v0, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    .line 5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, v0, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/h5c/H5CController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    return-void
.end method

.method private static sendToSentry(Lcom/netease/epay/sdk/h5c/H5CController;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "errorMsg"

    .line 2
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorCode"

    .line 3
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/netease/epay/sdk/h5c/H5CController;->getH5cScene()Ljava/lang/String;

    move-result-object p3

    const-string v1, "h5cScene"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p3, p0, Lcom/netease/epay/sdk/h5c/H5CController;->callingParam:Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/epay/sdk/h5c/H5CController;->callingParam:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance p1, Lcom/netease/epay/sdk/datac/SWBuilder;

    invoke-direct {p1}, Lcom/netease/epay/sdk/datac/SWBuilder;-><init>()V

    const-string p3, "WebViewError"

    .line 17
    invoke-virtual {p1, p3}, Lcom/netease/epay/sdk/datac/SWBuilder;->action(Ljava/lang/String;)Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;

    move-result-object p3

    const-string v1, "EP5C84"

    .line 18
    invoke-virtual {p3, v1}, Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;->errorCode(Ljava/lang/String;)Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;

    move-result-object p3

    .line 19
    invoke-virtual {p3, p0}, Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;->actionURL(Ljava/lang/String;)Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8df3\u8f6c\u5230result-error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p3, p2}, Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;->errorDes(Ljava/lang/String;)Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;

    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lcom/netease/epay/sdk/datac/SWBuilder;->extra(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/datac/soldier/Watch$Builder;

    goto :goto_1

    :cond_1
    const-string p2, "init"

    .line 25
    invoke-virtual {p1, p2, p0}, Lcom/netease/epay/sdk/datac/SWBuilder;->addTearApartUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/datac/SWBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/netease/epay/sdk/datac/SWBuilder;->build()Lcom/netease/epay/sdk/datac/soldier/Watch;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/epay/sdk/datac/soldier/PacManHelper;->eat(Lcom/netease/epay/sdk/datac/soldier/Watch;)V

    return-void
.end method

.method public static testExitError(Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/result-error"

    .line 3
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, "h5c"

    .line 5
    invoke-static {v1}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/h5c/H5CController;

    if-nez v1, :cond_2

    return v0

    :cond_2
    const-string v2, "errorMsg"

    .line 10
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorCode"

    .line 11
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v3, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p0, v2, p1}, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda1;-><init>(Lcom/netease/epay/sdk/h5c/H5CController;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0, v3}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnUiThread(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    new-instance v0, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/epay/sdk/h5c/H5CController$$ExternalSyntheticLambda2;-><init>(Lcom/netease/epay/sdk/h5c/H5CController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnUiThread(Ljava/lang/Object;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static updateH5BizResult(Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "h5c"

    .line 1
    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/h5c/H5CController;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/h5c/H5CController;->handleH5BizResult(Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/controller/BaseController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lorg/json/JSONObject;

    .line 6
    sget-object v0, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/model/EpayBiz;->type()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "biztype"

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isSuccess"

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "quickPayId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/netease/epay/sdk/controller/BaseController;->exitSDK(Lcom/netease/epay/sdk/base/event/BaseEvent;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    .line 16
    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    .line 17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 19
    iget-object v3, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    if-eqz v3, :cond_2

    .line 20
    iget-object v0, v3, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->code:Ljava/lang/String;

    .line 21
    iget-object v1, v3, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->msg:Ljava/lang/String;

    .line 22
    iget-object v2, v3, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->data:Lorg/json/JSONObject;

    .line 23
    iget-boolean v3, v3, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->finishAllBiz:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "finishAllBiz"

    invoke-static {v2, v4, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v3, p0, Lcom/netease/epay/sdk/h5c/H5CController;->controllerUrlMapper:Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;

    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {v3}, Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;->getUrlMappingKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "h5cScene"

    invoke-static {v2, v4, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :cond_2
    iget-object v3, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 31
    iget-object p1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/netease/epay/sdk/h5c/H5CController;->exitAllActivityByController()V

    .line 35
    new-instance p1, Lcom/netease/epay/sdk/controller/ControllerResult;

    invoke-direct {p1, v0, v1}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    .line 37
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->exitByCallBack(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    return-void
.end method

.method public getCallingParams()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->callingParam:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getControllerUrlMapping()Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->controllerUrlMapper:Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;

    return-object v0
.end method

.method public getH5cBizResult()Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    return-object v0
.end method

.method public getH5cScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cScene:Ljava/lang/String;

    return-object v0
.end method

.method public getInitUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalParams()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->originalParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public handlePageFinish(Lcom/netease/epay/sdk/h5c/ui/H5CWebViewActivity;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->forceExitMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/netease/epay/sdk/h5c/ui/H5CWebViewActivity;->getFinishReason()Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    move-result-object v0

    sget-object v1, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->NORMAL:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    if-eq v0, v1, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->getInstance()Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;

    move-result-object v0

    const-class v1, Lcom/netease/epay/sdk/h5c/ui/H5CWebViewActivity;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->sizeOfActivity(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    if-eqz v0, :cond_3

    .line 20
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    iget-object v2, v1, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->code:Ljava/lang/String;

    iget-object v1, v1, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->msg:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p1}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 21
    iget-object p1, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cBizResult:Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;

    iget-object p1, p1, Lcom/netease/epay/sdk/h5c/msg/H5cBizResultMsg;->data:Lorg/json/JSONObject;

    iput-object p1, v0, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/h5c/H5CController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    return-void

    .line 27
    :cond_3
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v1, "FC0000"

    const-string v2, "\u7528\u6237\u624b\u52a8\u9000\u51fa\u8be5\u4e1a\u52a1"

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/h5c/H5CController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    return-void
.end method

.method public isPerformanceTracked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->performanceTracked:Z

    return v0
.end method

.method synthetic lambda$exitAllActivityByController$0$com-netease-epay-sdk-h5c-H5CController(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/netease/epay/sdk/h5c/ui/H5CWebViewActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cControllerBizId:Ljava/lang/String;

    check-cast p1, Lcom/netease/epay/sdk/h5c/ui/H5CWebViewActivity;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/h5c/ui/H5CWebViewActivity;->getH5cControllerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public launchH5CWebViewActivity(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->h5cControllerBizId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/h5c/H5CController;->getPageConfig()Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/netease/epay/sdk/h5c/ui/H5CWebViewActivity;->initLaunch(Ljava/lang/String;Landroid/content/Context;Lcom/netease/epay/sdk/h5c/ui/H5cPageConfig;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/controller/BaseController;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/netease/epay/sdk/h5c/storage/H5cStorage;->clear()V

    return-void
.end method

.method public setPerformanceTracked()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->performanceTracked:Z

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->start(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/netease/epay/sdk/h5c/H5CController;->addHybridHandlers()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/h5c/H5CController;->launchH5CWebViewActivity(Landroid/content/Context;)V

    return-void
.end method

.method public updateUrl()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "orderId"

    const-string v6, "h5cScene"

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v4, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_2
    if-nez v3, :cond_0

    .line 12
    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->orderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->originalParams:Lorg/json/JSONObject;

    const-string v1, "quickPayId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->originalParams:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->originalParams:Lorg/json/JSONObject;

    const-string v1, "bankId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->originalParams:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6
    if-nez v3, :cond_7

    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->originalParams:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->callingParam:Lorg/json/JSONObject;

    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->orderId:Ljava/lang/String;

    const-string v3, "pay_orderId"

    invoke-static {v0, v3, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/h5c/H5CController;->url:Ljava/lang/String;

    return-void
.end method
