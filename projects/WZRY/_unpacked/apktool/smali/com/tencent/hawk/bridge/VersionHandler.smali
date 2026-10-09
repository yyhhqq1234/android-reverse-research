.class public Lcom/tencent/hawk/bridge/VersionHandler;
.super Ljava/lang/Object;
.source "VersionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCacheValidation(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 73
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return v3

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/tencent/hawk/bridge/VersionHandler;->getVerionInfoCurrent(Landroid/content/Context;)Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    move-result-object v1

    .line 75
    .local v1, "current":Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;
    invoke-static {p0}, Lcom/tencent/hawk/bridge/VersionHandler;->getVerionInfoCached(Landroid/content/Context;)Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    move-result-object v0

    .line 76
    .local v0, "cached":Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;
    new-instance v2, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    const-string v4, "N/A"

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v2, "invalid":Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;
    invoke-virtual {v2, v0}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->compareTo(Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-static {p0, v1}, Lcom/tencent/hawk/bridge/VersionHandler;->writeVersionInfo(Landroid/content/Context;Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1, v0}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->compareTo(Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 82
    invoke-static {p0, v1}, Lcom/tencent/hawk/bridge/VersionHandler;->writeVersionInfo(Landroid/content/Context;Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)V

    goto :goto_0

    .line 86
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static getVerionInfoCached(Landroid/content/Context;)Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v2, "N/A"

    .line 40
    .local v2, "versionName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 42
    .local v1, "versionCode":I
    if-nez p0, :cond_0

    .line 43
    new-instance v3, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    invoke-direct {v3, v2, v1}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;-><init>(Ljava/lang/String;I)V

    .line 51
    :goto_0
    return-object v3

    .line 45
    :cond_0
    const-string v3, "APMCfg"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, "settings":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 48
    const-string/jumbo v3, "versionname"

    const-string v4, "N/A"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string/jumbo v3, "versioncode"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    :cond_1
    new-instance v3, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    invoke-direct {v3, v2, v1}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static getVerionInfoCurrent(Landroid/content/Context;)Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    new-instance v1, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    const-string v2, "N/A"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;-><init>(Ljava/lang/String;I)V

    .line 35
    :goto_0
    return-object v1

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/tencent/hawk/bridge/DevPacket;->getPkgVersionInfo(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v0

    .line 35
    .local v0, "versionPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v1, v2}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    goto :goto_0
.end method

.method private static writeVersionInfo(Landroid/content/Context;Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vi"    # Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    .prologue
    .line 55
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v2, "APMCfg"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 59
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v2, "versionname"

    invoke-static {p1}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->access$0(Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string/jumbo v2, "versioncode"

    invoke-static {p1}, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->access$1(Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    const-string v2, "WriteVersionInfo"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "WriteVersionInfo error"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
