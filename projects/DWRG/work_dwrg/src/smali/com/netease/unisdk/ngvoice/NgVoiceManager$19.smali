.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntDownloadVoiceFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$voiceFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iput-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$voiceFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 577
    iget-object v8, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v8}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$900(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->downloadVoiceFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 579
    .local v5, "fileStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 580
    .local v0, "code":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v6, v8, [B

    .line 582
    .local v6, "firstCharBytes":[B
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 583
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "code":Ljava/lang/String;
    .local v1, "code":Ljava/lang/String;
    move-object v0, v1

    .line 588
    .end local v1    # "code":Ljava/lang/String;
    .restart local v0    # "code":Ljava/lang/String;
    :goto_0
    const-string v8, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 591
    iget-object v8, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    const-wide/32 v10, 0x500000

    invoke-static {v8, v10, v11}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;J)Ljava/io/File;

    move-result-object v2

    .line 592
    .local v2, "dir":Ljava/io/File;
    if-nez v2, :cond_0

    .line 593
    new-instance v8, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$1;

    invoke-direct {v8, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$1;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;)V

    invoke-static {v8}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 619
    .end local v2    # "dir":Ljava/io/File;
    :goto_1
    return-void

    .line 584
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dir":Ljava/io/File;
    :cond_0
    iget-object v4, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$voiceFileName:Ljava/lang/String;

    .line 602
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 603
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".amr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 605
    :cond_1
    invoke-static {v2, v4}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 606
    .local v7, "saveFile":Ljava/io/File;
    iget-object v8, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v8, v5, v7}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1100(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 607
    iget-object v8, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iget-object v9, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    invoke-static {v8, v9, v12}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 609
    :cond_2
    new-instance v8, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;

    invoke-direct {v8, p0, v7}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;Ljava/io/File;)V

    invoke-static {v8}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 617
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "saveFile":Ljava/io/File;
    :cond_3
    iget-object v8, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iget-object v9, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    invoke-static {v8, v9, v12}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
