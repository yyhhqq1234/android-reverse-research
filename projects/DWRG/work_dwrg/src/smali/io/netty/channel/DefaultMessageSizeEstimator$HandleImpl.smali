.class final Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;
.super Ljava/lang/Object;
.source "DefaultMessageSizeEstimator.java"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultMessageSizeEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandleImpl"
.end annotation


# instance fields
.field private final unknownSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "unknownSize"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;->unknownSize:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(ILio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public size(Ljava/lang/Object;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 36
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lio/netty/buffer/ByteBuf;

    .end local p1    # "msg":Ljava/lang/Object;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 45
    :goto_0
    return v0

    .line 39
    .restart local p1    # "msg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lio/netty/buffer/ByteBufHolder;

    .end local p1    # "msg":Ljava/lang/Object;
    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    goto :goto_0

    .line 42
    .restart local p1    # "msg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 43
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_2
    iget v0, p0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;->unknownSize:I

    goto :goto_0
.end method
