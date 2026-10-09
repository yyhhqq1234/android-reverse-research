.class final Lcom/tencent/tga/livesdk/TGAPluginManager$2;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tga/livesdk/TGAPluginManager;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$2;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 284
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$2;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "apkPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "tgaLivePlugin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "local"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "plugin.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "localApkPath":Ljava/lang/String;
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/tencent/tga/livesdk/uitl/SignUitl;->getApkSignatureMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "apkMD5":Ljava/lang/String;
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v4, v3}, Lcom/tencent/tga/livesdk/uitl/SignUitl;->getApkSignatureMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "localApkMD5":Ljava/lang/String;
    const-string v4, "TGAPluginManager"

    const-string v5, "local update apkPath = %s apkMD5 = %s "

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v4, "TGAPluginManager"

    const-string v5, "local update localApkPath = %s localApkMD5 = %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$2;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$200(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)V

    .line 297
    return-void
.end method
