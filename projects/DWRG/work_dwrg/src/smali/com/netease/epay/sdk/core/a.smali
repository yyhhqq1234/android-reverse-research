.class public Lcom/netease/epay/sdk/core/a;
.super Ljava/lang/Object;
.source "Epay.java"


# direct methods
.method static a(I)V
    .locals 0

    .prologue
    .line 40
    sput p0, Lcom/netease/epay/sdk/base/core/SdkConfig;->StateBarColor:I

    .line 41
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 86
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    new-instance v0, Lcom/netease/epay/sdk/core/a$1;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/core/a$1;-><init>(Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-static {p0, v6, v7, v0, v7}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 93
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x322

    new-instance v2, Lcom/netease/epay/sdk/core/a$2;

    invoke-direct {v2, p2}, Lcom/netease/epay/sdk/core/a$2;-><init>(Z)V

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V

    .line 102
    return-void
.end method

.method static a(Landroid/content/Context;ZILcom/netease/epay/sdk/controller/ControllerCallback;Z)V
    .locals 2

    .prologue
    .line 154
    sput p2, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    .line 155
    if-nez p1, :cond_0

    .line 156
    const-string v0, "register"

    invoke-static {p4}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getRegisterJson(Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, p0, v1, p3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, "-107"

    const-string v1, "\u53c2\u6570\u975e\u6cd5"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnColor:Landroid/content/res/ColorStateList;

    .line 27
    sput-object p1, Lcom/netease/epay/sdk/base/core/SdkConfig;->btnTextColor:Landroid/content/res/ColorStateList;

    .line 28
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const-string v0, "EpayHelper.initUserByCookie(): params can not be null,otherwise other pay method will fail"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_1
    sput-object p0, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    .line 61
    sput-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->cookieType:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    const-string v0, "EpayHelper.initUserByToken(): params can not be null,otherwise other pay method will fail"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_1
    sput-object p0, Lcom/netease/epay/sdk/base/core/BaseData;->loginId:Ljava/lang/String;

    .line 51
    sput-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->loginToken:Ljava/lang/String;

    .line 52
    sput-object p2, Lcom/netease/epay/sdk/base/core/BaseData;->neURSKey:Ljava/lang/String;

    goto :goto_0
.end method

.method static a([I)V
    .locals 2

    .prologue
    .line 31
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 32
    const-string v0, "EpayHelper.java.initTitleBackgroundColor: the title color parameters\' size cannot less than 2"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    sput v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarBackgroundColor:I

    .line 36
    const/4 v0, 0x1

    aget v0, p0, v0

    sput v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->TitleBarTextColor:I

    goto :goto_0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/epay/sdk/core/a;->a(Z)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const-string v0, "ctx is null"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/netease/epay/sdk/core/a;->a()Z

    move-result v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "orderId is null "

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    sput-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->orderId:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 129
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->timeStamp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->orderPlatformId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->appPlatformId:Ljava/lang/String;

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    const-string v1, "one of the string args(timeStamp,orderPlatformId,appNam e,appVersion,appPlatformId) is null"

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 150
    :goto_0
    return v0

    .line 135
    :cond_1
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cookieType:Ljava/lang/String;

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->loginId:Ljava/lang/String;

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->loginToken:Ljava/lang/String;

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->neURSKey:Ljava/lang/String;

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    :cond_3
    const-string v1, "ID(TOKEN) or COOKIE(COOKIE TYPE) is null"

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_4
    if-nez p0, :cond_6

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/netease/epay/sdk/base/core/CoreData;->lastActionTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 145
    const-string v1, "last pay action has not finished,or action too frequent"

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastActionTime:J

    .line 150
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const-string v0, "EpayHelper.initSession(): params can not be null,otherwise other pay method will fail"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_1
    sput-object p0, Lcom/netease/epay/sdk/base/core/BaseData;->orderPlatformId:Ljava/lang/String;

    .line 81
    sput-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->timeStamp:Ljava/lang/String;

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const-string v0, "EpayHelper.initPlatform(): params can not be null,otherwise other pay method will fail"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_1
    sput-object p2, Lcom/netease/epay/sdk/base/core/BaseData;->appPlatformId:Ljava/lang/String;

    .line 71
    sput-object p0, Lcom/netease/epay/sdk/base/core/BaseData;->platformSign:Ljava/lang/String;

    .line 72
    sput-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->platformSignExpireTime:Ljava/lang/String;

    goto :goto_0
.end method
