.class public Lcom/netease/epay/sdk/register/a;
.super Ljava/lang/Object;
.source "RegisterDeviceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/register/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/epay/sdk/register/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/epay/sdk/register/a$a;Z)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/register/a;-><init>(Landroid/content/Context;Lcom/netease/epay/sdk/register/a$a;)V

    .line 70
    iput-boolean p3, p0, Lcom/netease/epay/sdk/register/a;->a:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/epay/sdk/register/a$a;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/register/a;->a:Z

    .line 55
    iput-object p1, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/netease/epay/sdk/register/a;->c:Lcom/netease/epay/sdk/register/a$a;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->appId:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/AppUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->appNameFromSelf:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/AppUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->appVersionFromSelf:Ljava/lang/String;

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/register/a;)Lcom/netease/epay/sdk/register/a$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a;->c:Lcom/netease/epay/sdk/register/a$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;DD)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 166
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 172
    :cond_2
    new-instance v2, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    invoke-direct {v2, p1}, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;-><init>(Landroid/content/Context;)V

    .line 174
    cmpl-double v1, p2, v4

    if-nez v1, :cond_3

    cmpl-double v1, p4, v4

    if-nez v1, :cond_3

    .line 175
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->getSecInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 177
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->getSecInfo(DD)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 5

    .prologue
    .line 149
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    const-string v1, "get_common_note.htm"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/netease/epay/sdk/register/a$3;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/register/a$3;-><init>(Lcom/netease/epay/sdk/register/a;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/register/a;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/register/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 127
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 129
    const-string v0, "loginId"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->loginId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "loginToken"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->loginToken:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "loginKey"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->neURSKey:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 133
    :goto_0
    const-string v2, "get_cookie_by_token.htm"

    const/4 v3, 0x1

    new-instance v4, Lcom/netease/epay/sdk/register/a$2;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/register/a$2;-><init>(Lcom/netease/epay/sdk/register/a;)V

    invoke-static {v2, v1, v3, v0, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 146
    :cond_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/register/a;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/netease/epay/sdk/register/a;->a:Z

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 189
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    const-string v1, "get_face_detect_licence.htm"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/netease/epay/sdk/register/a$4;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/register/a$4;-><init>(Lcom/netease/epay/sdk/register/a;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 219
    return-void
.end method

.method static synthetic c(Lcom/netease/epay/sdk/register/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netease/epay/sdk/register/a;->b()V

    return-void
.end method

.method static synthetic d(Lcom/netease/epay/sdk/register/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netease/epay/sdk/register/a;->c()V

    return-void
.end method

.method static synthetic e(Lcom/netease/epay/sdk/register/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/register/a;->a(Landroid/content/Context;DD)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->riskInfo:Lorg/json/JSONObject;

    .line 75
    new-instance v0, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;

    iget-object v1, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;-><init>(Landroid/content/Context;)V

    .line 76
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/netease/mobsecurity/interfacejni/SecruityInfo;->getUUID(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->deviceId:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    :try_start_0
    const-string v0, "deviceId"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "loginId"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->loginId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v0, "loginToken"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->loginToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :goto_0
    const-string v0, "sessionExpiredLevel"

    const-string v2, "middle"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "appPlatformTime"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->timeStamp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v0, "appPlatformSign"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->platformSign:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v0, "appPlatformSignExpireTime"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->platformSignExpireTime:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "riskInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->riskInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/register/a;->b:Landroid/content/Context;

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    move-object v3, v0

    .line 96
    :goto_2
    const-string v0, "device_regist.htm"

    new-instance v4, Lcom/netease/epay/sdk/register/a$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/register/a$1;-><init>(Lcom/netease/epay/sdk/register/a;)V

    .line 121
    invoke-static {v3}, Lcom/netease/epay/sdk/base/util/AppUtils;->isEpayApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v5, v6

    :goto_3
    move v2, v6

    .line 96
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;Z)V

    .line 123
    return-void

    .line 84
    :cond_0
    :try_start_1
    const-string v0, "cookie"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v0, "cookieType"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->cookieType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 95
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 121
    :cond_2
    const/4 v5, 0x0

    goto :goto_3
.end method
