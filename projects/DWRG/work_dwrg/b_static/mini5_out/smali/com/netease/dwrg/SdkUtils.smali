.class public Lcom/netease/dwrg/SdkUtils;
.super Ljava/lang/Object;
.source "SdkUtils.java"


# static fields
.field private static final KEY_ATTRIBUTION_EX:Ljava/lang/String; = "key_attribution_ex"

.field private static final SP_NAME:Ljava/lang/String; = "sp_cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttributionExFromApk(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 28
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 35
    :cond_0
    :try_start_0
    new-instance v1, Lcom/netease/dwrg/SdkUtils$1;

    invoke-direct {v1}, Lcom/netease/dwrg/SdkUtils$1;-><init>()V

    invoke-static {v1}, Lcom/bytedance/hume/readapk/HumeSDK;->setApkPathFetcher(Lcom/bytedance/hume/readapk/IApkPathFetcher;)V

    .line 42
    invoke-static {p0}, Lcom/bytedance/hume/readapk/HumeSDK;->getExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 45
    const-string v2, "{}"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 50
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-object v1, v0

    .line 59
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "key_attribution_ex"

    if-eqz v2, :cond_3

    .line 60
    invoke-static {p0, v3, v0}, Lcom/netease/dwrg/SdkUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p0, v3, v1}, Lcom/netease/dwrg/SdkUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 76
    const-string v0, "sp_cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 77
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    const-string v0, "sp_cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 71
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
