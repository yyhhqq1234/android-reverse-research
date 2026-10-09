.class Lcom/tencent/tga/livesdk/TGAPluginManager$5;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tga/livesdk/TGAPluginManager;->callHtml(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    iput-object p2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 639
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->val$map:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->val$map:Ljava/util/Map;

    const-string/jumbo v5, "type"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 642
    .local v2, "type":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 644
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1300(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1400(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 647
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 648
    const-string v3, ""

    .line 650
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x1

    .line 651
    .local v0, "area":I
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1500(Lcom/tencent/tga/livesdk/TGAPluginManager;)I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 652
    const/4 v0, 0x1

    .line 655
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 657
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 658
    const-string v3, "https://qs.888.qq.com/m_qq/es/es.honor.html?channelName=wzryTV"

    .line 662
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&partition=%s&roleid=%s&area=%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v7}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1400(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v7}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1300(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 664
    :cond_2
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnitySendMessage callUnity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    sget-object v4, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-static {v3, v4}, Lcom/tencent/msdk/api/WGPlatform;->WGOpenUrl(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;)V

    .line 666
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 667
    .end local v0    # "area":I
    .end local v2    # "type":Ljava/lang/Integer;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 668
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callUnity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "area":I
    .restart local v2    # "type":Ljava/lang/Integer;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 660
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$5;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method
