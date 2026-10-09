.class public final Lcom/tencent/a/b/h/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/a/b/h/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/a/b/h/e$a;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/tencent/a/b/h/b;


# direct methods
.method public constructor <init>(Lcom/tencent/a/b/h/e$a;Lcom/tencent/a/b/h/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/tencent/a/b/h/e;->a:Lcom/tencent/a/b/h/e$a;

    iput-object p2, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    return-void
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->a:Lcom/tencent/a/b/h/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->a:Lcom/tencent/a/b/h/e$a;

    invoke-interface {v0, p0}, Lcom/tencent/a/b/h/e$a;->b(Lcom/tencent/a/b/h/e;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/a/b/h/e;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/tencent/a/b/h/e;->e()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tencent/a/b/h/e;->e()V

    throw v0
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->a:Lcom/tencent/a/b/h/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->a:Lcom/tencent/a/b/h/e$a;

    invoke-interface {v0, p0}, Lcom/tencent/a/b/h/e$a;->a(Lcom/tencent/a/b/h/e;)V

    :cond_0
    iput-object v1, p0, Lcom/tencent/a/b/h/e;->a:Lcom/tencent/a/b/h/e$a;

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v3, v1, :cond_9

    :try_start_0
    iget-object v1, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v1}, Lcom/tencent/a/b/h/b;->g()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    array-length v0, v1

    const/high16 v4, 0x200000

    if-ge v0, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lcom/tencent/a/b/h/a/a;->a()Lcom/tencent/a/b/h/a/a;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/a/b/h/a/a;->a([BLcom/tencent/a/b/h/b;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    move-object v0, v2

    :cond_1
    :goto_2
    if-eqz v0, :cond_5

    :try_start_4
    iget-object v1, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v1}, Lcom/tencent/a/b/h/b;->e()Lcom/tencent/a/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/tencent/a/b/h/b/b;

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/tencent/b/a/a/i;->f()Lcom/tencent/b/a/a/i$b;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/tencent/b/a/a/i;->f()Lcom/tencent/b/a/a/i$b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TileNetFetcher downLoad function occured exception when call CacheManager Put,the downloaded data length-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";tileInfo:x="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v6}, Lcom/tencent/a/b/h/b;->b()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",y="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v6}, Lcom/tencent/a/b/h/b;->c()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "z="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v6}, Lcom/tencent/a/b/h/b;->d()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";CacheManager Put execute path:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";exceptionInfo:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/tencent/b/a/a/i$b;->a(Ljava/lang/String;)V

    :cond_3
    move-object v0, v2

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/tencent/b/a/a/i;->f()Lcom/tencent/b/a/a/i$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/b/a/a/i;->f()Lcom/tencent/b/a/a/i$b;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TileNetFetcher downLoad function,the downloaded data length-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";tileInfo:x="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v4}, Lcom/tencent/a/b/h/b;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",y="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v4}, Lcom/tencent/a/b/h/b;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "z="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v4}, Lcom/tencent/a/b/h/b;->d()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/b/a/a/i$b;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    :goto_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "decoder bitmap error:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v2

    goto/16 :goto_2

    :cond_5
    if-nez v3, :cond_7

    const-wide/16 v4, 0x12c

    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x1

    if-ne v3, v1, :cond_8

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error occured:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const/4 v1, 0x2

    if-ne v3, v1, :cond_6

    const-wide/16 v4, 0x2bc

    :try_start_8
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v1}, Lcom/tencent/a/b/h/b;->e()Lcom/tencent/a/a/a/k;

    goto/16 :goto_3

    :catch_3
    move-exception v1

    move-object v0, v2

    goto :goto_6

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_4
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->c:Lcom/tencent/a/b/h/b;

    invoke-virtual {v0}, Lcom/tencent/a/b/h/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/b/h/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/a/b/h/e;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
