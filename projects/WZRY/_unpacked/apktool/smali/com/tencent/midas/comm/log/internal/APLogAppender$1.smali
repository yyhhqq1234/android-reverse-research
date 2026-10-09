.class Lcom/tencent/midas/comm/log/internal/APLogAppender$1;
.super Ljava/lang/Object;
.source "APLogAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/comm/log/internal/APLogAppender;->startAutoFlush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/comm/log/internal/APLogAppender;


# direct methods
.method constructor <init>(Lcom/tencent/midas/comm/log/internal/APLogAppender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/comm/log/internal/APLogAppender;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender$1;->this$0:Lcom/tencent/midas/comm/log/internal/APLogAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    :goto_0
    const-wide/16 v2, 0x3a98

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    invoke-static {}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender$1;->this$0:Lcom/tencent/midas/comm/log/internal/APLogAppender;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->flushAndWrite()V

    goto :goto_0
.end method
