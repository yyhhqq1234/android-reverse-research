.class public Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;
.super Ljava/lang/Object;
.source "MGCEnvironment.java"


# static fields
.field private static final CONFIG_RELATIVE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;->CONFIG_RELATIVE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;->CONFIG_RELATIVE_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;->getMgcExternalStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMgcExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const-string v0, "mgc"

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;->getMgcExternalStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMgcExternalStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 26
    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-static {}, Lcom/tencent/component/utils/FileUtil;->isExternalAvailable()Z

    move-result v3

    .line 28
    .local v3, "useExternal":Z
    const/4 v0, 0x0

    .line 29
    .local v0, "configFile":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 30
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/tencent/component/utils/FileUtil;->getExternalGameJoyRecorderDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "configFile":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .local v1, "configFile":Ljava/io/File;
    :goto_1
    if-nez v1, :cond_1

    .line 40
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "configFile":Ljava/io/File;
    .restart local v0    # "configFile":Ljava/io/File;
    goto :goto_0

    .line 34
    .restart local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v0

    .end local v0    # "configFile":Ljava/io/File;
    .restart local v1    # "configFile":Ljava/io/File;
    goto :goto_1

    .line 41
    .end local v2    # "path":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "configFile":Ljava/io/File;
    .restart local v0    # "configFile":Ljava/io/File;
    goto :goto_0

    .end local v0    # "configFile":Ljava/io/File;
    .restart local v1    # "configFile":Ljava/io/File;
    :cond_1
    move-object v0, v1

    .end local v1    # "configFile":Ljava/io/File;
    .restart local v0    # "configFile":Ljava/io/File;
    goto :goto_0

    :cond_2
    move-object v1, v0

    .end local v0    # "configFile":Ljava/io/File;
    .restart local v1    # "configFile":Ljava/io/File;
    goto :goto_1
.end method
