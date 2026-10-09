.class final Lc/t/m/g/dd;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/dd$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lc/t/m/g/dd$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lc/t/m/g/cj;

.field c:J

.field d:J

.field e:J

.field f:J

.field volatile g:Z


# direct methods
.method constructor <init>(Lc/t/m/g/cj;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lc/t/m/g/dd;->b:Lc/t/m/g/cj;

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 43
    return-void
.end method

.method static a([BI)Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->isDebugEnabled()Z

    move-result v0

    .line 310
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([BI)I

    move-result v0

    if-gez v0, :cond_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc/t/m/g/ct;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 314
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc/t/m/g/ct;->a(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([B)[B
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 51
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 52
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 55
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 56
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method final a(Lc/t/m/g/dd$a;)V
    .locals 4

    .prologue
    .line 266
    invoke-static {p1}, Lc/t/m/g/dd$a;->d(Lc/t/m/g/dd$a;)I

    .line 268
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dd$a;

    .line 270
    invoke-static {v0}, Lc/t/m/g/dd$a;->c(Lc/t/m/g/dd$a;)I

    move-result v0

    invoke-static {p1}, Lc/t/m/g/dd$a;->c(Lc/t/m/g/dd$a;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 277
    :goto_0
    invoke-static {p1}, Lc/t/m/g/dd$a;->e(Lc/t/m/g/dd$a;)I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {p1}, Lc/t/m/g/dd$a;->c(Lc/t/m/g/dd$a;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 278
    const-string v0, "TxRequestSender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retryIfNeed: times="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lc/t/m/g/dd$a;->e(Lc/t/m/g/dd$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 281
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
