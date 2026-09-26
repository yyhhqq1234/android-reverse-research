.class final Lio/netty/util/ReferenceCountUtil$ReleasingTask;
.super Ljava/lang/Object;
.source "ReferenceCountUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ReferenceCountUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleasingTask"
.end annotation


# instance fields
.field private final decrement:I

.field private final obj:Lio/netty/util/ReferenceCounted;


# direct methods
.method constructor <init>(Lio/netty/util/ReferenceCounted;I)V
    .locals 0
    .param p1, "obj"    # Lio/netty/util/ReferenceCounted;
    .param p2, "decrement"    # I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    .line 138
    iput p2, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->decrement:I

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    iget v2, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->decrement:I

    invoke-interface {v1, v2}, Lio/netty/util/ReferenceCounted;->release(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lio/netty/util/ReferenceCountUtil;->access$0()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Non-zero refCnt: {}"

    invoke-interface {v1, v2, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lio/netty/util/ReferenceCountUtil;->access$0()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Released: {}"

    invoke-interface {v1, v2, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lio/netty/util/ReferenceCountUtil;->access$0()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Failed to release an object: {}"

    iget-object v3, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    invoke-interface {v1, v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".release("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->decrement:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") refCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/ReferenceCountUtil$ReleasingTask;->obj:Lio/netty/util/ReferenceCounted;

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
