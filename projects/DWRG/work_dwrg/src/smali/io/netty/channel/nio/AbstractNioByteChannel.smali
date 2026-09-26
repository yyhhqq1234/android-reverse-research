.class public abstract Lio/netty/channel/nio/AbstractNioByteChannel;
.super Lio/netty/channel/nio/AbstractNioChannel;
.source "AbstractNioByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
    }
.end annotation


# static fields
.field private static final EXPECTED_TYPES:Ljava/lang/String;


# instance fields
.field private flushTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " (expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lio/netty/buffer/ByteBuf;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    const-class v1, Lio/netty/channel/FileRegion;

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lio/netty/channel/nio/AbstractNioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "ch"    # Ljava/nio/channels/SelectableChannel;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/AbstractNioChannel;-><init>(Lio/netty/channel/Channel;Ljava/nio/channels/SelectableChannel;I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected final clearOpWrite()V
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 338
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    .line 342
    .local v0, "interestOps":I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 343
    and-int/lit8 v2, v0, -0x5

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0
.end method

.method protected abstract doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 18
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v13, -0x1

    .line 181
    .local v13, "writeSpinCount":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v7

    .line 182
    .local v7, "msg":Ljava/lang/Object;
    if-nez v7, :cond_0

    .line 184
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->clearOpWrite()V

    .line 259
    :goto_1
    return-void

    .line 188
    :cond_0
    instance-of v14, v7, Lio/netty/buffer/ByteBuf;

    if-eqz v14, :cond_7

    move-object v2, v7

    .line 189
    check-cast v2, Lio/netty/buffer/ByteBuf;

    .line 190
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    .line 191
    .local v10, "readableBytes":I
    if-nez v10, :cond_1

    .line 192
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    .line 196
    :cond_1
    const/4 v12, 0x0

    .line 197
    .local v12, "setOpWrite":Z
    const/4 v3, 0x0

    .line 198
    .local v3, "done":Z
    const-wide/16 v4, 0x0

    .line 199
    .local v4, "flushedAmount":J
    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 200
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v14

    invoke-interface {v14}, Lio/netty/channel/ChannelConfig;->getWriteSpinCount()I

    move-result v13

    .line 202
    :cond_2
    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_2
    if-gez v6, :cond_3

    .line 216
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 218
    if-eqz v3, :cond_6

    .line 219
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    .line 203
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v8

    .line 204
    .local v8, "localFlushedAmount":I
    if-nez v8, :cond_4

    .line 205
    const/4 v12, 0x1

    .line 206
    goto :goto_3

    .line 209
    :cond_4
    int-to-long v14, v8

    add-long/2addr v4, v14

    .line 210
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v14

    if-nez v14, :cond_5

    .line 211
    const/4 v3, 0x1

    .line 212
    goto :goto_3

    .line 202
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 221
    .end local v8    # "localFlushedAmount":I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lio/netty/channel/nio/AbstractNioByteChannel;->incompleteWrite(Z)V

    goto :goto_1

    .line 224
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "done":Z
    .end local v4    # "flushedAmount":J
    .end local v6    # "i":I
    .end local v10    # "readableBytes":I
    .end local v12    # "setOpWrite":Z
    :cond_7
    instance-of v14, v7, Lio/netty/channel/FileRegion;

    if-eqz v14, :cond_d

    move-object v11, v7

    .line 225
    check-cast v11, Lio/netty/channel/FileRegion;

    .line 226
    .local v11, "region":Lio/netty/channel/FileRegion;
    const/4 v12, 0x0

    .line 227
    .restart local v12    # "setOpWrite":Z
    const/4 v3, 0x0

    .line 228
    .restart local v3    # "done":Z
    const-wide/16 v4, 0x0

    .line 229
    .restart local v4    # "flushedAmount":J
    const/4 v14, -0x1

    if-ne v13, v14, :cond_8

    .line 230
    invoke-virtual/range {p0 .. p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v14

    invoke-interface {v14}, Lio/netty/channel/ChannelConfig;->getWriteSpinCount()I

    move-result v13

    .line 232
    :cond_8
    add-int/lit8 v6, v13, -0x1

    .restart local v6    # "i":I
    :goto_4
    if-gez v6, :cond_9

    .line 246
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 248
    if-eqz v3, :cond_c

    .line 249
    invoke-virtual/range {p1 .. p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    .line 233
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lio/netty/channel/nio/AbstractNioByteChannel;->doWriteFileRegion(Lio/netty/channel/FileRegion;)J

    move-result-wide v8

    .line 234
    .local v8, "localFlushedAmount":J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_a

    .line 235
    const/4 v12, 0x1

    .line 236
    goto :goto_5

    .line 239
    :cond_a
    add-long/2addr v4, v8

    .line 240
    invoke-interface {v11}, Lio/netty/channel/FileRegion;->transfered()J

    move-result-wide v14

    invoke-interface {v11}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-ltz v14, :cond_b

    .line 241
    const/4 v3, 0x1

    .line 242
    goto :goto_5

    .line 232
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 251
    .end local v8    # "localFlushedAmount":J
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lio/netty/channel/nio/AbstractNioByteChannel;->incompleteWrite(Z)V

    goto/16 :goto_1

    .line 256
    .end local v3    # "done":Z
    .end local v4    # "flushedAmount":J
    .end local v6    # "i":I
    .end local v11    # "region":Lio/netty/channel/FileRegion;
    .end local v12    # "setOpWrite":Z
    :cond_d
    new-instance v14, Ljava/lang/Error;

    invoke-direct {v14}, Ljava/lang/Error;-><init>()V

    throw v14
.end method

.method protected abstract doWriteBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doWriteFileRegion(Lio/netty/channel/FileRegion;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 263
    instance-of v1, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 264
    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 265
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "msg":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 269
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "msg":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    goto :goto_0

    .line 272
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_2
    instance-of v1, p1, Lio/netty/channel/FileRegion;

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupported message type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lio/netty/channel/nio/AbstractNioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final incompleteWrite(Z)V
    .locals 2
    .param p1, "setOpWrite"    # Z

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->setOpWrite()V

    .line 297
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->flushTask:Ljava/lang/Runnable;

    .line 287
    .local v0, "flushTask":Ljava/lang/Runnable;
    if-nez v0, :cond_1

    .line 288
    new-instance v0, Lio/netty/channel/nio/AbstractNioByteChannel$1;

    .end local v0    # "flushTask":Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lio/netty/channel/nio/AbstractNioByteChannel$1;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V

    iput-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel;->flushTask:Ljava/lang/Runnable;

    .line 295
    .restart local v0    # "flushTask":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/channel/nio/NioEventLoop;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;)V

    return-object v0
.end method

.method protected final setOpWrite()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 324
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    .line 328
    .local v0, "interestOps":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    .line 329
    or-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0
.end method
