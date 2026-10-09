.class public Lcom/tencent/liteav/d;
.super Ljava/lang/Object;
.source "TXCDataReport.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I

.field private l:J

.field private m:Z

.field private n:J

.field private o:I

.field private p:Z

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "TXCDataReport"

    sput-object v0, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/d;->p:Z

    .line 98
    iput-wide v2, p0, Lcom/tencent/liteav/d;->q:J

    .line 99
    iput-wide v2, p0, Lcom/tencent/liteav/d;->r:J

    .line 100
    iput-wide v2, p0, Lcom/tencent/liteav/d;->s:J

    .line 101
    iput-wide v2, p0, Lcom/tencent/liteav/d;->t:J

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    .line 107
    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/liteav/d;->o:I

    .line 108
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 778
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const-wide/16 v12, -0x1

    .line 216
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 217
    iget-object v0, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 218
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 219
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 220
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->T:I

    sget v4, Lcom/tencent/liteav/basic/datareport/a;->ai:I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 224
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v6

    .line 226
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u64_timestamp"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 229
    sget v2, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v3, "str_device_type"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v4, "str_device_type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_network_type"

    const-string/jumbo v3, "u32_network_type"

    invoke-direct {p0, v3}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 236
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v2, 0x1bc3

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    .line 237
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v2, 0x1bc4

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v2

    .line 238
    cmp-long v1, v2, v12

    if-eqz v1, :cond_0

    .line 239
    sub-long/2addr v2, v8

    .line 242
    :cond_0
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v4, "u32_dns_time"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 245
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v4, 0x1bc6

    invoke-static {v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 246
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v4, "u32_server_ip"

    invoke-static {v0, v1, v4, v10}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v4, 0x1bc5

    invoke-static {v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v4

    .line 250
    cmp-long v1, v4, v12

    if-eqz v1, :cond_1

    .line 251
    sub-long/2addr v4, v8

    .line 254
    :cond_1
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v11, "u32_connect_server_time"

    invoke-static {v0, v1, v11, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 257
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v11, "u32_stream_begin"

    invoke-static {v0, v1, v11, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 260
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v11, 0x1771

    invoke-static {v1, v11}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v12

    sub-long/2addr v12, v8

    iput-wide v12, p0, Lcom/tencent/liteav/d;->j:J

    .line 261
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v11, "u32_first_i_frame"

    iget-wide v12, p0, Lcom/tencent/liteav/d;->j:J

    invoke-static {v0, v1, v11, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 264
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v11, 0x1bbf

    invoke-static {v1, v11}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v12

    sub-long v8, v12, v8

    .line 265
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v11, "u32_first_frame_down"

    invoke-static {v0, v1, v11, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 268
    sget v11, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v12, "str_user_id"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v13, "str_user_id"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v11, v12, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    sget v11, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v12, "str_package_name"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v13, "str_package_name"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v11, v12, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v11, "str_app_version"

    iget-object v12, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v11, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    sget v11, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v12, "dev_uuid"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v13, "dev_uuid"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v11, v12, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v11, "u32_isp2p"

    iget v12, p0, Lcom/tencent/liteav/d;->k:I

    int-to-long v12, v12

    invoke-static {v0, v1, v11, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 282
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 285
    sget-object v1, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "report evt 40101: token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v11, "u64_timestamp"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "str_device_type"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v7, "str_device_type"

    .line 287
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u32_network_type"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u32_network_type"

    .line 288
    invoke-direct {p0, v6}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u32_dns_time"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_connect_server_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_server_ip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_first_frame_down"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_first_i_frame"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/liteav/d;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_user_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v3, "str_user_id"

    .line 294
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_package_name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v3, "str_package_name"

    .line 295
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_app_version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dev_uuid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v3, "dev_uuid"

    .line 297
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_isp2p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tencent/liteav/d;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/16 v6, -0x1

    .line 304
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 305
    iget-object v0, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 306
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 307
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 308
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->T:I

    sget v4, Lcom/tencent/liteav/basic/datareport/a;->ai:I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 312
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v2

    .line 314
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v4, "u64_timestamp"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 317
    sget v2, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v3, "str_device_type"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v4, "str_device_type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_network_type"

    const-string/jumbo v3, "u32_network_type"

    invoke-direct {p0, v3}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 323
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_dns_time"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 326
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_server_ip"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_connect_server_time"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 332
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_stream_begin"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 335
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_first_i_frame"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 338
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_first_frame_down"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 341
    sget v2, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v3, "str_user_id"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v4, "str_user_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    sget v2, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v3, "str_package_name"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v4, "str_package_name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 347
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "str_app_version"

    iget-object v3, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    sget v2, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string v3, "dev_uuid"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v4, "dev_uuid"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    const-string/jumbo v2, "u32_isp2p"

    iget v3, p0, Lcom/tencent/liteav/d;->k:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 355
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->T:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 356
    return-void
.end method

.method private h()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 359
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 360
    iget-object v0, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 361
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 362
    iput-boolean v2, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 363
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->V:I

    sget v4, Lcom/tencent/liteav/basic/datareport/a;->ai:I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 367
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v2

    .line 368
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v4, "u64_timestamp"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 371
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v4, 0x1bc3

    invoke-static {v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v4

    .line 372
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 373
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_result"

    invoke-static {v0, v1, v6, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 376
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v6, 0x1773

    invoke-static {v1, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v6

    .line 377
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v8, "u32_avg_block_time"

    invoke-static {v0, v1, v8, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 380
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "str_app_version"

    iget-object v7, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_isp2p"

    iget v7, p0, Lcom/tencent/liteav/d;->k:I

    int-to-long v8, v7

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 386
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_avg_load"

    iget-object v7, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x7d1

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 389
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_load_cnt"

    iget-object v7, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x7d2

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 392
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_max_load"

    iget-object v7, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x7d3

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 395
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_first_i_frame"

    iget-wide v8, p0, Lcom/tencent/liteav/d;->j:J

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 398
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_speed_cnt"

    iget-object v7, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x7d4

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 401
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    const-string/jumbo v6, "u32_nodata_cnt"

    iget-object v7, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x7d5

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 403
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->V:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 405
    sget-object v1, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report evt 40102: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "str_stream_url"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u64_timestamp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_result"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_avg_block_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_avg_block_time"

    .line 409
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_first_i_frame"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/liteav/d;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_app_version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_isp2p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tencent/liteav/d;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_avg_load"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_avg_load"

    .line 413
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_load_cnt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_load_cnt"

    .line 414
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_max_load"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_max_load"

    .line 415
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_speed_cnt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_speed_cnt"

    .line 416
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_nodata_cnt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_nodata_cnt"

    .line 417
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private i()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 422
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 423
    iget-object v0, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 424
    iput-boolean v8, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 425
    iput-boolean v9, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 426
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->U:I

    sget v4, Lcom/tencent/liteav/basic/datareport/a;->ai:I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 430
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v2, "u32_avg_net_speed"

    const-string/jumbo v3, "u32_avg_net_speed"

    invoke-direct {p0, v3}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 433
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v2, "u32_fps"

    const-string/jumbo v3, "u32_fps"

    invoke-direct {p0, v3}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 436
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v2, 0x1774

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v2

    .line 437
    iget-wide v4, p0, Lcom/tencent/liteav/d;->l:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 438
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v4, "u32_avg_block_count"

    invoke-static {v0, v1, v4, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 446
    :goto_0
    iput-wide v2, p0, Lcom/tencent/liteav/d;->l:J

    .line 448
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->a()[I

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v3, 0x7d6

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v2

    .line 452
    sget v4, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v5, "u32_avg_cache_count"

    invoke-static {v0, v4, v5, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 455
    sget v4, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v5, "u32_cpu_usage"

    aget v6, v1, v9

    int-to-long v6, v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 458
    sget v4, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v5, "u32_app_cpu_usage"

    aget v1, v1, v8

    int-to-long v6, v1

    invoke-static {v0, v4, v5, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 461
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v4, "str_app_version"

    iget-object v5, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v4, "u32_isp2p"

    iget v5, p0, Lcom/tencent/liteav/d;->k:I

    int-to-long v6, v5

    invoke-static {v0, v1, v4, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 466
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 469
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->p:Z

    if-eqz v0, :cond_0

    .line 470
    iget-wide v0, p0, Lcom/tencent/liteav/d;->t:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tencent/liteav/d;->t:J

    .line 471
    iget-wide v0, p0, Lcom/tencent/liteav/d;->s:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/d;->s:J

    .line 472
    iget-wide v0, p0, Lcom/tencent/liteav/d;->r:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 473
    iput-wide v2, p0, Lcom/tencent/liteav/d;->r:J

    .line 476
    :cond_0
    return-void

    .line 440
    :cond_1
    iget-wide v4, p0, Lcom/tencent/liteav/d;->l:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 441
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v4, "u32_avg_block_count"

    iget-wide v6, p0, Lcom/tencent/liteav/d;->l:J

    sub-long v6, v2, v6

    invoke-static {v0, v1, v4, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_0

    .line 443
    :cond_2
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->U:I

    const-string/jumbo v4, "u32_avg_block_count"

    invoke-static {v0, v1, v4, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_0
.end method

.method private j()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 481
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 484
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1bc8

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v5, 0x1bc9

    invoke-static {v1, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 486
    iget-object v5, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v6, 0x1bca

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 487
    iget-object v6, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v7, 0x1bc1

    invoke-static {v6, v7}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v6

    .line 488
    iget-object v7, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x1bc2

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 489
    iget-object v8, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v9, 0x1bc7

    invoke-static {v8, v9}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v8

    .line 491
    const-string/jumbo v9, "stream_url"

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v0, "stream_id"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v0, "bizid"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v0, "err_code"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v0, "err_info"

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v0, "channel_type"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 501
    iget-wide v6, p0, Lcom/tencent/liteav/d;->q:J

    sub-long v6, v0, v6

    .line 502
    const-string v5, "start_time"

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    iget-wide v10, p0, Lcom/tencent/liteav/d;->q:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v5, "end_time"

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string/jumbo v0, "total_time"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1773

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v6

    .line 509
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1776

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v0

    .line 510
    iget-object v5, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x1775

    invoke-static {v5, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    .line 512
    cmp-long v5, v6, v2

    if-eqz v5, :cond_3

    .line 513
    div-long/2addr v0, v6

    .line 515
    :goto_0
    const-string v5, "block_count"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v5, "block_duration_max"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v5, "block_duration_avg"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-wide v0, p0, Lcom/tencent/liteav/d;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 523
    iget-wide v0, p0, Lcom/tencent/liteav/d;->s:J

    iget-wide v6, p0, Lcom/tencent/liteav/d;->t:J

    div-long/2addr v0, v6

    .line 525
    :goto_1
    const-string v5, "jitter_cache_max"

    iget-wide v6, p0, Lcom/tencent/liteav/d;->r:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v5, "jitter_cache_avg"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txCreateToken()Ljava/lang/String;

    move-result-object v5

    .line 531
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->ab:I

    .line 532
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->ah:I

    .line 533
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 534
    const-string v7, "LINKMIC"

    iput-object v7, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->command_id_comment:Ljava/lang/String;

    .line 536
    iget-object v7, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    invoke-static {v7, v5, v6, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 537
    sget-object v0, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report evt 40402: token="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 539
    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    sget-object v7, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RealTimePlayStatisticInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    if-eqz v0, :cond_0

    .line 545
    invoke-static {v5, v6, v1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 548
    :cond_1
    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/d;->p:Z

    .line 552
    iput-wide v2, p0, Lcom/tencent/liteav/d;->q:J

    .line 553
    iput-wide v2, p0, Lcom/tencent/liteav/d;->t:J

    .line 554
    iput-wide v2, p0, Lcom/tencent/liteav/d;->s:J

    .line 555
    iput-wide v2, p0, Lcom/tencent/liteav/d;->r:J

    .line 556
    return-void

    :cond_2
    move-wide v0, v2

    goto/16 :goto_1

    :cond_3
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method private k()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    .line 560
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 561
    iput-boolean v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 562
    iput-boolean v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 563
    iget-object v0, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v2, 0x1b65

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v2

    .line 568
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v4, "token"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 569
    iget-object v4, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v5, Lcom/tencent/liteav/basic/datareport/a;->P:I

    sget v6, Lcom/tencent/liteav/basic/datareport/a;->ah:I

    invoke-static {v4, v0, v5, v6, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 571
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v4

    .line 572
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u64_timestamp"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v8

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 574
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v7, "str_device_type"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v8, "str_device_type"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v7, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_network_type"

    const-string/jumbo v7, "u32_network_type"

    invoke-direct {p0, v7}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 578
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_dns_time"

    invoke-static {v0, v1, v6, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 580
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_connect_server_time"

    invoke-static {v0, v1, v6, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 582
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_server_ip"

    const-string v7, ""

    invoke-static {v0, v1, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_video_resolution"

    iget v7, p0, Lcom/tencent/liteav/d;->d:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, p0, Lcom/tencent/liteav/d;->e:I

    or-int/2addr v7, v8

    int-to-long v8, v7

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 586
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_audio_samplerate"

    iget v7, p0, Lcom/tencent/liteav/d;->g:I

    int-to-long v8, v7

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 588
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_video_bitrate"

    iget v7, p0, Lcom/tencent/liteav/d;->f:I

    int-to-long v8, v7

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 590
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v7, "str_user_id"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v8, "str_user_id"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v7, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 592
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v7, "str_package_name"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v8, "str_package_name"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v7, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_channel_type"

    invoke-static {v0, v1, v6, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 596
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "str_app_version"

    iget-object v7, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 598
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string v7, "dev_uuid"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v8, "dev_uuid"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v7, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 600
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 602
    sget-object v1, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report evt 40001: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "str_stream_url"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u64_timestamp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "u32_dns_time"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=-1 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "u32_connect_server_time"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=-1 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "u32_server_ip"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "u32_audio_samplerate"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/tencent/liteav/d;->g:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "u32_video_bitrate"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/tencent/liteav/d;->f:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "u32_channel_type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dev_uuid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_max_load"

    .line 611
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_app_version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v3, "dev_uuid"

    .line 612
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private l()V
    .locals 14

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 618
    new-instance v6, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v6}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 619
    iput-boolean v0, v6, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 620
    iput-boolean v0, v6, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 621
    iget-object v0, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1b64

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 627
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1b61

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v4

    .line 628
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1b62

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v0

    .line 629
    cmp-long v2, v0, v8

    if-eqz v2, :cond_1

    .line 630
    sub-long/2addr v0, v4

    move-wide v2, v0

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1b63

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v0

    .line 635
    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 636
    sub-long/2addr v0, v4

    move-wide v4, v0

    .line 640
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1b65

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v8

    .line 642
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    iget-object v1, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v10, Lcom/tencent/liteav/basic/datareport/a;->P:I

    sget v11, Lcom/tencent/liteav/basic/datareport/a;->ah:I

    invoke-static {v1, v0, v10, v11, v6}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 645
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v10

    .line 646
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u64_timestamp"

    invoke-static {v0, v1, v6, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 648
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v12, "str_device_type"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v13, "str_device_type"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v12, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 650
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_network_type"

    const-string/jumbo v12, "u32_network_type"

    invoke-direct {p0, v12}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v0, v1, v6, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 652
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_dns_time"

    invoke-static {v0, v1, v6, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 654
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_connect_server_time"

    invoke-static {v0, v1, v6, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 656
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_server_ip"

    invoke-static {v0, v1, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 658
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_video_resolution"

    iget v12, p0, Lcom/tencent/liteav/d;->d:I

    shl-int/lit8 v12, v12, 0x10

    iget v13, p0, Lcom/tencent/liteav/d;->e:I

    or-int/2addr v12, v13

    int-to-long v12, v12

    invoke-static {v0, v1, v6, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 660
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_audio_samplerate"

    iget v12, p0, Lcom/tencent/liteav/d;->g:I

    int-to-long v12, v12

    invoke-static {v0, v1, v6, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 662
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_video_bitrate"

    iget v12, p0, Lcom/tencent/liteav/d;->f:I

    int-to-long v12, v12

    invoke-static {v0, v1, v6, v12, v13}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 664
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v12, "str_user_id"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v13, "str_user_id"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v12, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 666
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v12, "str_package_name"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v13, "str_package_name"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v12, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 668
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "u32_channel_type"

    invoke-static {v0, v1, v6, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 670
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string/jumbo v6, "str_app_version"

    iget-object v12, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v6, v12}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 672
    sget v6, Lcom/tencent/liteav/basic/datareport/a;->P:I

    const-string v12, "dev_uuid"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v13, "dev_uuid"

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v6, v12, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 674
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->P:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 676
    sget-object v1, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "report evt 40001: token="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "str_stream_url"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u64_timestamp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u32_dns_time"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_connect_server_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_server_ip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_audio_samplerate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tencent/liteav/d;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_video_bitrate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tencent/liteav/d;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_channel_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dev_uuid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_max_load"

    .line 685
    invoke-direct {p0, v2}, Lcom/tencent/liteav/d;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_app_version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v3, "dev_uuid"

    .line 686
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-void

    :cond_0
    move-wide v4, v0

    goto/16 :goto_1

    :cond_1
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method private m()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 691
    new-instance v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 692
    iput-boolean v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 693
    iput-boolean v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 694
    iget-object v0, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v2, 0x1b61

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v2

    .line 699
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v4, 0x1b65

    invoke-static {v0, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v4

    .line 701
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v6, "token"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    iget-object v6, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v7, Lcom/tencent/liteav/basic/datareport/a;->R:I

    sget v8, Lcom/tencent/liteav/basic/datareport/a;->ah:I

    invoke-static {v6, v0, v7, v8, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 704
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v6

    .line 705
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->R:I

    const-string/jumbo v8, "u64_timestamp"

    invoke-static {v0, v1, v8, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 707
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v8

    sub-long v2, v8, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    .line 708
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->R:I

    const-string/jumbo v8, "u32_result"

    invoke-static {v0, v1, v8, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 710
    sget v8, Lcom/tencent/liteav/basic/datareport/a;->R:I

    const-string/jumbo v9, "str_user_id"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v10, "str_user_id"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v8, v9, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 712
    sget v8, Lcom/tencent/liteav/basic/datareport/a;->R:I

    const-string/jumbo v9, "str_package_name"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v10, "str_package_name"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v8, v9, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 714
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->R:I

    const-string/jumbo v8, "u32_channel_type"

    invoke-static {v0, v1, v8, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 716
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->R:I

    const-string/jumbo v8, "str_app_version"

    iget-object v9, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 718
    sget v8, Lcom/tencent/liteav/basic/datareport/a;->R:I

    const-string v9, "dev_uuid"

    iget-object v1, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v10, "dev_uuid"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v8, v9, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 720
    sget v1, Lcom/tencent/liteav/basic/datareport/a;->R:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 722
    sget-object v1, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "report evt 40002: token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, "str_stream_url"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, "u64_timestamp"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "u32_result"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_user_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v3, "str_user_id"

    .line 726
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_package_name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v3, "str_package_name"

    .line 727
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "u32_channel_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "str_app_version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dev_uuid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v3, "dev_uuid"

    .line 730
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private n()V
    .locals 18

    .prologue
    .line 736
    new-instance v3, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v3}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 737
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 738
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    iput-object v2, v3, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 741
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->a()[I

    move-result-object v2

    .line 742
    const/4 v4, 0x0

    aget v4, v2, v4

    .line 743
    const/4 v5, 0x1

    aget v5, v2, v5

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v6, 0x1b65

    invoke-static {v2, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v6

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v8, 0x1b5c

    invoke-static {v2, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v8

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v9, 0x1b5b

    invoke-static {v2, v9}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v9

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v10, 0xfa1

    invoke-static {v2, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->e(Ljava/lang/String;I)D

    move-result-wide v10

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v12, 0x1b5d

    invoke-static {v2, v12}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v12

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v13, 0x1b5a

    invoke-static {v2, v13}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v13

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v14, 0x1b59

    invoke-static {v2, v14}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v14

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v15, "token"

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 753
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    sget v16, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    sget v17, Lcom/tencent/liteav/basic/datareport/a;->ah:I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v2, v0, v1, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 755
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v15, "u32_avg_audio_bitrate"

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v15, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 757
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v13, "u32_avg_video_bitrate"

    int-to-long v14, v14

    invoke-static {v2, v3, v13, v14, v15}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 759
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v13, "u32_avg_net_speed"

    add-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v2, v3, v13, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 761
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v8, "u32_fps"

    double-to-int v9, v10

    int-to-long v10, v9

    invoke-static {v2, v3, v8, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 763
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v8, "u32_avg_cache_size"

    int-to-long v10, v12

    invoke-static {v2, v3, v8, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 765
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v8, "u32_cpu_usage"

    int-to-long v10, v5

    invoke-static {v2, v3, v8, v10, v11}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 767
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v5, "u32_app_cpu_usage"

    int-to-long v8, v4

    invoke-static {v2, v3, v5, v8, v9}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 769
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v4, "u32_channel_type"

    invoke-static {v2, v3, v4, v6, v7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 771
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    const-string/jumbo v4, "str_app_version"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/liteav/d;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 773
    sget v3, Lcom/tencent/liteav/basic/datareport/a;->Q:I

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 774
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    .line 787
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/d;->n:J

    .line 790
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "str_user_id"

    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "str_device_type"

    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "str_device_type"

    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "u32_network_type"

    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "token"

    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "str_package_name"

    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v0, p0, Lcom/tencent/liteav/d;->b:Ljava/util/HashMap;

    const-string v1, "dev_uuid"

    iget-object v2, p0, Lcom/tencent/liteav/d;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/basic/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/tencent/liteav/d;->o()V

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/liteav/d;->l:J

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/d;->q:J

    .line 114
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/tencent/liteav/d;->f:I

    .line 167
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/tencent/liteav/d;->d:I

    .line 162
    iput p2, p0, Lcom/tencent/liteav/d;->e:I

    .line 163
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/tencent/liteav/d;->p:Z

    .line 145
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/tencent/liteav/d;->m()V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/tencent/liteav/d;->k()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/tencent/liteav/d;->g:I

    .line 171
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/tencent/liteav/d;->h()V

    .line 134
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->p:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/tencent/liteav/d;->j()V

    .line 137
    :cond_0
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/tencent/liteav/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/tencent/liteav/d;->g()V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1b64

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/tencent/liteav/d;->l()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    .line 182
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/d;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/d;->n:J

    .line 185
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/d;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/tencent/liteav/d;->n()V

    .line 187
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/d;->n:J

    .line 189
    :cond_2
    return-void
.end method

.method public e()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/16 v6, 0x1388

    .line 192
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1771

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v0

    .line 194
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/tencent/liteav/d;->f()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    .line 200
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/d;->n:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 201
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/d;->n:J

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/d;->m:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/d;->n:J

    iget v4, p0, Lcom/tencent/liteav/d;->o:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/tencent/liteav/d;->i()V

    .line 206
    iget-object v0, p0, Lcom/tencent/liteav/d;->u:Ljava/lang/String;

    const/16 v1, 0x1774

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/d;->l:J

    .line 207
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->getStatusReportInterval()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/d;->o:I

    .line 208
    iget v0, p0, Lcom/tencent/liteav/d;->o:I

    if-ge v0, v6, :cond_2

    .line 209
    iput v6, p0, Lcom/tencent/liteav/d;->o:I

    .line 211
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/d;->n:J

    .line 213
    :cond_3
    return-void
.end method
