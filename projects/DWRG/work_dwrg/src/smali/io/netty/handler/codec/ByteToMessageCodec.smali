.class public abstract Lio/netty/handler/codec/ByteToMessageCodec;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "ByteToMessageCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/ByteToMessageCodec$Encoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelDuplexHandler;"
    }
.end annotation


# instance fields
.field private final decoder:Lio/netty/handler/codec/ByteToMessageDecoder;

.field private final encoder:Lio/netty/handler/codec/MessageToByteEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/MessageToByteEncoder",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ByteToMessageCodec;-><init>(Z)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    .local p1, "outboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ByteToMessageCodec;-><init>(Ljava/lang/Class;Z)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "preferDirect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TI;>;Z)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    .local p1, "outboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 39
    new-instance v0, Lio/netty/handler/codec/ByteToMessageCodec$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/ByteToMessageCodec$1;-><init>(Lio/netty/handler/codec/ByteToMessageCodec;)V

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->decoder:Lio/netty/handler/codec/ByteToMessageDecoder;

    .line 86
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageCodec;->checkForSharableAnnotation()V

    .line 87
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 88
    new-instance v0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;

    invoke-direct {v0, p0, p2}, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;-><init>(Lio/netty/handler/codec/ByteToMessageCodec;Z)V

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->encoder:Lio/netty/handler/codec/MessageToByteEncoder;

    .line 89
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2
    .param p1, "preferDirect"    # Z

    .prologue
    .line 72
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 39
    new-instance v0, Lio/netty/handler/codec/ByteToMessageCodec$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/ByteToMessageCodec$1;-><init>(Lio/netty/handler/codec/ByteToMessageCodec;)V

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->decoder:Lio/netty/handler/codec/ByteToMessageDecoder;

    .line 73
    const-class v0, Lio/netty/handler/codec/ByteToMessageCodec;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 74
    new-instance v0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;-><init>(Lio/netty/handler/codec/ByteToMessageCodec;Z)V

    iput-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->encoder:Lio/netty/handler/codec/MessageToByteEncoder;

    .line 75
    return-void
.end method

.method private checkForSharableAnnotation()V
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageCodec;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "@Sharable annotation is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->decoder:Lio/netty/handler/codec/ByteToMessageDecoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method protected abstract decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageCodec;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 131
    return-void
.end method

.method protected abstract encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec;->encoder:Lio/netty/handler/codec/MessageToByteEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/MessageToByteEncoder;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 114
    return-void
.end method
