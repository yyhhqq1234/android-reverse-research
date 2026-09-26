.class Lcom/netease/download/reporter/ReporetCore$4;
.super Ljava/lang/Object;
.source "ReporetCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReporetCore;->finish(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReporetCore;

.field private final synthetic val$delaytime:J


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReporetCore;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReporetCore$4;->this$0:Lcom/netease/download/reporter/ReporetCore;

    iput-wide p2, p0, Lcom/netease/download/reporter/ReporetCore$4;->val$delaytime:J

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    :try_start_0
    iget-wide v2, p0, Lcom/netease/download/reporter/ReporetCore$4;->val$delaytime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    const-string v1, "ReporetCore"

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6301\u4e45\u5316\u7ed3\u675f\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v1

    const-string v2, "finish"

    invoke-virtual {v1, v2}, Lcom/netease/download/reporter/ReportFile;->cleanAndAdd(Ljava/lang/String;)V

    .line 141
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
