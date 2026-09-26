.class public Lcom/netease/epay/sdk/pay/c/f;
.super Ljava/lang/Object;
.source "GetRedPapersPresenter.java"


# instance fields
.field a:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/pay/model/GetPayActiveResponse;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;

.field private c:Lcom/netease/epay/sdk/pay/ui/n;

.field private d:J

.field private e:J

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/n;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->f:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/netease/epay/sdk/pay/c/f$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/f$1;-><init>(Lcom/netease/epay/sdk/pay/c/f;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->a:Lcom/netease/epay/sdk/NetCallback;

    .line 85
    new-instance v0, Lcom/netease/epay/sdk/pay/c/f$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/f$2;-><init>(Lcom/netease/epay/sdk/pay/c/f;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->b:Ljava/lang/Runnable;

    .line 38
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/f;->c:Lcom/netease/epay/sdk/pay/ui/n;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/c/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/f;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/c/f;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/c/f;->e()V

    return-void
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/c/f;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/netease/epay/sdk/pay/c/f;->e:J

    return-wide v0
.end method

.method private c()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    iget-wide v2, p0, Lcom/netease/epay/sdk/pay/c/f;->e:J

    sub-long/2addr v0, v2

    .line 77
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/c/f;->d()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/netease/epay/sdk/pay/c/f;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/f;->b:Ljava/lang/Runnable;

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/epay/sdk/pay/c/f;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/c/f;->d()V

    return-void
.end method

.method static synthetic d(Lcom/netease/epay/sdk/pay/c/f;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/netease/epay/sdk/pay/c/f;->e:J

    iget-wide v2, p0, Lcom/netease/epay/sdk/pay/c/f;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ed3\u675f\u91cd\u8bd5\uff1a\u4e0a\u4e00\u6b21\u8ddd\u6700\u5f00\u59cb\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/epay/sdk/pay/c/f;->e:J

    iget-wide v4, p0, Lcom/netease/epay/sdk/pay/c/f;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->d(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/c/f;->e()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 103
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    :try_start_0
    const-string v0, "cookieType"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->cookieType:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v0, "cookieVal"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v0, "type"

    const-string v3, "COOKIE"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    const-string v0, "loginParamDto"

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v0, "isShow_succ_active_info.htm"

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/c/f;->a:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/pay/c/f;->e:J

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b64\u6b21\u8ddd\u79bb\u6700\u5f00\u59cb\u7684\u6267\u884c\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/epay/sdk/pay/c/f;->e:J

    iget-wide v4, p0, Lcom/netease/epay/sdk/pay/c/f;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->c:Lcom/netease/epay/sdk/pay/ui/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->c:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/n;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->c:Lcom/netease/epay/sdk/pay/ui/n;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/n;->a(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/netease/epay/sdk/pay/c/f;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/c/f;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/epay/sdk/pay/c/f;->d:J

    .line 43
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/c/f;->d()V

    .line 44
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/f;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
