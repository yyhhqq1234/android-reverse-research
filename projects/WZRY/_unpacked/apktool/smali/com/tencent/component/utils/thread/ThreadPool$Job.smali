.class public interface abstract Lcom/tencent/component/utils/thread/ThreadPool$Job;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x4
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Job"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Lcom/tencent/component/utils/thread/ThreadPool$JobContext;)Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/component/utils/thread/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation
.end method
