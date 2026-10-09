.class final Lcom/tencent/component/utils/thread/ThreadPool$1;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/tencent/component/utils/thread/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/thread/ThreadPool;->runOnNonUIThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/component/utils/thread/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/tencent/component/utils/thread/ThreadPool$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/tencent/component/utils/thread/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jc"    # Lcom/tencent/component/utils/thread/ThreadPool$JobContext;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method
