.class public Lcom/bytedance/retrofit2/Platform$Android;
.super Lcom/bytedance/retrofit2/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/Platform$Android$MainThreadExecutor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/bytedance/retrofit2/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lcom/bytedance/retrofit2/CallAdapter$Factory;
    .locals 1

    .line 115
    new-instance v0, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;

    invoke-direct {v0, p1}, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 110
    new-instance v0, Lcom/bytedance/retrofit2/Platform$Android$MainThreadExecutor;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/Platform$Android$MainThreadExecutor;-><init>()V

    return-object v0
.end method
