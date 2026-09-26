.class Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$2;
.super Ljava/lang/Object;
.source "DownloadListenerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;


# direct methods
.method constructor <init>(Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$2;->this$1:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    const-string v1, "InnerDownloadHandler"

    const-string v2, "\u4e0b\u8f7d\u8fdb\u5ea6\u8fc7\u7a0b\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->access$0()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->access$0()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-wide/16 v2, -0x64

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
