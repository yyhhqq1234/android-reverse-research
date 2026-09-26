.class public Lcom/netease/epay/sdk/core/EpayHelper;
.super Ljava/lang/Object;
.source "EpayHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCard(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netease/epay/sdk/core/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static cashier_AddCard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public static cashier_AddCard(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;
    .param p2, "isShowPaymentDetail"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    invoke-static {p0, p1, p2}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 161
    return-void
.end method

.method public static cashier_payQuickCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;
    .param p2, "quickPayID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 172
    return-void
.end method

.method public static cashier_payQuickCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;
    .param p2, "quickPayID"    # Ljava/lang/String;
    .param p3, "isShowPaymentDetail"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 185
    return-void
.end method

.method public static clearData()V
    .locals 0

    .prologue
    .line 330
    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->finishPay()V

    .line 331
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->clearData()V

    .line 332
    return-void
.end method

.method public static closeFingerprint(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-static {p0}, Lcom/netease/epay/sdk/core/OnlyForApp;->closeFingerprint(Landroid/content/Context;)V

    .line 276
    return-void
.end method

.method public static configAccountDetailNeedRedPaper(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "need"    # Z

    .prologue
    .line 355
    const-string v0, "epaysdk_wallet_need_redpaper_inter"

    invoke-static {p0, v0, p1}, Lcom/netease/epay/sdk/base/util/SharedPreferencesUtil;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 356
    return-void
.end method

.method public static deposit(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->a(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method public static fakeUnionPay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netease/epay/sdk/core/EpayHelper;->fakeUnionPay(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public static fakeUnionPay(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;
    .param p2, "isShowPaymentDetail"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 138
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 139
    return-void
.end method

.method public static forgetPassword(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->e(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method public static getSdkVerisonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    const-string v0, "android4.4.1"

    return-object v0
.end method

.method public static identify(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 303
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->f(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public static initButtonBackgroundColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "btnColor"    # Landroid/content/res/ColorStateList;
    .param p1, "btnTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 32
    return-void
.end method

.method public static initPlatform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "platformSign"    # Ljava/lang/String;
    .param p1, "platformSignExpireTime"    # Ljava/lang/String;
    .param p2, "appPlatformId"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/netease/epay/sdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static initSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "orderPlatformId"    # Ljava/lang/String;
    .param p1, "clientTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static initStatusBarColor(I)V
    .locals 0
    .param p0, "statusColor"    # I

    .prologue
    .line 49
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a(I)V

    .line 50
    return-void
.end method

.method public static initTitleBackgroundColor([I)V
    .locals 0
    .param p0, "titleBarColor"    # [I

    .prologue
    .line 40
    invoke-static {p0}, Lcom/netease/epay/sdk/core/a;->a([I)V

    .line 41
    return-void
.end method

.method public static initUserByCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "clientCookie"    # Ljava/lang/String;
    .param p1, "cookieType"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static initUserByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "clientLoginId"    # Ljava/lang/String;
    .param p1, "clientLoginToken"    # Ljava/lang/String;
    .param p2, "neURSKey"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/netease/epay/sdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static manageAccountDetail(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->h(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method public static modifyPassword(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->c(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public static openFingerprint(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;
    .param p1, "isCanSet"    # Z

    .prologue
    .line 285
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/OnlyForApp;->openFingerprint(Landroid/content/Context;Z)V

    .line 286
    return-void
.end method

.method public static openSdkLog()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/epay/sdk/base/core/SdkConfig;->isLogEnable:Z

    .line 348
    return-void
.end method

.method public static openWithoutGeneralCard(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->g(Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 116
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 117
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientOrderId"    # Ljava/lang/String;
    .param p2, "isShowPaymentDetail"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 106
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 107
    return-void
.end method

.method public static queryFingerprintStatus(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-static {p0}, Lcom/netease/epay/sdk/core/OnlyForApp;->queryFingerprintStatus(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method public static setPassword(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->d(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method public static upgradeIdentity(Landroid/content/Context;)V
    .locals 0
    .param p0, "actv"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-static {p0}, Lcom/netease/epay/sdk/core/OnlyForApp;->upgradeIdentity(Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method public static verifyFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/b;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public static verifyShortPwd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/core/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public static withdraw(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p0}, Lcom/netease/epay/sdk/core/b;->b(Landroid/content/Context;)V

    .line 221
    return-void
.end method
