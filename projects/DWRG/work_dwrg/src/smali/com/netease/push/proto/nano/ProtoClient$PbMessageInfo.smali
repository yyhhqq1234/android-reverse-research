.class public final Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbMessageInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;


# instance fields
.field public id:Ljava/lang/String;

.field public messages:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 840
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    .line 841
    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 2

    .prologue
    .line 822
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    if-nez v0, :cond_1

    .line 824
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 825
    :try_start_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    if-nez v0, :cond_0

    .line 826
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    sput-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    .line 823
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    :cond_1
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    return-object v0

    .line 823
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 933
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 1

    .prologue
    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    .line 845
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->cachedSize:I

    .line 847
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 869
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v4

    .line 870
    .local v4, "size":I
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 872
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 874
    :cond_0
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v5, v5

    if-lez v5, :cond_1

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 877
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v5, v5

    if-lt v3, v5, :cond_2

    .line 885
    add-int/2addr v4, v1

    .line 886
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 888
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_1
    return v4

    .line 878
    .restart local v0    # "dataCount":I
    .restart local v1    # "dataSize":I
    .restart local v3    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    aget-object v2, v5, v3

    .line 879
    .local v2, "element":[B
    if-eqz v2, :cond_3

    .line 880
    add-int/lit8 v0, v0, 0x1

    .line 882
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v5

    add-int/2addr v1, v5

    .line 877
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 896
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 897
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 901
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 902
    :sswitch_0
    return-object p0

    .line 907
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    goto :goto_0

    .line 912
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 913
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    if-nez v5, :cond_2

    move v1, v4

    .line 914
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [[B

    .line 915
    .local v2, "newArray":[[B
    if-eqz v1, :cond_1

    .line 916
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_3

    .line 923
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v2, v1

    .line 924
    iput-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    goto :goto_0

    .line 913
    .end local v1    # "i":I
    .end local v2    # "newArray":[[B
    :cond_2
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v1, v5

    goto :goto_1

    .line 919
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[[B
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v2, v1

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 897
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 853
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 854
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 856
    :cond_0
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v2, v2

    if-lez v2, :cond_1

    .line 857
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 864
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 865
    return-void

    .line 858
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    aget-object v0, v2, v1

    .line 859
    .local v0, "element":[B
    if-eqz v0, :cond_3

    .line 860
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 857
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
