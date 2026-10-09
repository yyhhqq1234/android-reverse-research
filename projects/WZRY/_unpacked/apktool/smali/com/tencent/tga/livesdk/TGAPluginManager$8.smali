.class Lcom/tencent/tga/livesdk/TGAPluginManager$8;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tga/livesdk/TGAPluginManager;->installApk(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1039
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1040
    const-string v2, "TGAPluginManager"

    const-string v3, "apk file %s not exists."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v6}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/DLUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1044
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_2

    .line 1045
    const-string v2, "TGAPluginManager"

    const-string v3, "parsing apk file %s error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v6}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1053
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TGAPluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install apk exc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1048
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-virtual {v3, v4, v5}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadApk(Ljava/lang/String;I)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$3002(Lcom/tencent/tga/livesdk/TGAPluginManager;Lcom/ryg/dynamicload/internal/DLPluginPackage;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 1049
    const-string v2, "TGAPluginManager"

    const-string v3, "install apk finish"

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$3100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$3200(Lcom/tencent/tga/livesdk/TGAPluginManager;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$3300(Lcom/tencent/tga/livesdk/TGAPluginManager;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
