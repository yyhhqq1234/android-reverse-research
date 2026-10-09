.class public Lcom/netease/epay/sdk/h5c/H5cRouteUtil;
.super Ljava/lang/Object;
.source "H5cRouteUtil.java"


# static fields
.field public static DEFAULT_H5C_ROUTES:Ljava/lang/String; = "{\n  \"card.add\": \"https://epay.163.com/h5Main/bind-card/home\",\n  \"account.bind\": \"https://epay.163.com/h5Main/h5Main/account/bind/auth\",\n  \"pay.passwdFree.open\": \"https://epay.163.com/h5Main/password-free/open\",\n  \"renewal.pureOpen\": \"https://epay.163.com/h5Main/cloud-music/auth\",\n  \"pay.common\": \"https://epay.163.com/cashier/m/redirectCashier?requestFsTransparent\",\n  \"trade.record\": \"https://epay.163.com/h5Main/red-packet/trading-record/list\",\n  \"account.logout\": \"https://help.epay.163.com/h5/#/logoutStatement?requestNativeTitleBar\"\n}"

.field private static final H5C_ROUTES_SP_NAME:Ljava/lang/String; = "_nep_h5c_routes_"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDemoteH5cUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->h5cRoutes:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base/model/H5cRoute;

    .line 7
    iget-object v3, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->scene:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->hitResult:I

    if-lez v3, :cond_1

    .line 8
    iget-object p0, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->h5Url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "EP5C19"

    .line 12
    invoke-static {p0, v1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static getH5cUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "EP5C10"

    const-string p1, "h5c apiScene is empty"

    .line 2
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/netease/epay/sdk/h5c/H5cRouteUtil;->getH5cUrlFromMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "EP5C11"

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h5c apiScene is not in memory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/h5c/H5cRouteUtil;->getH5cUrlFromSp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    const-string p0, "EP5C12"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h5c apiScene is not in sp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/netease/epay/sdk/h5c/H5cRouteUtil;->getH5cUrlFromDefaultRoutes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "EP5C13"

    .line 25
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getH5cUrlFromDefaultRoutes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/netease/epay/sdk/h5c/H5cRouteUtil;->DEFAULT_H5C_ROUTES:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "EP5C16"

    .line 4
    invoke-static {p0, v0}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getH5cUrlFromMemory(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->h5cRoutes:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base/model/H5cRoute;

    .line 7
    iget-object v3, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->scene:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p0, v2, Lcom/netease/epay/sdk/base/model/H5cRoute;->h5Url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "EP5C14"

    .line 12
    invoke-static {p0, v1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private static getH5cUrlFromSp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->getInstance()Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->currentActivity()Landroid/app/Activity;

    move-result-object p0

    :cond_0
    const-string v2, "_nep_h5c_routes_"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 9
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_s"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    .line 14
    :cond_2
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/SdkBase64;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    return-object v2

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    const-string p1, "EP5C15"

    .line 21
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public static saveH5cRoutes(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/netease/epay/sdk/base/model/H5cRoute;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    .line 6
    invoke-static {}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->getInstance()Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->currentActivity()Landroid/app/Activity;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string v0, "_nep_h5c_routes_"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/H5cRoute;

    .line 19
    iget-object v1, v0, Lcom/netease/epay/sdk/base/model/H5cRoute;->h5Url:Ljava/lang/String;

    .line 20
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/SdkBase64;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-object v3, v0, Lcom/netease/epay/sdk/base/model/H5cRoute;->scene:Ljava/lang/String;

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/H5cRoute;->scene:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 24
    :cond_3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "EP5C17"

    .line 26
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
