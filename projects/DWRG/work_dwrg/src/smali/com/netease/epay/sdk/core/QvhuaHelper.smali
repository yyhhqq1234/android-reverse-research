.class public Lcom/netease/epay/sdk/core/QvhuaHelper;
.super Ljava/lang/Object;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;
    }
.end annotation


# static fields
.field private static instance:Lcom/netease/epay/sdk/core/QvhuaHelper;


# instance fields
.field private callBack:Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-direct {v0}, Lcom/netease/epay/sdk/core/QvhuaHelper;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/core/QvhuaHelper;->instance:Lcom/netease/epay/sdk/core/QvhuaHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/core/QvhuaHelper;
    .param p1, "x1"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->getEventFromController(Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/core/QvhuaHelper;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/epay/sdk/core/QvhuaHelper;->queryNeedFaceDetect(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/core/QvhuaHelper;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/epay/sdk/core/QvhuaHelper;->startFace(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getEventFromController(Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;
    .locals 2
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 207
    new-instance v0, Lcom/netease/epay/sdk/base/event/EpayEvent;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/event/EpayEvent;-><init>()V

    .line 208
    if-nez p1, :cond_0

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    .line 210
    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SDK_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->code:Ljava/lang/String;

    .line 211
    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SDK_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->desp:Ljava/lang/String;

    .line 217
    :goto_0
    return-object v0

    .line 213
    :cond_0
    iget-boolean v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    iput-boolean v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    .line 214
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->code:Ljava/lang/String;

    .line 215
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->desp:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInstance(Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;)Lcom/netease/epay/sdk/core/QvhuaHelper;
    .locals 1
    .param p0, "callBack"    # Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    .line 44
    sget-object v0, Lcom/netease/epay/sdk/core/QvhuaHelper;->instance:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iput-object p0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper;->callBack:Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;

    .line 46
    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/core/QvhuaHelper;->instance:Lcom/netease/epay/sdk/core/QvhuaHelper;

    return-object v0
.end method

.method private queryNeedFaceDetect(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "btnString"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    const-string v1, "uuid"

    invoke-static {v0, v1, p2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v1, "quhua/url/if_face_detect.htm"

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/core/QvhuaHelper$6;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper$6;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v1, v0, v2, p1, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 261
    return-void
.end method

.method private startFace(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "btnString"    # Ljava/lang/String;

    .prologue
    .line 264
    const-string v0, "face"

    const-string v1, "verify"

    invoke-static {v1, p2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/core/QvhuaHelper$7;

    invoke-direct {v2, p0, p3, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper$7;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0, p1, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 290
    return-void
.end method


# virtual methods
.method public addCard(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ctx"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "btnString"    # Ljava/lang/String;

    .prologue
    .line 141
    const/16 v0, 0x392

    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/16 v0, 0x323

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper$4;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    const/4 v3, 0x1

    invoke-static {p1, v1, v0, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 169
    return-void
.end method

.method public creditPay(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "attach"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-static {p1, p2}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/netease/epay/sdk/core/QvhuaHelper$1;

    invoke-direct {v1, p0, p3}, Lcom/netease/epay/sdk/core/QvhuaHelper$1;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;)V

    invoke-static {p1, v0, v2, v1, v2}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 62
    return-void
.end method

.method public haveCallBack()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper;->callBack:Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeQvhuaCallBack()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper;->callBack:Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;

    .line 195
    return-void
.end method

.method public repay(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "clientOrderId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-static {p1, p2}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/netease/epay/sdk/core/QvhuaHelper$5;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper$5;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper;)V

    invoke-static {p1, v0, v2, v1, v2}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 190
    return-void
.end method

.method public returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V
    .locals 3
    .param p1, "e"    # Lcom/netease/epay/sdk/base/event/EpayEvent;

    .prologue
    const/4 v1, 0x0

    .line 221
    .line 222
    const/4 v0, -0x2

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    .line 223
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    .line 226
    :goto_0
    const-string v2, "finish"

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->finishPay()V

    .line 228
    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper;->callBack:Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper;->callBack:Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;

    invoke-interface {v2, p1, v0}, Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;->onResult(Lcom/netease/epay/sdk/base/event/EpayEvent;Ljava/lang/String;)V

    .line 230
    iput-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper;->callBack:Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;

    .line 232
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public verifyFace(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "btnString"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x392

    new-instance v2, Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/netease/epay/sdk/core/QvhuaHelper$2;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 106
    return-void
.end method

.method public verifyShortPwd(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "btnString"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Lcom/netease/epay/sdk/core/a;->a()Z

    move-result v0

    const/16 v1, 0x392

    new-instance v2, Lcom/netease/epay/sdk/core/QvhuaHelper$3;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/netease/epay/sdk/core/QvhuaHelper$3;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 133
    return-void
.end method
