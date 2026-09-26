.class public final Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbDevServiceInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;


# instance fields
.field public id:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    .line 199
    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    if-nez v0, :cond_1

    .line 179
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    sput-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    .line 178
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "NGPush_ProtoClient"

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 2

    .prologue
    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->cachedSize:I

    .line 206
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 227
    .local v0, "size":I
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_1
    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 237
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :cond_2
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
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 248
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 252
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    :sswitch_0
    return-object p0

    .line 258
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    goto :goto_0

    .line 262
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    goto :goto_0

    .line 266
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    goto :goto_0

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 212
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 218
    :cond_1
    iget-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 221
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 222
    return-void
.end method
