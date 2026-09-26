.class final Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;
.super Ljava/lang/Object;
.source "HttpObjectDecoder.java"

# interfaces
.implements Lio/netty/buffer/ByteBufProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LineParser"
.end annotation


# instance fields
.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field private size:I

.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V
    .locals 0
    .param p2, "seq"    # Lio/netty/util/internal/AppendableCharSequence;

    .prologue
    .line 721
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    .line 723
    return-void
.end method


# virtual methods
.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 726
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v1}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    .line 727
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    .line 728
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 729
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 730
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    return-object v1
.end method

.method public process(B)Z
    .locals 4
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 735
    int-to-char v0, p1

    .line 736
    .local v0, "nextByte":C
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 752
    :goto_0
    return v1

    .line 738
    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 739
    const/4 v1, 0x0

    goto :goto_0

    .line 741
    :cond_1
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$3(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 746
    new-instance v1, Lio/netty/handler/codec/TooLongFrameException;

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An HTTP line is larger than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$3(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 748
    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 747
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-direct {v1, v2}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    :cond_2
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    .line 751
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v2, v0}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    goto :goto_0
.end method
