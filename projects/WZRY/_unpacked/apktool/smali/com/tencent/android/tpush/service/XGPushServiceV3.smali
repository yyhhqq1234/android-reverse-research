.class public Lcom/tencent/android/tpush/service/XGPushServiceV3;
.super Landroid/app/Service;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->SERVICESCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static a:J

.field public static b:I

.field public static c:Lorg/json/JSONArray;

.field private static d:Ljava/lang/Boolean;

.field private static e:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    sput-object v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;->d:Ljava/lang/Boolean;

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->a:J

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->b:I

    .line 43
    sput-object v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    .line 117
    sput-object v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;->e:Landroid/app/Service;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static b()Landroid/app/Service;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->e:Landroid/app/Service;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/z;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/z;-><init>(Lcom/tencent/android/tpush/service/XGPushServiceV3;)V

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "service_state"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/e/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "XGPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportLastServiceState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "SdkService"

    invoke-static {v0, v2, v1}, Lcom/tencent/android/tpush/service/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 103
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "service_state"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "XGPushService"

    const-string v2, "reportLastServiceState"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->a:J

    .line 74
    sput-object p0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->e:Landroid/app/Service;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 77
    const/16 v0, -0x7ce

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->startForeground(ILandroid/app/Notification;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/a;->a(Landroid/content/Context;)V

    .line 81
    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->d(Landroid/content/Context;)V

    .line 82
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c()V

    .line 83
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "XGPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->a()Lcom/tencent/android/tpush/service/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->b()V

    .line 89
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->a()V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->a()Lcom/tencent/android/tpush/service/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/n;->c()V

    .line 168
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 169
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-super {p0, p1, v1, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 126
    sget v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->b:I

    .line 127
    sget-object v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->d:Ljava/lang/Boolean;

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->a(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->s(Landroid/content/Context;)V

    .line 137
    const/4 v0, 0x2

    .line 162
    :goto_1
    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 140
    :cond_1
    if-eqz p1, :cond_3

    .line 142
    sget-object v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 151
    :try_start_0
    const-string v2, "com.tencent.android.tpush.action"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_2
    sget-object v2, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->c()V

    .line 161
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->a()Lcom/tencent/android/tpush/service/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/service/n;->a(Landroid/content/Intent;)V

    move v0, v1

    .line 162
    goto :goto_1

    .line 153
    :catch_0
    move-exception v2

    goto :goto_2
.end method
