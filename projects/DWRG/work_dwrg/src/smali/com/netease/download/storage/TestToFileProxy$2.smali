.class Lcom/netease/download/storage/TestToFileProxy$2;
.super Ljava/lang/Object;
.source "TestToFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/storage/TestToFileProxy;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/storage/TestToFileProxy;


# direct methods
.method constructor <init>(Lcom/netease/download/storage/TestToFileProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/storage/TestToFileProxy$2;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    const-string v1, "TestToFileProxy"

    const-string v2, "\u5206\u7247\u4e0b\u8f7d\u8be6\u60c5\uff0c\u53d1\u8d77\u7ed3\u675f\u547d\u4ee4"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :try_start_1
    iget-object v1, p0, Lcom/netease/download/storage/TestToFileProxy$2;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-static {v1}, Lcom/netease/download/storage/TestToFileProxy;->access$0(Lcom/netease/download/storage/TestToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/netease/download/storage/TestToFileProxy$2;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-static {v1}, Lcom/netease/download/storage/TestToFileProxy;->access$0(Lcom/netease/download/storage/TestToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-string v2, "finish"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :cond_0
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
