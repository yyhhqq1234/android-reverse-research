.class public final Lcom/netease/push/proto/nano/ProtoClient$PbMessage;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbMessage"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessage;


# instance fields
.field public content:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public mode:I

.field public packagename:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public tTL:J

.field public time:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 669
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    .line 670
    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbMessage;
    .locals 2

    .prologue
    .line 633
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    if-nez v0, :cond_1

    .line 635
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    sput-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    .line 634
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :cond_1
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    return-object v0

    .line 634
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbMessage;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    .line 674
    iput-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    .line 678
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    .line 680
    iput-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->tTL:J

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->cachedSize:I

    .line 682
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 717
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 718
    .local v0, "size":I
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    :cond_0
    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 724
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_1
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_2
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 732
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_3
    iget v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    if-eqz v1, :cond_4

    .line 736
    const/4 v1, 0x5

    iget v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_4
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 740
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    :cond_5
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 744
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 746
    :cond_6
    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->tTL:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 748
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->tTL:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_7
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
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessage;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 759
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 763
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    :sswitch_0
    return-object p0

    .line 769
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    goto :goto_0

    .line 773
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    goto :goto_0

    .line 777
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    goto :goto_0

    .line 781
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    goto :goto_0

    .line 785
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    goto :goto_0

    .line 789
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    goto :goto_0

    .line 793
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    goto :goto_0

    .line 797
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->tTL:J

    goto :goto_0

    .line 759
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 688
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 691
    :cond_0
    iget-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 692
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 695
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 698
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 700
    :cond_3
    iget v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    if-eqz v0, :cond_4

    .line 701
    const/4 v0, 0x5

    iget v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 703
    :cond_4
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 704
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 706
    :cond_5
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 707
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 709
    :cond_6
    iget-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->tTL:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 710
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->tTL:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 712
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 713
    return-void
.end method
