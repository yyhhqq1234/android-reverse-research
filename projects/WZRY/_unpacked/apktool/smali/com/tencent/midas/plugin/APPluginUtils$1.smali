.class final Lcom/tencent/midas/plugin/APPluginUtils$1;
.super Ljava/lang/Object;
.source "APPluginUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/plugin/APPluginUtils;->backUp(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$MD5:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$isNeedCheckMD5Copy:Z

.field final synthetic val$sdcardPath:Ljava/lang/String;

.field final synthetic val$srcPath:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$isNeedCheckMD5Copy:Z

    iput-object p2, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$srcPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$sdcardPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$MD5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 745
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginUtils;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 747
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$isNeedCheckMD5Copy:Z

    if-eqz v1, :cond_1

    .line 748
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$fileName:Ljava/lang/String;

    .line 750
    .local v0, "sfileName":Ljava/lang/String;
    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    const-string v1, ".jar"

    const-string v7, ".apk"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 753
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 754
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$srcPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$sdcardPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/midas/plugin/APPluginUtils$1;->val$MD5:Ljava/lang/String;

    invoke-static {v1, v7, v0, v8}, Lcom/tencent/midas/plugin/APPluginUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 756
    .local v4, "time":J
    const-string v1, "Times"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "backup times:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .end local v0    # "sfileName":Ljava/lang/String;
    .end local v2    # "startTime":J
    .end local v4    # "time":J
    :cond_1
    monitor-exit v6

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
