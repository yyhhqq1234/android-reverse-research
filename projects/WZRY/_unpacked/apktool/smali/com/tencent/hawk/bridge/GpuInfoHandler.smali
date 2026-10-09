.class public Lcom/tencent/hawk/bridge/GpuInfoHandler;
.super Ljava/lang/Object;
.source "GpuInfoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGpuInfoByGLES()Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    .locals 7

    .prologue
    const/16 v6, 0x1f02

    const/16 v5, 0x1f01

    const/16 v4, 0x1f00

    .line 52
    const-string v3, "Get gpu info by gles"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 53
    invoke-static {v5}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "renderer":Ljava/lang/String;
    invoke-static {v6}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "version":Ljava/lang/String;
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "vendor":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 58
    invoke-static {v5}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    const-string v0, "NA"

    .line 63
    :cond_0
    if-nez v2, :cond_1

    .line 64
    invoke-static {v6}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    const-string v2, "NA"

    .line 70
    :cond_1
    if-nez v1, :cond_2

    .line 71
    invoke-static {v4}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-nez v1, :cond_2

    .line 73
    const-string v1, "NA"

    .line 77
    :cond_2
    const-string v3, "finish get gpu info"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 79
    new-instance v3, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    invoke-direct {v3, v1, v0, v2}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static readGpuInfoByCache(Landroid/content/Context;)Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v2, "NA"

    .line 84
    .local v2, "vendor":Ljava/lang/String;
    const-string v0, "NA"

    .line 85
    .local v0, "renderer":Ljava/lang/String;
    const-string v3, "NA"

    .line 86
    .local v3, "version":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 87
    new-instance v4, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    invoke-direct {v4, v2, v0, v3}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-object v4

    .line 90
    :cond_0
    const-string v4, "APMCfg"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 92
    const-string v4, "gpuvendor"

    const-string v5, "NA"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v4, "gpurender"

    const-string v5, "NA"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v4, "gpuversion"

    const-string v5, "NA"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_1
    new-instance v4, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    invoke-direct {v4, v2, v0, v3}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeGpuInfoInCache(Landroid/content/Context;Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "gpuInfo"    # Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    .prologue
    .line 100
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v2, "APMCfg"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 107
    const-string v2, "gpuvendor"

    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v2, "gpurender"

    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v2, "gpuversion"

    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    const-string v2, "WriteGpuInfoInCache"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "WriteGpuInfoInCache error"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
