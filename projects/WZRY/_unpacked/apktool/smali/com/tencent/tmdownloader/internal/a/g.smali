.class public Lcom/tencent/tmdownloader/internal/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:Z

.field b:Ljava/net/HttpURLConnection;

.field c:Ljava/io/InputStream;

.field protected d:Lcom/tencent/tmdownloader/internal/a/d;

.field protected final e:[B

.field f:Lcom/tencent/tmdownloader/internal/b/b;

.field protected final g:I


# direct methods
.method public constructor <init>(Lcom/tencent/tmdownloader/internal/a/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    .line 44
    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 45
    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Ljava/io/InputStream;

    .line 47
    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    .line 48
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->e:[B

    .line 50
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getMemUUID()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->g:I

    .line 54
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 357
    :cond_0
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 643
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->p:Ljava/lang/String;

    .line 646
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    if-lez v1, :cond_3

    .line 651
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/f;->a(Ljava/lang/String;)I

    move-result v0

    .line 652
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    .line 654
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 656
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    int-to-long v0, v0

    add-long/2addr v0, v4

    sub-long/2addr v0, v8

    .line 657
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 659
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    sub-long/2addr v0, v8

    .line 667
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string v1, "range"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set range header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_1
    return-void

    .line 664
    :cond_2
    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 673
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1

    .line 679
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    const-string v1, "range"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set range header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V
    .locals 6

    .prologue
    .line 361
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 362
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpResponseCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sparse-switch v0, :sswitch_data_0

    .line 453
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response code error, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 368
    :sswitch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v2, "resource/tm.android.unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    .line 389
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/g;->b(Ljava/net/HttpURLConnection;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 456
    :goto_1
    return-void

    .line 380
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v1, 0x2c4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Return contenttype = text "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0

    .line 385
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/a/g;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 398
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v1, "resource/tm.android.unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    .line 404
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/g;->b(Ljava/net/HttpURLConnection;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto :goto_1

    .line 402
    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/tmdownloader/internal/a/g;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_2

    .line 412
    :sswitch_2
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->e:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    .line 414
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v1, 0x2c5

    const-string v2, "Redirect cnt many times."

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0

    .line 417
    :cond_4
    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_7

    .line 420
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/a/c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 422
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    .line 428
    :goto_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->e:I

    goto/16 :goto_1

    .line 426
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    goto :goto_3

    .line 432
    :cond_6
    new-instance v2, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v3, 0x2bc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jump url is not valid. httpResponseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v2

    .line 440
    :cond_7
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v2, 0x2be

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location header is null. httpResponseCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 448
    :sswitch_3
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response code error, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 450
    :sswitch_4
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response code error, code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 363
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x1f4 -> :sswitch_4
        0x1f7 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 738
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 739
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 740
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 742
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_0
    return-void
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 690
    if-nez p1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const/4 v0, 0x0

    .line 698
    const-string v1, "Content-Disposition"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_4

    .line 702
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 705
    const-string v2, "filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "filename=\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 710
    const/4 v0, 0x0

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 711
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header file Name ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    goto :goto_0

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 720
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Ljava/net/HttpURLConnection;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V
    .locals 12

    .prologue
    .line 460
    if-nez p1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 468
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 470
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmdownloader/internal/a/d;->a(J)V

    .line 471
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTPCode 200, totalBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_1
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first start downloadinfoTotalSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-nez v0, :cond_3

    .line 533
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/b;

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 536
    :cond_3
    const-wide/16 v2, 0x0

    .line 539
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 541
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start write file, fileName: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v8, v2

    .line 542
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->e:[B

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_4

    .line 544
    iget-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    if-eqz v0, :cond_c

    .line 546
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_5

    .line 595
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 601
    :cond_5
    iput-wide v8, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 602
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_17

    .line 604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 606
    iget-object v0, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 607
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 609
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 611
    :goto_4
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_18

    .line 612
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 474
    :cond_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xce

    if-ne v0, v1, :cond_7

    .line 476
    const-string v0, "content-range"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/b;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmdownloader/internal/a/d;->a(J)V

    .line 478
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTPCode 206, totalBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 483
    :cond_7
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onReceivedResponseData error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xce

    if-ne v0, v1, :cond_2

    .line 496
    :try_start_2
    const-string v0, "content-range"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/b;->a(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/b;

    move-result-object v1

    .line 498
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/a/b;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 500
    const-string v4, "_DownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "totalSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  downloadinfoTotalSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v6, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/a/b;->b()J

    move-result-wide v4

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v6, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_a

    .line 504
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v1, 0x2c2

    const-string v2, "The received size is not equal with ByteRange."

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    :catch_0
    move-exception v0

    .line 517
    :try_start_3
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v2, 0x2c0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 521
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v1, :cond_9

    .line 523
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 521
    :cond_9
    throw v0

    .line 507
    :cond_a
    :try_start_4
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 509
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v1, 0x2c1

    const-string v2, "The total size is not equal with ByteRange."

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0

    .line 512
    :cond_b
    const-string v1, "_DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response ByteRange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 521
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    goto/16 :goto_2

    .line 549
    :cond_c
    const/4 v0, 0x0

    .line 550
    :try_start_5
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    int-to-long v10, v3

    add-long/2addr v4, v10

    .line 551
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v10, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v1, v4, v10

    if-gtz v1, :cond_12

    .line 552
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_e

    const/4 v6, 0x1

    .line 553
    :goto_5
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->e:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tmdownloader/internal/b/b;->a([BIIJZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 556
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-static {v0, v4, v5}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 557
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write file failed, fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " receivedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    const-string v1, "_DownloadTask"

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v2, 0x2bf

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 586
    :catch_1
    move-exception v0

    move-wide v2, v8

    .line 588
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 589
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v4, 0x25d

    invoke-direct {v1, v4, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 593
    :catchall_1
    move-exception v0

    move-wide v8, v2

    :goto_7
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v1, :cond_d

    .line 595
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 596
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 601
    :cond_d
    iput-wide v8, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 602
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 603
    if-eqz v1, :cond_15

    .line 604
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 605
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 606
    iget-object v1, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 607
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 608
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 609
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 611
    :goto_8
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_16

    .line 612
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    .line 552
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 563
    :cond_f
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write file failed, no sdCard! fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " receivedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    const-string v1, "_DownloadTask"

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v2, 0x2c7

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 593
    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 569
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write file failed, no enough space! fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " receivedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    const-string v1, "_DownloadTask"

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v2, 0x2c6

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v1

    .line 576
    :cond_11
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmdownloader/internal/a/d;->b(J)V

    .line 577
    int-to-long v0, v3

    add-long/2addr v8, v0

    goto/16 :goto_3

    .line 579
    :cond_12
    const-string/jumbo v1, "write file size too long."

    .line 580
    const-string v2, "_DownloadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "write file size too long.\r\nreadedLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "receivedSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "totalSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v4, v4, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isTheEndData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    new-instance v0, Lcom/tencent/tmdownloader/internal/a/m;

    const/16 v2, 0x2bf

    invoke-direct {v0, v2, v1}, Lcom/tencent/tmdownloader/internal/a/m;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 621
    :cond_13
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/tmdownloader/internal/a/d;->H:Ljava/lang/String;

    .line 593
    :cond_14
    :goto_9
    throw v0

    .line 625
    :cond_15
    const-string v1, "UNKOWN"

    iput-object v1, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    goto :goto_9

    .line 614
    :cond_16
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 615
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 616
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 617
    const-string v3, ""

    .line 618
    :goto_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 619
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 625
    :cond_17
    const-string v0, "UNKOWN"

    iput-object v0, p2, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 614
    :cond_18
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 615
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 617
    const-string v2, ""

    .line 618
    :goto_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 621
    :cond_19
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/a/d;->H:Ljava/lang/String;

    goto/16 :goto_0

    .line 586
    :catch_2
    move-exception v0

    goto/16 :goto_6
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->g:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 100
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadTask exec mStopTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-boolean v4, v0, Lcom/tencent/tmdownloader/internal/a/d;->g:Z

    .line 102
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/internal/a/d;->a(I)V

    .line 103
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-wide v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->x:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/tencent/tmdownloader/internal/a/d;->x:J

    :cond_0
    move-object v6, v5

    move-object v1, v5

    move v2, v4

    .line 112
    :goto_0
    if-eqz v2, :cond_1

    .line 116
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(B)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;

    move-result-object v6

    .line 117
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->f:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/a/g;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->G:Ljava/lang/String;

    iput-object v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    .line 123
    iget-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    if-eqz v0, :cond_4

    .line 319
    :cond_1
    if-eqz v6, :cond_2

    .line 321
    const-string v0, "_DownloadTask"

    const-string v2, "lastChunkLogData, addDownloadNewChunkLogData "

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 323
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 325
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 329
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 333
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/internal/a/d;->a(I)V

    .line 342
    :cond_3
    :goto_1
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download finished, finalstatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput-boolean v3, v0, Lcom/tencent/tmdownloader/internal/a/d;->g:Z

    .line 345
    return-void

    .line 129
    :cond_4
    :try_start_0
    const-string v0, "_DownloadTask"

    const-string v7, "DownloadTask exec try begin......"

    invoke-static {v0, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v7, Ljava/net/URL;

    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->c:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 136
    const-string v8, "cmwap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "3gwap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "uniwap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 139
    :cond_5
    new-instance v0, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v9, Ljava/net/InetSocketAddress;

    sget-object v10, Lcom/tencent/tmdownloader/internal/a/k;->a:Ljava/lang/String;

    sget v11, Lcom/tencent/tmdownloader/internal/a/k;->b:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v8, v9}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 140
    invoke-virtual {v7, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 150
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_7

    .line 151
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 154
    :cond_7
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 157
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 158
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    const/16 v7, 0x7530

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 161
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v7, v7, Lcom/tencent/tmdownloader/internal/a/d;->r:Ljava/util/HashMap;

    invoke-direct {p0, v0, v7}, Lcom/tencent/tmdownloader/internal/a/g;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/tencent/tmdownloader/internal/a/g;->a(Ljava/net/HttpURLConnection;)V

    .line 167
    const-string v0, "_DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start httpGet "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->c:Ljava/io/InputStream;

    .line 172
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, v6}, Lcom/tencent/tmdownloader/internal/a/g;->a(Ljava/net/HttpURLConnection;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 174
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->a()Z
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/tencent/tmdownloader/internal/a/m; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_d

    move v2, v4

    .line 291
    :goto_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_8

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_8
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_9

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 306
    :cond_9
    if-ne v2, v4, :cond_22

    if-eqz v6, :cond_22

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_22

    .line 308
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 309
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 310
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    :goto_4
    move-object v0, v5

    :goto_5
    move-object v6, v0

    .line 311
    goto/16 :goto_0

    .line 142
    :cond_a
    :try_start_1
    const-string v8, "ctwap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    new-instance v0, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v9, Ljava/net/InetSocketAddress;

    sget-object v10, Lcom/tencent/tmdownloader/internal/a/k;->c:Ljava/lang/String;

    sget v11, Lcom/tencent/tmdownloader/internal/a/k;->b:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v8, v9}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 146
    invoke-virtual {v7, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/tencent/tmdownloader/internal/a/m; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 183
    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 186
    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v7}, Lcom/tencent/tmdownloader/internal/a/d;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_e

    .line 189
    :try_start_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    const-wide/16 v8, 0x1388

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v2, v4

    .line 291
    :goto_6
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_b
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_c

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 306
    :cond_c
    if-ne v2, v4, :cond_22

    if-eqz v6, :cond_22

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_22

    .line 308
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 309
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 310
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto :goto_4

    :cond_d
    move v2, v3

    .line 180
    goto/16 :goto_3

    .line 194
    :catch_1
    move-exception v1

    .line 196
    :try_start_5
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v2, 0x258

    iput v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v2, v3

    .line 199
    goto :goto_6

    .line 203
    :cond_e
    :try_start_6
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x259

    iput v7, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    move-object v1, v0

    move v2, v3

    .line 205
    goto :goto_6

    .line 208
    :catch_2
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 211
    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v7}, Lcom/tencent/tmdownloader/internal/a/d;->b()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v7

    if-eqz v7, :cond_11

    .line 214
    :try_start_7
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v7, v2, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/tencent/tmdownloader/internal/a/d;->d:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 217
    const-wide/16 v8, 0x1388

    :try_start_8
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v2, v4

    .line 291
    :goto_7
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_f
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_10

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 306
    :cond_10
    if-ne v2, v4, :cond_22

    if-eqz v6, :cond_22

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_22

    .line 308
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 309
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 310
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto/16 :goto_4

    .line 219
    :catch_3
    move-exception v1

    .line 221
    :try_start_9
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v2, 0x258

    iput v2, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v1, v0

    move v2, v3

    .line 224
    goto :goto_7

    .line 228
    :cond_11
    :try_start_a
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25a

    iput v7, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    move-object v1, v0

    move v2, v3

    .line 230
    goto :goto_7

    .line 233
    :catch_4
    move-exception v1

    .line 235
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 237
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25b

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_12
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_13

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_13
    move-object v0, v6

    move v2, v3

    .line 314
    goto/16 :goto_5

    .line 241
    :catch_5
    move-exception v1

    .line 243
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 244
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x258

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_14

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_14
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_15

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_15
    move-object v0, v6

    move v2, v3

    .line 314
    goto/16 :goto_5

    .line 249
    :catch_6
    move-exception v1

    .line 251
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 252
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25e

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_16

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_16
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_17

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_17
    move-object v0, v6

    move v2, v3

    .line 314
    goto/16 :goto_5

    .line 256
    :catch_7
    move-exception v1

    .line 258
    :try_start_d
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/a/m;->printStackTrace()V

    .line 259
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v7, v1, Lcom/tencent/tmdownloader/internal/a/m;->a:I

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    .line 261
    const/16 v0, 0x2c0

    iget v7, v1, Lcom/tencent/tmdownloader/internal/a/m;->a:I

    if-ne v0, v7, :cond_1b

    .line 264
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/tencent/tmdownloader/internal/a/d;->a(J)V

    .line 265
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/b;

    iget-object v7, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v7, v7, Lcom/tencent/tmdownloader/internal/a/d;->m:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v8, v8, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lcom/tencent/tmdownloader/internal/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->a()V

    .line 268
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->b()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v0

    if-eqz v0, :cond_1a

    .line 271
    :try_start_e
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->d:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move v0, v4

    :goto_8
    move v2, v0

    .line 291
    :goto_9
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_18

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_18
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_19

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 306
    :cond_19
    if-ne v2, v4, :cond_22

    if-eqz v6, :cond_22

    iget-wide v8, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_22

    .line 308
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 309
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 310
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    goto/16 :goto_4

    :cond_1a
    move v0, v3

    .line 273
    goto :goto_8

    :cond_1b
    move v2, v3

    .line 276
    goto :goto_9

    .line 282
    :catch_8
    move-exception v1

    .line 284
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/16 v7, 0x25c

    iput v7, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1c

    .line 293
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_1c
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v0, :cond_1d

    .line 299
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    :cond_1d
    move-object v0, v6

    move v2, v3

    .line 314
    goto/16 :goto_5

    .line 291
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_a
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1e

    .line 293
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 294
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->b:Ljava/net/HttpURLConnection;

    .line 297
    :cond_1e
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    if-eqz v2, :cond_1f

    .line 299
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    invoke-virtual {v2}, Lcom/tencent/tmdownloader/internal/b/b;->d()V

    .line 300
    iput-object v5, p0, Lcom/tencent/tmdownloader/internal/a/g;->f:Lcom/tencent/tmdownloader/internal/b/b;

    .line 306
    :cond_1f
    if-ne v1, v4, :cond_20

    if-eqz v6, :cond_20

    iget-wide v2, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    cmp-long v1, v2, v12

    if-lez v1, :cond_20

    .line 308
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v1, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 309
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v1, v1, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v1, v1

    iput-byte v1, v6, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 310
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/tmdownloader/internal/logreport/d;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 291
    :cond_20
    throw v0

    .line 337
    :cond_21
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(I)V

    .line 338
    invoke-direct {p0, v1}, Lcom/tencent/tmdownloader/internal/a/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 291
    :catchall_1
    move-exception v0

    move v1, v4

    goto :goto_a

    :cond_22
    move-object v0, v6

    goto/16 :goto_5
.end method

.method public b()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    .line 71
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "_DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseAndNotify url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v2, v2, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/d;->e()V

    .line 79
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/tencent/tmdownloader/internal/a/g;->a:Z

    .line 83
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iput v1, v0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    .line 86
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/g;->d:Lcom/tencent/tmdownloader/internal/a/d;

    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->n:I

    return v0
.end method
