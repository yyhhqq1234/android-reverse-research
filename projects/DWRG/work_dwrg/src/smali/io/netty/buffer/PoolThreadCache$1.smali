.class Lio/netty/buffer/PoolThreadCache$1;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/buffer/PoolThreadCache;


# direct methods
.method constructor <init>(Lio/netty/buffer/PoolThreadCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache$1;->this$0:Lio/netty/buffer/PoolThreadCache;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$1;->this$0:Lio/netty/buffer/PoolThreadCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->access$0(Lio/netty/buffer/PoolThreadCache;)V

    .line 59
    return-void
.end method
