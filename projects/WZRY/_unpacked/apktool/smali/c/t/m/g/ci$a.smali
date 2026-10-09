.class public final Lc/t/m/g/ci$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:Ljava/io/File;

.field private c:Ljava/io/BufferedOutputStream;

.field private d:Ljava/lang/StringBuffer;

.field private synthetic e:Lc/t/m/g/ci;


# direct methods
.method public constructor <init>(Lc/t/m/g/ci;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 200
    iput-object p1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    .line 201
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lc/t/m/g/ci$a;->a:[Ljava/lang/Object;

    .line 198
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/f$a;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 344
    iget-object v1, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 345
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    .line 353
    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 390
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->a:Lc/t/m/g/cj;

    iget-object v0, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    const-string v1, "LocationSDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dc_create"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 360
    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    const-string v0, "dc"

    iget-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    :cond_0
    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "dc"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    .line 363
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 364
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    .line 365
    if-nez v0, :cond_2

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lc/t/m/g/ci$a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_2
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    const-string v1, "TxDCImpl"

    const-string v2, "open file error"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 401
    :try_start_0
    iget-object v2, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v2, v2, Lc/t/m/g/ci;->a:Lc/t/m/g/cj;

    iget-object v2, v2, Lc/t/m/g/cj;->a:Landroid/content/Context;

    const-string v3, "LocationSDK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 405
    const-string v3, "dc_create"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 408
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private d()V
    .locals 10

    .prologue
    .line 439
    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 452
    :cond_0
    return-void

    .line 443
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 444
    array-length v4, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v1, v0

    .line 445
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dc_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 446
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 447
    :cond_2
    const-string v6, "TxDCImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete expired file:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 444
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0x19000

    const/16 v6, 0x6400

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 206
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 211
    :pswitch_1
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lc/t/m/g/ci$a;->a:[Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lc/t/m/g/ci$a;->b()V

    const-string v0, ""

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->a:Lc/t/m/g/cj;

    iget-object v1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->i:Lc/t/m/g/dk;

    iget-object v1, v1, Lc/t/m/g/dk;->a:Landroid/location/Location;

    const/4 v2, 0x0

    iget-object v4, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v4, v4, Lc/t/m/g/ci;->g:Ljava/util/List;

    invoke-static {v0, v1, v2, v4}, Lc/t/m/g/cg;->a(Lc/t/m/g/cj;Landroid/location/Location;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "TxDCImpl"

    const-string/jumbo v2, "write data error!"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 211
    :cond_3
    if-ne v2, v5, :cond_1

    :try_start_3
    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->h:Lc/t/m/g/dn;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    iget-object v1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->a:Lc/t/m/g/cj;

    iget-object v2, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v2, v2, Lc/t/m/g/ci;->i:Lc/t/m/g/dk;

    iget-object v2, v2, Lc/t/m/g/dk;->a:Landroid/location/Location;

    iget-object v4, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v4, v4, Lc/t/m/g/ci;->g:Ljava/util/List;

    invoke-static {v1, v2, v0, v4}, Lc/t/m/g/cg;->a(Lc/t/m/g/cj;Landroid/location/Location;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->h:Lc/t/m/g/dn;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->h:Lc/t/m/g/dn;

    invoke-virtual {v0}, Lc/t/m/g/dn;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x6400

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v6, :cond_7

    invoke-direct {p0}, Lc/t/m/g/ci$a;->a()V

    iget-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-lez v1, :cond_7

    iget-object v1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->e:Landroid/os/HandlerThread;

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lc/t/m/g/ci$a;->sendEmptyMessage(I)Z

    :cond_7
    iget-object v1, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "TxDCImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "write: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x3c

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "***"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 217
    :pswitch_2
    const-string v1, "TxDCImpl"

    const-string/jumbo v2, "upload msg"

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    invoke-virtual {v1}, Lc/t/m/g/ci;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :try_start_4
    iget-object v1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 226
    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dc_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 229
    const-string v0, "TxDCImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lc/t/m/g/cf;

    iget-object v1, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v1, v1, Lc/t/m/g/ci;->a:Lc/t/m/g/cj;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cf;-><init>(Lc/t/m/g/cj;Ljava/lang/String;)V

    .line 231
    iget-boolean v1, v0, Lc/t/m/g/cf;->b:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/t/m/g/cf;->b:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc/t/m/g/cf$1;

    invoke-direct {v2, v0}, Lc/t/m/g/cf$1;-><init>(Lc/t/m/g/cf;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 232
    :cond_8
    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc/t/m/g/ci;->j:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    const-string v1, "TxDCImpl"

    const-string/jumbo v2, "upload msg error!"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 226
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 242
    :pswitch_3
    :try_start_5
    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 246
    :catch_2
    move-exception v0

    iput-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    .line 247
    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 252
    :pswitch_4
    :try_start_6
    invoke-direct {p0}, Lc/t/m/g/ci$a;->a()V

    .line 253
    iget-object v0, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_a

    .line 254
    iget-object v0, p0, Lc/t/m/g/ci$a;->d:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 258
    :cond_a
    iput-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    .line 259
    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 258
    :catch_3
    move-exception v0

    iput-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    .line 259
    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 258
    :catchall_1
    move-exception v0

    iput-object v1, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    .line 259
    iget-object v1, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-static {v1}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    throw v0

    .line 261
    :pswitch_5
    invoke-direct {p0}, Lc/t/m/g/ci$a;->b()V

    .line 264
    iget-object v0, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_b

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lc/t/m/g/ci$a;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 270
    :cond_b
    :try_start_7
    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lc/t/m/g/ci$a;->e:Lc/t/m/g/ci;

    iget-object v3, v3, Lc/t/m/g/ci;->c:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dc_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v0, "TxDCImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "rename:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/ci$a;->b:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/ci$a;->c:Ljava/io/BufferedOutputStream;

    invoke-direct {p0}, Lc/t/m/g/ci$a;->d()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lc/t/m/g/ci$a;->a(J)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "TxDCImpl"

    const-string v2, "rename failed!"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
