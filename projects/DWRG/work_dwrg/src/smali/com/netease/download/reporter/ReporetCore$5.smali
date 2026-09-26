.class Lcom/netease/download/reporter/ReporetCore$5;
.super Ljava/lang/Object;
.source "ReporetCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReporetCore;->startStorageLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReporetCore;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReporetCore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReporetCore$5;->this$0:Lcom/netease/download/reporter/ReporetCore;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    const-string v1, "ReporetCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReporetCore [startStorageLoop] mOpen="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/download/reporter/ReporetCore$5;->this$0:Lcom/netease/download/reporter/ReporetCore;

    invoke-static {v3}, Lcom/netease/download/reporter/ReporetCore;->access$1(Lcom/netease/download/reporter/ReporetCore;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/netease/download/reporter/ReporetCore$5;->this$0:Lcom/netease/download/reporter/ReporetCore;

    invoke-static {v1}, Lcom/netease/download/reporter/ReporetCore;->access$1(Lcom/netease/download/reporter/ReporetCore;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v1

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/reporter/ReportInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/download/reporter/ReportFile;->add(Ljava/lang/String;)V

    .line 161
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
