.class final Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
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
    name = "HeaderParser"
.end annotation


# instance fields
.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V
    .locals 0
    .param p2, "seq"    # Lio/netty/util/internal/AppendableCharSequence;

    .prologue
    .line 678
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    .line 680
    return-void
.end method


# virtual methods
.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 3
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 683
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v1}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    .line 684
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$0(Lio/netty/handler/codec/http/HttpObjectDecoder;I)V

    .line 685
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 686
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 687
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

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

    .line 692
    int-to-char v0, p1

    .line 693
    .local v0, "nextByte":C
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$1(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$0(Lio/netty/handler/codec/http/HttpObjectDecoder;I)V

    .line 694
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 713
    :goto_0
    return v1

    .line 697
    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 698
    const/4 v1, 0x0

    goto :goto_0

    .line 702
    :cond_1
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$1(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$2(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 707
    new-instance v1, Lio/netty/handler/codec/TooLongFrameException;

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP header is larger than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$2(Lio/netty/handler/codec/http/HttpObjectDecoder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 708
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-direct {v1, v2}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_2
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v2, v0}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    goto :goto_0
.end method
