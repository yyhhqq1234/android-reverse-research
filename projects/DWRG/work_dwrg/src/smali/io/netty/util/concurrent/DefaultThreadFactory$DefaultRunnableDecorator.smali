.class final Lio/netty/util/concurrent/DefaultThreadFactory$DefaultRunnableDecorator;
.super Ljava/lang/Object;
.source "DefaultThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultRunnableDecorator"
.end annotation


# instance fields
.field private final r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultThreadFactory$DefaultRunnableDecorator;->r:Ljava/lang/Runnable;

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultThreadFactory$DefaultRunnableDecorator;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 141
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 140
    throw v0
.end method
