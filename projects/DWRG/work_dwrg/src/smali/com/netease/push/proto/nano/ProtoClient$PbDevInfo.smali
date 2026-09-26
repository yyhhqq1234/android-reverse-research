.class public final Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbDevInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;


# instance fields
.field public id:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osver:Ljava/lang/String;

.field public screen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    .line 49
    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    sput-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->cachedSize:I

    .line 59
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 89
    .local v0, "size":I
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 111
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_5
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
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 122
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 126
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    :sswitch_0
    return-object p0

    .line 132
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    goto :goto_0

    .line 136
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    goto :goto_0

    .line 140
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    goto :goto_0

    .line 144
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    goto :goto_0

    .line 148
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    goto :goto_0

    .line 152
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 81
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 83
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 84
    return-void
.end method
