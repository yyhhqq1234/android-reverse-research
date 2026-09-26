.class final Lio/netty/buffer/CompositeByteBuf$Component;
.super Ljava/lang/Object;
.source "CompositeByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/CompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Component"
.end annotation


# instance fields
.field final buf:Lio/netty/buffer/ByteBuf;

.field endOffset:I

.field final length:I

.field offset:I


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1330
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iput v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    .line 1331
    return-void
.end method


# virtual methods
.method freeIfNecessary()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1336
    return-void
.end method
