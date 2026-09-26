.class public final Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbServiceInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;


# instance fields
.field public service:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    .line 314
    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    if-nez v0, :cond_1

    .line 297
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    sput-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    .line 296
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_1
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;
    .locals 2

    .prologue
    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->cachedSize:I

    .line 320
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 337
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 338
    .local v0, "size":I
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_0
    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 344
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_1
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 355
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 359
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    :sswitch_0
    return-object p0

    .line 365
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    goto :goto_0

    .line 369
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    goto :goto_0

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 329
    :cond_0
    iget-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 330
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 332
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 333
    return-void
.end method
