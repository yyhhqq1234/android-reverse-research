.class public abstract Lcom/netease/pharos/link/kcp/KcpJava;
.super Ljava/lang/Object;
.source "KcpJava.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    }
.end annotation


# instance fields
.field public final IKCP_ACK_FAST:I

.field public final IKCP_ASK_SEND:I

.field public final IKCP_ASK_TELL:I

.field public final IKCP_CMD_ACK:I

.field public final IKCP_CMD_PUSH:I

.field public final IKCP_CMD_WASK:I

.field public final IKCP_CMD_WINS:I

.field public final IKCP_DEADLINK:I

.field public final IKCP_INTERVAL:I

.field public final IKCP_MTU_DEF:I

.field public final IKCP_OVERHEAD:I

.field public final IKCP_PROBE_INIT:I

.field public final IKCP_PROBE_LIMIT:I

.field public final IKCP_RTO_DEF:I

.field public final IKCP_RTO_MAX:I

.field public final IKCP_RTO_MIN:I

.field public final IKCP_RTO_NDL:I

.field public final IKCP_THRESH_INIT:I

.field public final IKCP_THRESH_MIN:I

.field public final IKCP_WND_RCV:I

.field public final IKCP_WND_SND:I

.field acklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field buffer:[B

.field conv:J

.field current:J

.field cwnd:J

.field dead_link:J

.field fastresend:J

.field incr:J

.field interval:J

.field logmask:J

.field mss:J

.field mtu:J

.field nocwnd:J

.field nodelay:J

.field nrcv_buf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/link/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field nrcv_que:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/link/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field nsnd_buf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/link/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field nsnd_que:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/link/kcp/KcpJava$Segment;",
            ">;"
        }
    .end annotation
.end field

.field probe:J

.field probe_wait:J

.field rcv_nxt:J

.field rcv_wnd:J

.field rmt_wnd:J

.field rx_minrto:J

.field rx_rto:J

.field rx_rttval:J

.field rx_srtt:J

.field snd_nxt:J

.field snd_una:J

.field snd_wnd:J

.field ssthresh:J

.field state:J

.field ts_flush:J

.field ts_lastack:J

.field ts_probe:J

.field ts_recent:J

.field updated:J

.field xmit:J


# direct methods
.method public constructor <init>(J)V
    .locals 9
    .param p1, "conv_"    # J

    .prologue
    const-wide/16 v7, 0x64

    const-wide/16 v2, 0x20

    const/4 v1, 0x2

    const/16 v6, 0x80

    const-wide/16 v4, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1e

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_RTO_NDL:I

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_RTO_MIN:I

    .line 19
    const/16 v0, 0xc8

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_RTO_DEF:I

    .line 20
    const v0, 0xea60

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_RTO_MAX:I

    .line 21
    const/16 v0, 0x51

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_CMD_PUSH:I

    .line 22
    const/16 v0, 0x52

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_CMD_ACK:I

    .line 23
    const/16 v0, 0x53

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_CMD_WASK:I

    .line 24
    const/16 v0, 0x54

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_CMD_WINS:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_ASK_SEND:I

    .line 26
    iput v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_ASK_TELL:I

    .line 27
    const/16 v0, 0x20

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_WND_SND:I

    .line 28
    const/16 v0, 0x20

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_WND_RCV:I

    .line 29
    const/16 v0, 0x578

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_MTU_DEF:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_ACK_FAST:I

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_INTERVAL:I

    .line 32
    const/16 v0, 0x18

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_OVERHEAD:I

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_DEADLINK:I

    .line 34
    iput v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_THRESH_INIT:I

    .line 35
    iput v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_THRESH_MIN:I

    .line 36
    const/16 v0, 0x1b58

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_PROBE_INIT:I

    .line 37
    const v0, 0x1d4c0

    iput v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->IKCP_PROBE_LIMIT:I

    .line 172
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->conv:J

    .line 174
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    .line 175
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    .line 176
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    .line 177
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_recent:J

    .line 178
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_lastack:J

    .line 179
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_probe:J

    .line 180
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    .line 181
    iput-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_wnd:J

    .line 182
    iput-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    .line 183
    iput-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    .line 184
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    .line 185
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    .line 186
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    .line 187
    const-wide/16 v0, 0x578

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    .line 188
    iget-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    const-wide/16 v2, 0x18

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    .line 189
    iget-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    const-wide/16 v2, 0x18

    add-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    .line 194
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->state:J

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    .line 198
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    .line 199
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rttval:J

    .line 200
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rto:J

    .line 201
    iput-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_minrto:J

    .line 202
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    .line 203
    iput-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->interval:J

    .line 204
    iput-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    .line 205
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nodelay:J

    .line 206
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->updated:J

    .line 207
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->logmask:J

    .line 208
    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    .line 209
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->fastresend:J

    .line 210
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nocwnd:J

    .line 211
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->xmit:J

    .line 212
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->dead_link:J

    .line 217
    iput-wide p1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->conv:J

    .line 218
    return-void
.end method

.method static _ibound_(JJJ)J
    .locals 2
    .param p0, "lower"    # J
    .param p2, "middle"    # J
    .param p4, "upper"    # J

    .prologue
    .line 121
    invoke-static {p0, p1, p2, p3}, Lcom/netease/pharos/link/kcp/KcpJava;->_imax_(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lcom/netease/pharos/link/kcp/KcpJava;->_imin_(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static _imax_(JJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 117
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method static _imin_(JJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 113
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method static _itimediff(JJ)I
    .locals 2
    .param p0, "later"    # J
    .param p2, "earlier"    # J

    .prologue
    .line 125
    sub-long v0, p0, p2

    long-to-int v0, v0

    return v0
.end method

.method public static ikcp_decode16u([BI)I
    .locals 3
    .param p0, "p"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 67
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 68
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 67
    or-int v0, v1, v2

    .line 69
    .local v0, "ret":I
    return v0
.end method

.method public static ikcp_decode32u([BI)J
    .locals 9
    .param p0, "p"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide/16 v7, 0xff

    .line 94
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 95
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    .line 94
    or-long/2addr v2, v4

    .line 96
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 94
    or-long/2addr v2, v4

    .line 97
    add-int/lit8 v4, p1, 0x0

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    .line 94
    or-long v0, v2, v4

    .line 98
    .local v0, "ret":J
    return-wide v0
.end method

.method public static ikcp_decode8u([BI)B
    .locals 1
    .param p0, "p"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 48
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static ikcp_encode16u([BII)V
    .locals 2
    .param p0, "p"    # [B
    .param p1, "offset"    # I
    .param p2, "w"    # I

    .prologue
    .line 57
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 58
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 59
    return-void
.end method

.method public static ikcp_encode32u([BIJ)V
    .locals 3
    .param p0, "p"    # [B
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 80
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 81
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 82
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 83
    add-int/lit8 v0, p1, 0x0

    const/4 v1, 0x0

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 84
    return-void
.end method

.method public static ikcp_encode8u([BIB)V
    .locals 1
    .param p0, "p"    # [B
    .param p1, "offset"    # I
    .param p2, "c"    # B

    .prologue
    .line 43
    add-int/lit8 v0, p1, 0x0

    aput-byte p2, p0, v0

    .line 44
    return-void
.end method

.method public static slice(Ljava/util/ArrayList;II)V
    .locals 3
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 103
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 110
    return-void

    .line 104
    :cond_0
    sub-int v2, p2, p1

    if-ge v0, v2, :cond_1

    .line 105
    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    sub-int v2, p2, p1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 957
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    return-void
.end method


# virtual methods
.method public Check(J)J
    .locals 16
    .param p1, "current_"    # J

    .prologue
    .line 836
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    .line 838
    .local v10, "ts_flush_":J
    const-wide/32 v8, 0x7fffffff

    .line 841
    .local v8, "tm_packet":J
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/pharos/link/kcp/KcpJava;->updated:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 870
    .end local p1    # "current_":J
    :cond_0
    :goto_0
    return-wide p1

    .line 845
    .restart local p1    # "current_":J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v12

    const/16 v13, 0x2710

    if-ge v12, v13, :cond_2

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v12

    const/16 v13, -0x2710

    if-ge v12, v13, :cond_3

    .line 846
    :cond_2
    move-wide/from16 v10, p1

    .line 849
    :cond_3
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v12

    if-gez v12, :cond_0

    .line 853
    move-wide/from16 v0, p1

    invoke-static {v10, v11, v0, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v12

    int-to-long v6, v12

    .line 855
    .local v6, "tm_flush":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 865
    cmp-long v12, v8, v6

    if-gez v12, :cond_7

    move-wide v3, v8

    .line 866
    .local v3, "minimal":J
    :goto_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/pharos/link/kcp/KcpJava;->interval:J

    cmp-long v12, v3, v12

    if-ltz v12, :cond_5

    .line 867
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/netease/pharos/link/kcp/KcpJava;->interval:J

    .line 870
    :cond_5
    add-long p1, p1, v3

    goto :goto_0

    .line 855
    .end local v3    # "minimal":J
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 856
    .local v5, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-wide v13, v5, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->resendts:J

    move-wide/from16 v0, p1

    invoke-static {v13, v14, v0, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    .line 857
    .local v2, "diff":I
    if-lez v2, :cond_0

    .line 860
    int-to-long v13, v2

    cmp-long v13, v13, v8

    if-gez v13, :cond_4

    .line 861
    int-to-long v8, v2

    goto :goto_1

    .end local v2    # "diff":I
    .end local v5    # "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    :cond_7
    move-wide v3, v6

    .line 865
    goto :goto_2
.end method

.method public Input([B)I
    .locals 30
    .param p1, "data"    # [B

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    .line 485
    .local v14, "s_una":J
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x18

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 486
    const/16 v24, 0x0

    .line 595
    :goto_0
    return v24

    .line 489
    :cond_0
    const/4 v13, 0x0

    .line 496
    .local v13, "offset":I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v13

    const/16 v25, 0x18

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 573
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v14, v15}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v24

    if-lez v24, :cond_2

    .line 574
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gez v24, :cond_2

    .line 575
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    .line 576
    .local v11, "mss_":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gez v24, :cond_d

    .line 577
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    .line 578
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    move-wide/from16 v24, v0

    add-long v24, v24, v11

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    .line 588
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-lez v24, :cond_2

    .line 589
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    .line 590
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    move-wide/from16 v24, v0

    mul-long v24, v24, v11

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    .line 595
    .end local v11    # "mss_":J
    :cond_2
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 500
    :cond_3
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v6

    .line 501
    .local v6, "conv_":J
    add-int/lit8 v13, v13, 0x4

    .line 503
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->conv:J

    move-wide/from16 v24, v0

    cmp-long v24, v24, v6

    if-eqz v24, :cond_4

    .line 504
    const/16 v24, -0x1

    goto/16 :goto_0

    .line 507
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode8u([BI)B

    move-result v5

    .line 508
    .local v5, "cmd":B
    add-int/lit8 v13, v13, 0x1

    .line 509
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode8u([BI)B

    move-result v8

    .line 510
    .local v8, "frg":B
    add-int/lit8 v13, v13, 0x1

    .line 511
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode16u([BI)I

    move-result v23

    .line 512
    .local v23, "wnd":I
    add-int/lit8 v13, v13, 0x2

    .line 513
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v19

    .line 514
    .local v19, "ts":J
    add-int/lit8 v13, v13, 0x4

    .line 515
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v17

    .line 516
    .local v17, "sn":J
    add-int/lit8 v13, v13, 0x4

    .line 517
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v21

    .line 518
    .local v21, "una":J
    add-int/lit8 v13, v13, 0x4

    .line 519
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_decode32u([BI)J

    move-result-wide v9

    .line 520
    .local v9, "length":J
    add-int/lit8 v13, v13, 0x4

    .line 522
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v13

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v24, v9

    if-gez v24, :cond_5

    .line 523
    const/16 v24, -0x2

    goto/16 :goto_0

    .line 526
    :cond_5
    const/16 v24, 0x51

    move/from16 v0, v24

    if-eq v5, v0, :cond_6

    const/16 v24, 0x52

    move/from16 v0, v24

    if-eq v5, v0, :cond_6

    const/16 v24, 0x53

    move/from16 v0, v24

    if-eq v5, v0, :cond_6

    const/16 v24, 0x54

    move/from16 v0, v24

    if-eq v5, v0, :cond_6

    .line 527
    const/16 v24, -0x3

    goto/16 :goto_0

    .line 530
    :cond_6
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    .line 531
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->parse_una(J)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/link/kcp/KcpJava;->shrink_buf()V

    .line 534
    const/16 v24, 0x52

    move/from16 v0, v24

    if-ne v0, v5, :cond_9

    .line 535
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v24

    if-ltz v24, :cond_7

    .line 536
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->update_ack(I)V

    .line 538
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->parse_ack(J)V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/link/kcp/KcpJava;->shrink_buf()V

    .line 570
    :cond_8
    :goto_3
    long-to-int v0, v9

    move/from16 v24, v0

    add-int v13, v13, v24

    .line 491
    goto/16 :goto_1

    .line 540
    :cond_9
    const/16 v24, 0x51

    move/from16 v0, v24

    if-ne v0, v5, :cond_b

    .line 541
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v17

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v24

    if-gez v24, :cond_8

    .line 542
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/pharos/link/kcp/KcpJava;->ack_push(JJ)V

    .line 543
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v17

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v24

    if-ltz v24, :cond_8

    .line 544
    new-instance v16, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    long-to-int v0, v9

    move/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava$Segment;-><init>(Lcom/netease/pharos/link/kcp/KcpJava;I)V

    .line 545
    .local v16, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    move-object/from16 v0, v16

    iput-wide v6, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->conv:J

    .line 546
    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->cmd:J

    .line 547
    int-to-long v0, v8

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    .line 548
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    .line 549
    move-wide/from16 v0, v19

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->ts:J

    .line 550
    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    .line 551
    move-wide/from16 v0, v21

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->una:J

    .line 553
    const-wide/16 v24, 0x0

    cmp-long v24, v9, v24

    if-lez v24, :cond_a

    .line 554
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    long-to-int v0, v9

    move/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v13, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->parse_data(Lcom/netease/pharos/link/kcp/KcpJava$Segment;)V

    goto/16 :goto_3

    .line 560
    .end local v16    # "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    :cond_b
    const/16 v24, 0x53

    move/from16 v0, v24

    if-ne v0, v5, :cond_c

    .line 563
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x2

    or-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    goto/16 :goto_3

    .line 564
    :cond_c
    const/16 v24, 0x54

    move/from16 v0, v24

    if-eq v0, v5, :cond_8

    .line 567
    const/16 v24, -0x3

    goto/16 :goto_0

    .line 580
    .end local v5    # "cmd":B
    .end local v6    # "conv_":J
    .end local v8    # "frg":B
    .end local v9    # "length":J
    .end local v17    # "sn":J
    .end local v19    # "ts":J
    .end local v21    # "una":J
    .end local v23    # "wnd":I
    .restart local v11    # "mss_":J
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    move-wide/from16 v24, v0

    cmp-long v24, v24, v11

    if-gez v24, :cond_e

    .line 581
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    .line 583
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    move-wide/from16 v24, v0

    mul-long v26, v11, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    const-wide/16 v28, 0x10

    div-long v28, v11, v28

    add-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    .line 584
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    mul-long v24, v24, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_1

    .line 585
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    goto/16 :goto_2
.end method

.method public Interval(I)I
    .locals 2
    .param p1, "interval_"    # I

    .prologue
    .line 891
    const/16 v0, 0x1388

    if-le p1, v0, :cond_1

    .line 892
    const/16 p1, 0x1388

    .line 896
    :cond_0
    :goto_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->interval:J

    .line 897
    const/4 v0, 0x0

    return v0

    .line 893
    :cond_1
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 894
    const/16 p1, 0xa

    goto :goto_0
.end method

.method public NoDelay(IIII)I
    .locals 2
    .param p1, "nodelay_"    # I
    .param p2, "interval_"    # I
    .param p3, "resend_"    # I
    .param p4, "nc_"    # I

    .prologue
    .line 907
    if-lez p1, :cond_0

    .line 908
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nodelay:J

    .line 909
    if-eqz p1, :cond_5

    .line 910
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_minrto:J

    .line 916
    :cond_0
    :goto_0
    if-ltz p2, :cond_2

    .line 917
    const/16 v0, 0x1388

    if-le p2, v0, :cond_6

    .line 918
    const/16 p2, 0x1388

    .line 922
    :cond_1
    :goto_1
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->interval:J

    .line 925
    :cond_2
    if-ltz p3, :cond_3

    .line 926
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->fastresend:J

    .line 929
    :cond_3
    if-ltz p4, :cond_4

    .line 930
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nocwnd:J

    .line 933
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 912
    :cond_5
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_minrto:J

    goto :goto_0

    .line 919
    :cond_6
    const/16 v0, 0xa

    if-ge p2, v0, :cond_1

    .line 920
    const/16 p2, 0xa

    goto :goto_1
.end method

.method public PeekSize()I
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v1, -0x1

    .line 223
    iget-object v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 229
    .local v2, "seq":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-wide v3, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    cmp-long v3, v9, v3

    if-nez v3, :cond_2

    .line 230
    iget-object v3, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    array-length v1, v3

    goto :goto_0

    .line 233
    :cond_2
    iget-object v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    iget-wide v5, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, "length":I
    iget-object v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 240
    .local v0, "item":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-object v4, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    array-length v4, v4

    add-int/2addr v1, v4

    .line 241
    iget-wide v4, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    cmp-long v4, v9, v4

    if-nez v4, :cond_3

    goto :goto_0
.end method

.method public Recv([B)I
    .locals 10
    .param p1, "buffer"    # [B

    .prologue
    .line 253
    iget-object v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 254
    const/4 v2, -0x1

    .line 310
    :cond_0
    :goto_0
    return v2

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/netease/pharos/link/kcp/KcpJava;->PeekSize()I

    move-result v3

    .line 258
    .local v3, "peekSize":I
    if-gez v3, :cond_2

    .line 259
    const/4 v2, -0x2

    goto :goto_0

    .line 262
    :cond_2
    array-length v5, p1

    if-le v3, v5, :cond_3

    .line 263
    const/4 v2, -0x3

    goto :goto_0

    .line 266
    :cond_3
    const/4 v1, 0x0

    .line 267
    .local v1, "fast_recover":Z
    iget-object v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    .line 268
    const/4 v1, 0x1

    .line 272
    :cond_4
    const/4 v0, 0x0

    .line 273
    .local v0, "count":I
    const/4 v2, 0x0

    .line 274
    .local v2, "n":I
    iget-object v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    .line 283
    :goto_1
    if-lez v0, :cond_6

    .line 284
    iget-object v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v0, v6}, Lcom/netease/pharos/link/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    .line 288
    :cond_6
    const/4 v0, 0x0

    .line 289
    iget-object v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    .line 299
    :cond_7
    if-lez v0, :cond_8

    .line 300
    iget-object v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v0, v6}, Lcom/netease/pharos/link/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    .line 304
    :cond_8
    iget-object v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    if-eqz v1, :cond_0

    .line 307
    iget-wide v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    const-wide/16 v7, 0x2

    or-long/2addr v5, v7

    iput-wide v5, p0, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    goto :goto_0

    .line 274
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 275
    .local v4, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-object v6, v4, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    array-length v8, v8

    invoke-static {v6, v7, p1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v6, v4, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    array-length v6, v6

    add-int/2addr v2, v6

    .line 277
    add-int/lit8 v0, v0, 0x1

    .line 278
    const-wide/16 v6, 0x0

    iget-wide v8, v4, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    goto :goto_1

    .line 289
    .end local v4    # "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 290
    .restart local v4    # "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-wide v6, v4, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    iget-wide v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 291
    iget-object v6, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-wide v6, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public Send([B)I
    .locals 13
    .param p1, "buffer"    # [B

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 317
    array-length v7, p1

    if-nez v7, :cond_0

    .line 318
    const/4 v7, -0x1

    .line 352
    :goto_0
    return v7

    .line 323
    :cond_0
    array-length v7, p1

    int-to-long v7, v7

    iget-wide v10, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    cmp-long v7, v7, v10

    if-gez v7, :cond_1

    .line 324
    const/4 v0, 0x1

    .line 329
    .local v0, "count":I
    :goto_1
    const/16 v7, 0xff

    if-ge v7, v0, :cond_2

    .line 330
    const/4 v7, -0x2

    goto :goto_0

    .line 326
    .end local v0    # "count":I
    :cond_1
    array-length v7, p1

    int-to-long v7, v7

    iget-wide v10, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    add-long/2addr v7, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v7, v10

    long-to-int v7, v7

    iget-wide v10, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    long-to-int v8, v10

    div-int v0, v7, v8

    .restart local v0    # "count":I
    goto :goto_1

    .line 333
    :cond_2
    if-nez v0, :cond_3

    .line 334
    const/4 v0, 0x1

    .line 337
    :cond_3
    const/4 v2, 0x0

    .line 338
    .local v2, "offset":I
    array-length v7, p1

    int-to-long v5, v7

    .line 340
    .local v5, "temp":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v0, :cond_4

    move v7, v9

    .line 352
    goto :goto_0

    .line 341
    :cond_4
    iget-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    cmp-long v7, v5, v7

    if-lez v7, :cond_6

    iget-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    :goto_3
    long-to-int v4, v7

    .line 342
    .local v4, "size":I
    new-instance v3, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    invoke-direct {v3, p0, v4}, Lcom/netease/pharos/link/kcp/KcpJava$Segment;-><init>(Lcom/netease/pharos/link/kcp/KcpJava;I)V

    .line 343
    .local v3, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "the size is %d\n"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v7, v8, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 344
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "the offset is %d\n"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v7, v8, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 345
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "the buffer is %d\n"

    new-array v10, v12, [Ljava/lang/Object;

    array-length v11, p1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v7, v8, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 346
    iget-object v7, v3, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    invoke-static {p1, v2, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    add-int/2addr v2, v4

    .line 348
    sub-int v7, v0, v1

    add-int/lit8 v7, v7, -0x1

    int-to-long v7, v7

    iput-wide v7, v3, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    .line 349
    iget-object v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    cmp-long v7, v5, v7

    if-lez v7, :cond_5

    iget-wide v7, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    sub-long/2addr v5, v7

    .line 340
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    .end local v4    # "size":I
    :cond_6
    move-wide v7, v5

    .line 341
    goto :goto_3
.end method

.method public SetMtu(I)I
    .locals 5
    .param p1, "mtu_"    # I

    .prologue
    .line 875
    const/16 v1, 0x32

    if-lt p1, v1, :cond_0

    const/16 v1, 0x18

    if-ge p1, v1, :cond_1

    .line 876
    :cond_0
    const/4 v1, -0x1

    .line 887
    :goto_0
    return v1

    .line 879
    :cond_1
    add-int/lit8 v1, p1, 0x18

    mul-int/lit8 v1, v1, 0x3

    new-array v0, v1, [B

    .line 880
    .local v0, "buffer_":[B
    if-nez v0, :cond_2

    .line 881
    const/4 v1, -0x2

    goto :goto_0

    .line 884
    :cond_2
    int-to-long v1, p1

    iput-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    .line 885
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    const-wide/16 v3, 0x18

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    .line 886
    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    .line 887
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Update(J)V
    .locals 5
    .param p1, "current_"    # J

    .prologue
    .line 804
    iput-wide p1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    .line 806
    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->updated:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 807
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->updated:J

    .line 808
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    iput-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    .line 811
    :cond_0
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    iget-wide v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    invoke-static {v1, v2, v3, v4}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v0

    .line 813
    .local v0, "slap":I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    const/16 v1, -0x2710

    if-ge v0, v1, :cond_2

    .line 814
    :cond_1
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    iput-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    .line 815
    const/4 v0, 0x0

    .line 818
    :cond_2
    if-ltz v0, :cond_4

    .line 819
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    iget-wide v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->interval:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    .line 820
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    iget-wide v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    invoke-static {v1, v2, v3, v4}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v1

    if-ltz v1, :cond_3

    .line 821
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    iget-wide v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->interval:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_flush:J

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/netease/pharos/link/kcp/KcpJava;->flush()V

    .line 825
    :cond_4
    return-void
.end method

.method public WaitSnd()I
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public WndSize(II)I
    .locals 2
    .param p1, "sndwnd"    # I
    .param p2, "rcvwnd"    # I

    .prologue
    .line 938
    if-lez p1, :cond_0

    .line 939
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_wnd:J

    .line 942
    :cond_0
    if-lez p2, :cond_1

    .line 943
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    .line 945
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method ack_push(JJ)V
    .locals 2
    .param p1, "sn"    # J
    .param p3, "ts"    # J

    .prologue
    .line 422
    iget-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method flush()V
    .locals 34

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    .line 609
    .local v8, "current_":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    .line 610
    .local v5, "buffer_":[B
    const/4 v6, 0x0

    .line 611
    .local v6, "change":I
    const/4 v15, 0x0

    .line 613
    .local v15, "lost":I
    const-wide/16 v27, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->updated:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-nez v27, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    new-instance v25, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava$Segment;-><init>(Lcom/netease/pharos/link/kcp/KcpJava;I)V

    .line 618
    .local v25, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->conv:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->conv:J

    .line 619
    const-wide/16 v27, 0x52

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->cmd:J

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/link/kcp/KcpJava;->wnd_unused()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    .line 621
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->una:J

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    div-int/lit8 v7, v27, 0x2

    .line 625
    .local v7, "count":I
    const/16 v20, 0x0

    .line 626
    .local v20, "offset":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-lt v12, v7, :cond_10

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 639
    const-wide/16 v27, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-nez v27, :cond_15

    .line 640
    const-wide/16 v27, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-nez v27, :cond_12

    .line 641
    const-wide/16 v27, 0x1b58

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    .line 642
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->ts_probe:J

    .line 662
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1

    and-long v27, v27, v29

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_4

    .line 663
    const-wide/16 v27, 0x53

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->cmd:J

    .line 664
    add-int/lit8 v27, v20, 0x18

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-lez v27, :cond_3

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->output([BI)V

    .line 666
    const/16 v20, 0x0

    .line 668
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->encode([BI)I

    move-result v27

    add-int v20, v20, v27

    .line 672
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x2

    and-long v27, v27, v29

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_6

    .line 673
    const-wide/16 v27, 0x54

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->cmd:J

    .line 674
    add-int/lit8 v27, v20, 0x18

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-lez v27, :cond_5

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->output([BI)V

    .line 676
    const/16 v20, 0x0

    .line 678
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->encode([BI)I

    move-result v27

    add-int v20, v20, v27

    .line 681
    :cond_6
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    .line 684
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_wnd:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rmt_wnd:J

    move-wide/from16 v29, v0

    invoke-static/range {v27 .. v30}, Lcom/netease/pharos/link/kcp/KcpJava;->_imin_(JJ)J

    move-result-wide v10

    .line 685
    .local v10, "cwnd_":J
    const-wide/16 v27, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nocwnd:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-nez v27, :cond_7

    .line 686
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-static {v0, v1, v10, v11}, Lcom/netease/pharos/link/kcp/KcpJava;->_imin_(JJ)J

    move-result-wide v10

    .line 689
    :cond_7
    const/4 v7, 0x0

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_16

    .line 710
    :cond_8
    if-lez v7, :cond_9

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_que:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v0, v7, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    .line 715
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->fastresend:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-lez v27, :cond_17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->fastresend:J

    move-wide/from16 v21, v0

    .line 716
    .local v21, "resent":J
    :goto_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nodelay:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-nez v27, :cond_18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rto:J

    move-wide/from16 v27, v0

    const/16 v29, 0x3

    shr-long v23, v27, v29

    .line 719
    .local v23, "rtomin":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_a
    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_19

    .line 769
    if-lez v20, :cond_b

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->output([BI)V

    .line 774
    :cond_b
    if-eqz v6, :cond_d

    .line 775
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    move-wide/from16 v29, v0

    sub-long v13, v27, v29

    .line 776
    .local v13, "inflight":J
    const-wide/16 v27, 0x2

    div-long v27, v13, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    .line 777
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x2

    cmp-long v27, v27, v29

    if-gez v27, :cond_c

    .line 778
    const-wide/16 v27, 0x2

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    .line 780
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    move-wide/from16 v27, v0

    add-long v27, v27, v21

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    .line 781
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    move-wide/from16 v29, v0

    mul-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    .line 784
    .end local v13    # "inflight":J
    :cond_d
    if-eqz v15, :cond_f

    .line 785
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x2

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    .line 786
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x2

    cmp-long v27, v27, v29

    if-gez v27, :cond_e

    .line 787
    const-wide/16 v27, 0x2

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->ssthresh:J

    .line 789
    :cond_e
    const-wide/16 v27, 0x1

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    .line 790
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    .line 793
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1

    cmp-long v27, v27, v29

    if-gez v27, :cond_0

    .line 794
    const-wide/16 v27, 0x1

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->cwnd:J

    .line 795
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mss:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->incr:J

    goto/16 :goto_0

    .line 627
    .end local v10    # "cwnd_":J
    .end local v21    # "resent":J
    .end local v23    # "rtomin":J
    :cond_10
    add-int/lit8 v27, v20, 0x18

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-lez v27, :cond_11

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->output([BI)V

    .line 629
    const/16 v20, 0x0

    .line 632
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    mul-int/lit8 v28, v12, 0x2

    add-int/lit8 v28, v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->acklist:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    mul-int/lit8 v28, v12, 0x2

    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Long;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->ts:J

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->encode([BI)I

    move-result v27

    add-int v20, v20, v27

    .line 626
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 644
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->ts_probe:J

    move-wide/from16 v29, v0

    invoke-static/range {v27 .. v30}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v27

    if-ltz v27, :cond_2

    .line 645
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1b58

    cmp-long v27, v27, v29

    if-gez v27, :cond_13

    .line 646
    const-wide/16 v27, 0x1b58

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    .line 648
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x2

    div-long v29, v29, v31

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    .line 649
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    move-wide/from16 v27, v0

    const-wide/32 v29, 0x1d4c0

    cmp-long v27, v27, v29

    if-lez v27, :cond_14

    .line 650
    const-wide/32 v27, 0x1d4c0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    .line 652
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->current:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->ts_probe:J

    .line 653
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1

    or-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe:J

    goto/16 :goto_2

    .line 657
    :cond_15
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->ts_probe:J

    .line 658
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->probe_wait:J

    goto/16 :goto_2

    .line 690
    .restart local v10    # "cwnd_":J
    :cond_16
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 691
    .local v19, "nsnd_que1":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    move-wide/from16 v30, v0

    add-long v30, v30, v10

    invoke-static/range {v28 .. v31}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v28

    if-gez v28, :cond_8

    .line 694
    move-object/from16 v18, v19

    .line 695
    .local v18, "newseg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->conv:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->conv:J

    .line 696
    const-wide/16 v28, 0x51

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->cmd:J

    .line 697
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    .line 698
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->ts:J

    .line 699
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    .line 700
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->una:J

    .line 701
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->resendts:J

    .line 702
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rto:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    .line 703
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->fastack:J

    .line 704
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    .line 707
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 715
    .end local v18    # "newseg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    .end local v19    # "nsnd_que1":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    :cond_17
    const-wide/16 v21, -0x1

    goto/16 :goto_4

    .line 716
    .restart local v21    # "resent":J
    :cond_18
    const-wide/16 v23, 0x0

    goto/16 :goto_5

    .line 719
    .restart local v23    # "rtomin":J
    :cond_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 720
    .local v26, "segment":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    const/16 v17, 0x0

    .line 721
    .local v17, "needsend":Z
    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-nez v28, :cond_1d

    .line 722
    const/16 v17, 0x1

    .line 723
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    .line 724
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rto:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    .line 725
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    move-wide/from16 v28, v0

    add-long v28, v28, v8

    add-long v28, v28, v23

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->resendts:J

    .line 745
    :cond_1a
    :goto_7
    if-eqz v17, :cond_a

    .line 746
    move-object/from16 v0, v26

    iput-wide v8, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->ts:J

    .line 747
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    .line 748
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->una:J

    .line 750
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v16, v28, 0x18

    .line 751
    .local v16, "need":I
    add-int v28, v20, v16

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->mtu:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-ltz v28, :cond_1b

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->output([BI)V

    .line 753
    const/16 v20, 0x0

    .line 756
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->encode([BI)I

    move-result v28

    add-int v20, v20, v28

    .line 757
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_1c

    .line 758
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->buffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v20

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int v20, v20, v28

    .line 762
    :cond_1c
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->dead_link:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-ltz v28, :cond_a

    .line 763
    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->state:J

    goto/16 :goto_6

    .line 726
    .end local v16    # "need":I
    :cond_1d
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->resendts:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v28

    if-ltz v28, :cond_1f

    .line 727
    const/16 v17, 0x1

    .line 728
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    .line 729
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->xmit:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava;->xmit:J

    .line 730
    const-wide/16 v28, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->nodelay:J

    move-wide/from16 v30, v0

    cmp-long v28, v28, v30

    if-nez v28, :cond_1e

    .line 731
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rto:J

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    .line 735
    :goto_8
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    move-wide/from16 v28, v0

    add-long v28, v28, v8

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->resendts:J

    .line 736
    const/4 v15, 0x1

    .line 737
    goto/16 :goto_7

    .line 733
    :cond_1e
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rto:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x2

    div-long v30, v30, v32

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    goto :goto_8

    .line 737
    :cond_1f
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->fastack:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v21

    if-ltz v28, :cond_1a

    .line 738
    const/16 v17, 0x1

    .line 739
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    .line 740
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->fastack:J

    .line 741
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    move-wide/from16 v28, v0

    add-long v28, v28, v8

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->resendts:J

    .line 742
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7
.end method

.method protected abstract output([BI)V
.end method

.method parse_ack(J)V
    .locals 7
    .param p1, "sn"    # J

    .prologue
    .line 388
    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    invoke-static {p1, p2, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    invoke-static {p1, p2, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v2

    if-ltz v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v0, 0x0

    .line 393
    .local v0, "index":I
    iget-object v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 394
    .local v1, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-wide v3, v1, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    .line 395
    iget-object v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 398
    :cond_2
    iget-wide v3, v1, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->fastack:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->fastack:J

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method parse_data(Lcom/netease/pharos/link/kcp/KcpJava$Segment;)V
    .locals 13
    .param p1, "newseg"    # Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .prologue
    .line 428
    iget-wide v6, p1, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    .line 429
    .local v6, "sn":J
    const/4 v4, 0x0

    .line 431
    .local v4, "repeat":Z
    iget-wide v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    iget-wide v10, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v8

    if-gez v8, :cond_0

    iget-wide v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    invoke-static {v6, v7, v8, v9}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v8

    if-gez v8, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 436
    .local v3, "n":I
    const/4 v0, -0x1

    .line 439
    .local v0, "after_idx":I
    move v2, v3

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_4

    .line 453
    :goto_2
    if-nez v4, :cond_2

    .line 454
    const/4 v8, -0x1

    if-ne v0, v8, :cond_7

    .line 455
    iget-object v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 463
    :cond_2
    :goto_3
    const/4 v1, 0x0

    .line 464
    .local v1, "count":I
    iget-object v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 475
    :cond_3
    if-lez v1, :cond_0

    .line 476
    iget-object v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v1, v9}, Lcom/netease/pharos/link/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 440
    .end local v1    # "count":I
    :cond_4
    iget-object v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 441
    .local v5, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-wide v8, v5, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_5

    .line 442
    const/4 v4, 0x1

    .line 443
    goto :goto_2

    .line 446
    :cond_5
    iget-wide v8, v5, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    invoke-static {v6, v7, v8, v9}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v8

    if-lez v8, :cond_6

    .line 447
    move v0, v2

    .line 448
    goto :goto_2

    .line 439
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 457
    .end local v5    # "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    :cond_7
    iget-object v8, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_buf:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 464
    .restart local v1    # "count":I
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 465
    .restart local v5    # "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-wide v9, v5, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    iget-wide v11, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v9, v9

    iget-wide v11, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 466
    iget-object v9, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-wide v9, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_nxt:J

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method parse_una(J)V
    .locals 5
    .param p1, "una"    # J

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "count":I
    iget-object v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 415
    :cond_0
    if-lez v0, :cond_1

    .line 416
    iget-object v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->slice(Ljava/util/ArrayList;II)V

    .line 418
    :cond_1
    return-void

    .line 407
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    .line 408
    .local v1, "seg":Lcom/netease/pharos/link/kcp/KcpJava$Segment;
    iget-wide v3, v1, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    invoke-static {p1, p2, v3, v4}, Lcom/netease/pharos/link/kcp/KcpJava;->_itimediff(JJ)I

    move-result v3

    if-lez v3, :cond_0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method shrink_buf()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nsnd_buf:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;

    iget-wide v0, v0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_nxt:J

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->snd_una:J

    goto :goto_0
.end method

.method update_ack(I)V
    .locals 10
    .param p1, "rtt"    # I

    .prologue
    const-wide/16 v8, 0x4

    const-wide/16 v4, 0x1

    .line 357
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 358
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    .line 359
    div-int/lit8 v0, p1, 0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rttval:J

    .line 373
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rttval:J

    mul-long/2addr v2, v8

    invoke-static {v4, v5, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJava;->_imax_(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v7, v0

    .line 374
    .local v7, "rto":I
    iget-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_minrto:J

    int-to-long v2, v7

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Lcom/netease/pharos/link/kcp/KcpJava;->_ibound_(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rto:J

    .line 375
    return-void

    .line 361
    .end local v7    # "rto":I
    :cond_1
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    sub-long/2addr v0, v2

    long-to-int v6, v0

    .line 362
    .local v6, "delta":I
    if-gez v6, :cond_2

    .line 363
    neg-int v6, v6

    .line 366
    :cond_2
    const-wide/16 v0, 0x3

    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rttval:J

    mul-long/2addr v0, v2

    int-to-long v2, v6

    add-long/2addr v0, v2

    div-long/2addr v0, v8

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_rttval:J

    .line 367
    const-wide/16 v0, 0x7

    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    .line 368
    iget-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 369
    iput-wide v4, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rx_srtt:J

    goto :goto_0
.end method

.method wnd_unused()I
    .locals 4

    .prologue
    .line 600
    iget-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 601
    iget-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava;->rcv_wnd:J

    long-to-int v0, v0

    iget-object v1, p0, Lcom/netease/pharos/link/kcp/KcpJava;->nrcv_que:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 603
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
