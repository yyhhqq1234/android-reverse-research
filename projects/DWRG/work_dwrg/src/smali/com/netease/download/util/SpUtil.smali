.class public Lcom/netease/download/util/SpUtil;
.super Ljava/lang/Object;
.source "SpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/util/SpUtil$PreferenceUnit;
    }
.end annotation


# static fields
.field private static final COMMON_SP_NAME:Ljava/lang/String; = "download_info"

.field private static final TAG:Ljava/lang/String; = "SpUtil"

.field private static sAppContext:Landroid/content/Context;

.field private static sInstance:Lcom/netease/download/util/SpUtil;


# instance fields
.field private sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/util/SpUtil$PreferenceUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/netease/download/util/SpUtil;->sAppContext:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/util/SpUtil;->sMap:Ljava/util/Map;

    .line 45
    return-void
.end method

.method private get(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pSpName"    # Ljava/lang/Object;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pDefaultValue"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 92
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/download/util/SpUtil$PreferenceUnit;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, p3

    goto :goto_0
.end method

.method public static getInstance()Lcom/netease/download/util/SpUtil;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/download/util/SpUtil;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/netease/download/util/SpUtil;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/util/SpUtil;->initialize(Landroid/content/Context;)V

    .line 55
    :cond_0
    sget-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    return-object v0
.end method

.method private getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;
    .locals 3
    .param p1, "pSpName"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/netease/download/util/SpUtil;->sMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/download/util/SpUtil$PreferenceUnit;

    .line 62
    .local v1, "unit":Lcom/netease/download/util/SpUtil$PreferenceUnit;
    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/netease/download/util/SpUtil$PreferenceUnit;

    .end local v1    # "unit":Lcom/netease/download/util/SpUtil$PreferenceUnit;
    sget-object v2, Lcom/netease/download/util/SpUtil;->sAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/netease/download/util/SpUtil$PreferenceUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .restart local v1    # "unit":Lcom/netease/download/util/SpUtil$PreferenceUnit;
    iget-object v2, p0, Lcom/netease/download/util/SpUtil;->sMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/netease/download/util/SpUtil;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/netease/download/util/SpUtil;

    invoke-direct {v0, p0}, Lcom/netease/download/util/SpUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    .line 34
    :cond_0
    monitor-exit v1

    .line 40
    :cond_1
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private remove(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pSpName"    # Ljava/lang/Object;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pCommit"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object v1

    iget-object v0, v1, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    .line 81
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    if-eqz p3, :cond_0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    :cond_0
    return-void
.end method

.method private set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pSpName"    # Ljava/lang/Object;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pValue"    # Ljava/lang/String;
    .param p4, "pCommit"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object v1

    iget-object v0, v1, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    if-eqz p4, :cond_0

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    :cond_0
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Ljava/lang/Object;)V
    .locals 1
    .param p1, "pSpName"    # Ljava/lang/Object;

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLong(Ljava/lang/Object;Ljava/lang/String;J)J
    .locals 3
    .param p1, "pSpName"    # Ljava/lang/Object;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pDefaultValue"    # J

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    const-string v1, ""

    invoke-direct {p0, p1, p2, v1}, Lcom/netease/download/util/SpUtil;->get(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p3

    .line 123
    .end local p3    # "pDefaultValue":J
    :goto_0
    monitor-exit p0

    return-wide p3

    .line 121
    .restart local p3    # "pDefaultValue":J
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pSpName"    # Ljava/lang/Object;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pDefaultValue"    # Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/download/util/SpUtil;->get(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLong(Ljava/lang/Object;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "pSpName"    # Ljava/lang/Object;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pValue"    # J
    .param p5, "pCommit"    # Z

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/netease/download/util/SpUtil;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pSpName"    # Ljava/lang/Object;
    .param p2, "pKey"    # Ljava/lang/String;
    .param p3, "pValue"    # Ljava/lang/String;
    .param p4, "pCommit"    # Z

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/download/util/SpUtil;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
