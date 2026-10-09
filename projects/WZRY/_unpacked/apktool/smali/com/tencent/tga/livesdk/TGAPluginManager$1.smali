.class final Lcom/tencent/tga/livesdk/TGAPluginManager$1;
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
    .line 259
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$1;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$1;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$000(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$1;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$000(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$1;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$000(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$1;->val$manager:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$000(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/loopj/android/tgahttp/httpDNS/HttpDnsManager;->getIpList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 272
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "TGAPluginManager"

    const-string v3, "ip exc"

    invoke-static {v1, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
