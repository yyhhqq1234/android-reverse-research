.class Lcom/netease/pharos/link/kcp/KcpJava$Segment;
.super Ljava/lang/Object;
.source "KcpJava.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/link/kcp/KcpJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation


# instance fields
.field protected cmd:J

.field protected conv:J

.field protected data:[B

.field protected fastack:J

.field protected frg:J

.field protected resendts:J

.field protected rto:J

.field protected sn:J

.field final synthetic this$0:Lcom/netease/pharos/link/kcp/KcpJava;

.field protected ts:J

.field protected una:J

.field protected wnd:J

.field protected xmit:J


# direct methods
.method protected constructor <init>(Lcom/netease/pharos/link/kcp/KcpJava;I)V
    .locals 2
    .param p2, "size"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 143
    iput-object p1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->this$0:Lcom/netease/pharos/link/kcp/KcpJava;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->conv:J

    .line 131
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->cmd:J

    .line 132
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    .line 133
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    .line 134
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->ts:J

    .line 135
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    .line 136
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->una:J

    .line 137
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->resendts:J

    .line 138
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->rto:J

    .line 139
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->fastack:J

    .line 140
    iput-wide v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->xmit:J

    .line 144
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    .line 145
    return-void
.end method


# virtual methods
.method protected encode([BI)I
    .locals 3
    .param p1, "ptr"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 149
    move v0, p2

    .line 151
    .local v0, "offset_":I
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->conv:J

    invoke-static {p1, p2, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    .line 152
    add-int/lit8 p2, p2, 0x4

    .line 153
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->cmd:J

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p1, p2, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode8u([BIB)V

    .line 154
    add-int/lit8 p2, p2, 0x1

    .line 155
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->frg:J

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p1, p2, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode8u([BIB)V

    .line 156
    add-int/lit8 p2, p2, 0x1

    .line 157
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->wnd:J

    long-to-int v1, v1

    invoke-static {p1, p2, v1}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode16u([BII)V

    .line 158
    add-int/lit8 p2, p2, 0x2

    .line 159
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->ts:J

    invoke-static {p1, p2, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    .line 160
    add-int/lit8 p2, p2, 0x4

    .line 161
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->sn:J

    invoke-static {p1, p2, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    .line 162
    add-int/lit8 p2, p2, 0x4

    .line 163
    iget-wide v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->una:J

    invoke-static {p1, p2, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    .line 164
    add-int/lit8 p2, p2, 0x4

    .line 165
    iget-object v1, p0, Lcom/netease/pharos/link/kcp/KcpJava$Segment;->data:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Lcom/netease/pharos/link/kcp/KcpJava;->ikcp_encode32u([BIJ)V

    .line 166
    add-int/lit8 p2, p2, 0x4

    .line 168
    sub-int v1, p2, v0

    return v1
.end method
