.class public Lcom/tencent/liteav/j;
.super Ljava/lang/Object;
.source "TXCVodPlayCollection.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "TXCVodPlayCollection"

    iput-object v0, p0, Lcom/tencent/liteav/j;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/j;->c:Ljava/lang/String;

    .line 24
    iput-wide v2, p0, Lcom/tencent/liteav/j;->d:J

    .line 25
    iput-wide v2, p0, Lcom/tencent/liteav/j;->e:J

    .line 26
    iput-boolean v1, p0, Lcom/tencent/liteav/j;->f:Z

    .line 27
    iput v1, p0, Lcom/tencent/liteav/j;->g:I

    .line 28
    iput v1, p0, Lcom/tencent/liteav/j;->h:I

    .line 29
    iput v1, p0, Lcom/tencent/liteav/j;->i:I

    .line 30
    iput v1, p0, Lcom/tencent/liteav/j;->j:I

    .line 31
    iput v1, p0, Lcom/tencent/liteav/j;->k:I

    .line 32
    iput v1, p0, Lcom/tencent/liteav/j;->l:I

    .line 35
    iput-boolean v1, p0, Lcom/tencent/liteav/j;->o:Z

    .line 36
    iput-boolean v1, p0, Lcom/tencent/liteav/j;->p:Z

    .line 37
    iput v1, p0, Lcom/tencent/liteav/j;->q:I

    .line 40
    iput-object p1, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;-><init>()V

    .line 54
    iput-boolean v2, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_common:Z

    .line 55
    iput-boolean v2, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->report_status:Z

    .line 56
    iget-object v1, p0, Lcom/tencent/liteav/j;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/basic/datareport/TXCDRExtInfo;->url:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    sget v4, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    sget v5, Lcom/tencent/liteav/basic/datareport/a;->ao:I

    invoke-static {v1, v3, v4, v5, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    .line 59
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_timeuse"

    iget v4, p0, Lcom/tencent/liteav/j;->h:I

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 60
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "str_stream_url"

    iget-object v4, p0, Lcom/tencent/liteav/j;->c:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_videotime"

    iget v4, p0, Lcom/tencent/liteav/j;->g:I

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 62
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "str_device_type"

    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_network_type"

    iget-object v4, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 64
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "str_user_id"

    iget-object v4, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/liteav/basic/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "str_package_name"

    iget-object v4, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/liteav/basic/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "str_app_version"

    iget-object v4, p0, Lcom/tencent/liteav/j;->n:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string v1, "dev_uuid"

    iget-object v4, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/liteav/basic/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_first_i_frame"

    iget v4, p0, Lcom/tencent/liteav/j;->i:I

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 69
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_isp2p"

    iget v4, p0, Lcom/tencent/liteav/j;->j:I

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 70
    sget v4, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v5, "u32_avg_load"

    iget v0, p0, Lcom/tencent/liteav/j;->k:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v3, v4, v5, v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 71
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_load_cnt"

    iget v4, p0, Lcom/tencent/liteav/j;->k:I

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 72
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_max_load"

    iget v4, p0, Lcom/tencent/liteav/j;->m:I

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 73
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    const-string/jumbo v1, "u32_avg_block_time"

    iget v4, p0, Lcom/tencent/liteav/j;->q:I

    int-to-long v4, v4

    invoke-static {v3, v0, v1, v4, v5}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V

    .line 74
    sget v0, Lcom/tencent/liteav/basic/datareport/a;->Z:I

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent(Ljava/lang/String;I)V

    .line 76
    const-string v1, "TXCVodPlayCollection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report evt 40301: token="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "u32_timeuse"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/tencent/liteav/j;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "u32_videotime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/tencent/liteav/j;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "str_device_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "u32_network_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    .line 80
    invoke-static {v3}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "str_user_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    .line 81
    invoke-static {v3}, Lcom/tencent/liteav/basic/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "str_package_name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    .line 82
    invoke-static {v3}, Lcom/tencent/liteav/basic/util/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "str_app_version"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/j;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "dev_uuid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/j;->b:Landroid/content/Context;

    .line 84
    invoke-static {v3}, Lcom/tencent/liteav/basic/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "u32_first_i_frame"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/tencent/liteav/j;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "u32_isp2p"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/tencent/liteav/j;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "u32_avg_load"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/tencent/liteav/j;->k:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v2, p0, Lcom/tencent/liteav/j;->k:I

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

    iget v2, p0, Lcom/tencent/liteav/j;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v2, p0, Lcom/tencent/liteav/j;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 70
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/j;->l:I

    iget v1, p0, Lcom/tencent/liteav/j;->k:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_0

    .line 84
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/j;->l:I

    iget v2, p0, Lcom/tencent/liteav/j;->k:I

    div-int/2addr v0, v2

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/j;->f:Z

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/j;->d:J

    .line 101
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/tencent/liteav/j;->g:I

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/liteav/j;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/tencent/liteav/j;->f:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/j;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/j;->h:I

    .line 106
    invoke-direct {p0}, Lcom/tencent/liteav/j;->f()V

    .line 107
    iput-boolean v4, p0, Lcom/tencent/liteav/j;->f:Z

    .line 109
    :cond_0
    iput-boolean v4, p0, Lcom/tencent/liteav/j;->o:Z

    .line 110
    iput-boolean v4, p0, Lcom/tencent/liteav/j;->p:Z

    .line 111
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    iget v0, p0, Lcom/tencent/liteav/j;->i:I

    if-nez v0, :cond_2

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/j;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/j;->i:I

    .line 125
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/j;->o:Z

    if-eqz v0, :cond_1

    .line 126
    iput-boolean v4, p0, Lcom/tencent/liteav/j;->o:Z

    .line 127
    iget v0, p0, Lcom/tencent/liteav/j;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/j;->q:I

    .line 129
    :cond_1
    return-void

    .line 116
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/liteav/j;->p:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/j;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 118
    iget v1, p0, Lcom/tencent/liteav/j;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/liteav/j;->l:I

    .line 119
    iget v1, p0, Lcom/tencent/liteav/j;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/j;->k:I

    .line 120
    iget v1, p0, Lcom/tencent/liteav/j;->m:I

    if-ge v1, v0, :cond_3

    .line 121
    iput v0, p0, Lcom/tencent/liteav/j;->m:I

    .line 123
    :cond_3
    iput-boolean v4, p0, Lcom/tencent/liteav/j;->p:Z

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/j;->e:J

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/j;->p:Z

    .line 134
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/j;->o:Z

    .line 138
    return-void
.end method
