.class public Lcom/subao/common/b/b;
.super Ljava/lang/Object;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/b$d;,
        Lcom/subao/common/b/b$b;,
        Lcom/subao/common/b/b$c;,
        Lcom/subao/common/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/subao/common/b/p;

.field private static b:Lcom/subao/common/b/a;

.field private static c:Lcom/subao/common/b/b$a;

.field private static volatile d:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static e:Lcom/subao/common/intf/XunyouTokenStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Lcom/subao/common/b/p;

    invoke-direct {v0}, Lcom/subao/common/b/p;-><init>()V

    sput-object v0, Lcom/subao/common/b/b;->a:Lcom/subao/common/b/p;

    .line 44
    new-instance v0, Lcom/subao/common/b/b$a;

    invoke-direct {v0, v1}, Lcom/subao/common/b/b$a;-><init>(Lcom/subao/common/b/b$1;)V

    sput-object v0, Lcom/subao/common/b/b;->c:Lcom/subao/common/b/b$a;

    .line 47
    sput-object v1, Lcom/subao/common/b/b;->d:[B

    .line 48
    sput-object v1, Lcom/subao/common/b/b;->e:Lcom/subao/common/intf/XunyouTokenStateListener;

    return-void
.end method

.method static synthetic a(IILcom/subao/common/b/g;ILjava/lang/String;Lcom/subao/common/b/c;)V
    .locals 0

    .prologue
    .line 40
    invoke-static/range {p0 .. p5}, Lcom/subao/common/b/b;->b(IILcom/subao/common/b/g;ILjava/lang/String;Lcom/subao/common/b/c;)V

    return-void
.end method

.method public static a(Lcom/subao/common/b/b$c;IILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
    .locals 6

    .prologue
    .line 442
    new-instance v0, Lcom/subao/common/b/b$3;

    invoke-interface {p0}, Lcom/subao/common/b/b$c;->b()Lcom/subao/common/i/d$b;

    move-result-object v1

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/b/b$3;-><init>(Lcom/subao/common/i/d$b;IILjava/lang/String;Lcom/subao/common/b/c;)V

    .line 474
    invoke-interface {p0}, Lcom/subao/common/b/b$c;->a()Z

    move-result v1

    invoke-static {v1, v0}, Lcom/subao/common/b/b;->a(ZLcom/subao/common/j/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {p3, p4, v0}, Lcom/subao/common/b/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V

    .line 477
    :cond_0
    return-void
.end method

.method public static a(Lcom/subao/common/b/b$c;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
    .locals 7

    .prologue
    const/16 v3, 0xc9

    .line 241
    const/16 v0, 0x32

    if-ne p2, v0, :cond_1

    .line 242
    invoke-static {}, Lcom/subao/common/b/b;->a()[B

    move-result-object v0

    .line 243
    if-eqz v0, :cond_3

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v0}, Lcom/subao/common/b/h;->a(J[B)Lcom/subao/common/b/g;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_3

    move v0, p1

    move v1, p2

    move-object v4, p3

    move-object v5, p6

    .line 246
    invoke-static/range {v0 .. v5}, Lcom/subao/common/b/b;->b(IILcom/subao/common/b/g;ILjava/lang/String;Lcom/subao/common/b/c;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    if-lez p2, :cond_2

    .line 254
    sget-object v0, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    invoke-virtual {v0, p3}, Lcom/subao/common/b/a;->a(Ljava/lang/String;)Lcom/subao/common/b/g;

    move-result-object v2

    .line 255
    if-eqz v2, :cond_3

    .line 256
    const-string v0, "SubaoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JWTToken cache got. call key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    move v1, p2

    move-object v4, p3

    move-object v5, p6

    .line 257
    invoke-static/range {v0 .. v5}, Lcom/subao/common/b/b;->b(IILcom/subao/common/b/g;ILjava/lang/String;Lcom/subao/common/b/c;)V

    goto :goto_0

    .line 262
    :cond_2
    sget-object v0, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/subao/common/b/a;->a(Ljava/lang/String;Lcom/subao/common/b/g;)V

    .line 267
    :cond_3
    new-instance v0, Lcom/subao/common/b/b$1;

    invoke-interface {p0}, Lcom/subao/common/b/b$c;->b()Lcom/subao/common/i/d$b;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/b/b$1;-><init>(Lcom/subao/common/i/d$b;IILjava/lang/String;Lcom/subao/common/b/c;)V

    .line 301
    sget-object v1, Lcom/subao/common/b/b;->c:Lcom/subao/common/b/b$a;

    invoke-static {v1}, Lcom/subao/common/b/b$a;->a(Lcom/subao/common/b/b$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/subao/common/b/b;->c:Lcom/subao/common/b/b$a;

    invoke-static {v1}, Lcom/subao/common/b/b$a;->b(Lcom/subao/common/b/b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    sget-object v1, Lcom/subao/common/b/b;->c:Lcom/subao/common/b/b$a;

    invoke-static {v1}, Lcom/subao/common/b/b$a;->c(Lcom/subao/common/b/b$a;)I

    move-result v1

    sget-object v2, Lcom/subao/common/b/b;->c:Lcom/subao/common/b/b$a;

    invoke-static {v2}, Lcom/subao/common/b/b$a;->d(Lcom/subao/common/b/b$a;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/j/n;->c(I[B)V

    .line 303
    sget-object v0, Lcom/subao/common/b/b;->c:Lcom/subao/common/b/b$a;

    invoke-virtual {v0}, Lcom/subao/common/b/b$a;->a()V

    goto :goto_0

    .line 305
    :cond_4
    invoke-interface {p0}, Lcom/subao/common/b/b$c;->a()Z

    move-result v1

    invoke-static {v1, v0}, Lcom/subao/common/b/b;->a(ZLcom/subao/common/j/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Lcom/subao/common/b/e$c;

    .line 307
    invoke-static {}, Lcom/subao/common/b/e;->a()Ljava/lang/String;

    move-result-object v4

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/subao/common/b/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V

    .line 308
    invoke-interface {p0}, Lcom/subao/common/b/b$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/subao/common/b/e;->a(Lcom/subao/common/b/e$c;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
    .locals 7

    .prologue
    .line 383
    new-instance v0, Lcom/subao/common/b/b$2;

    invoke-interface {p0}, Lcom/subao/common/b/b$c;->b()Lcom/subao/common/i/d$b;

    move-result-object v1

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/b/b$2;-><init>(Lcom/subao/common/i/d$b;IILcom/subao/common/b/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-interface {p0}, Lcom/subao/common/b/b$c;->a()Z

    move-result v1

    invoke-static {v1, v0}, Lcom/subao/common/b/b;->a(ZLcom/subao/common/j/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2d

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-node.xunyou.mobi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v1, p3, v0}, Lcom/subao/common/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V

    .line 419
    :cond_0
    return-void
.end method

.method public static a(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 546
    if-nez p2, :cond_0

    .line 547
    sget-object v0, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    invoke-virtual {v0, p3}, Lcom/subao/common/b/a;->a(Ljava/lang/String;)Lcom/subao/common/b/g;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    .line 549
    iget-object p2, v0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    .line 553
    :cond_0
    new-instance v0, Lcom/subao/common/b/b$5;

    invoke-interface {p0}, Lcom/subao/common/b/b$c;->b()Lcom/subao/common/i/d$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/subao/common/b/b$5;-><init>(Lcom/subao/common/i/d$b;II)V

    .line 599
    invoke-interface {p0}, Lcom/subao/common/b/b$c;->a()Z

    move-result v1

    invoke-static {v1, v0}, Lcom/subao/common/b/b;->a(ZLcom/subao/common/j/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 601
    new-instance v2, Landroid/util/JsonWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 603
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 604
    const-string/jumbo v3, "userConfig"

    invoke-static {v2, v3, p4}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 605
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 611
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p2, p3, v1, v0}, Lcom/subao/common/b/e;->a(Ljava/lang/String;Ljava/lang/String;[BLcom/subao/common/j/n;)V

    .line 613
    :cond_1
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 609
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Lcom/subao/common/b/b$c;ILjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 623
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "SubaoAuth"

    const-string v1, "Empty or Null userId"

    invoke-static {v0, v1}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 627
    :cond_0
    sget-object v0, Lcom/subao/common/b/b;->a:Lcom/subao/common/b/p;

    invoke-virtual {v0, p2}, Lcom/subao/common/b/p;->a(Ljava/lang/String;)Lcom/subao/common/b/o;

    move-result-object v0

    .line 628
    if-nez v0, :cond_1

    .line 629
    const-string v0, "SubaoAuth"

    const-string v1, "No user config exists"

    invoke-static {v0, v1}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    sget-object v1, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    invoke-virtual {v1, p2}, Lcom/subao/common/b/a;->a(Ljava/lang/String;)Lcom/subao/common/b/g;

    move-result-object v1

    .line 633
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 634
    :cond_2
    const-string v0, "SubaoAuth"

    const-string v1, "Set user config failed (#1)"

    invoke-static {v0, v1}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_3
    new-instance v2, Lcom/subao/common/b/o;

    iget-boolean v3, v0, Lcom/subao/common/b/o;->b:Z

    iget-char v0, v0, Lcom/subao/common/b/o;->d:C

    invoke-direct {v2, v3, p3, v0}, Lcom/subao/common/b/o;-><init>(ZZC)V

    .line 638
    invoke-static {p2, v2}, Lcom/subao/common/b/b;->b(Ljava/lang/String;Lcom/subao/common/b/o;)V

    .line 639
    iget-object v0, v1, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    iget-object v1, v2, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/f/c;)V
    .locals 1

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/subao/common/b/e;->a(Lcom/subao/common/e/al;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/subao/common/b/a;

    invoke-direct {v0, p2}, Lcom/subao/common/b/a;-><init>(Lcom/subao/common/f/c;)V

    sput-object v0, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    .line 211
    return-void
.end method

.method public static a(Lcom/subao/common/e/u$a;Ljava/lang/String;Lcom/subao/common/e/t$a;Z)V
    .locals 3
    .param p0    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/t$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {p1}, Lcom/subao/common/b/b;->b(Ljava/lang/String;)Lcom/subao/common/b/g;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 140
    const/16 v0, 0x3f1

    invoke-interface {p2, v0, v2}, Lcom/subao/common/e/t$a;->a(ILjava/util/List;)V

    .line 155
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/subao/common/e/u$a;->d:Lcom/subao/common/j/j;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/subao/common/e/u$a;->d:Lcom/subao/common/j/j;

    invoke-interface {v1}, Lcom/subao/common/j/j;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    const/16 v0, 0x3ed

    invoke-interface {p2, v0, v2}, Lcom/subao/common/e/t$a;->a(ILjava/util/List;)V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v1, Lcom/subao/common/e/t;

    new-instance v2, Lcom/subao/common/e/u$d;

    iget-object v0, v0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lcom/subao/common/e/u$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/subao/common/e/t;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/e/t$a;Z)V

    .line 154
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/subao/common/e/t;->a(Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/subao/common/intf/XunyouTokenStateListener;)V
    .locals 2

    .prologue
    .line 332
    const-class v0, Lcom/subao/common/b/b;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/subao/common/b/b;->e:Lcom/subao/common/intf/XunyouTokenStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit v0

    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "SubaoAuth"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "SubaoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v0, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/subao/common/b/a;->a(Ljava/lang/String;Lcom/subao/common/b/g;)V

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/j/n;)V
    .locals 0

    .prologue
    .line 726
    invoke-static {p0, p1, p2, p3}, Lcom/subao/common/b/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/j/n;)V

    .line 727
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/subao/common/b/o;)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/subao/common/b/b;->b(Ljava/lang/String;Lcom/subao/common/b/o;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0}, Lcom/subao/common/b/e;->a(Z)V

    .line 220
    return-void
.end method

.method public static declared-synchronized a([B)V
    .locals 2

    .prologue
    .line 325
    const-class v0, Lcom/subao/common/b/b;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/subao/common/b/b;->d:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit v0

    return-void

    .line 325
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/RequestTrialCallback;)Z
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/intf/RequestTrialCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {p2}, Lcom/subao/common/b/b;->b(Ljava/lang/String;)Lcom/subao/common/b/g;

    move-result-object v1

    .line 80
    if-nez v1, :cond_1

    .line 82
    if-eqz p3, :cond_0

    .line 83
    const/16 v1, 0x3f1

    invoke-interface {p3, v1}, Lcom/subao/common/intf/RequestTrialCallback;->onRequestTrialResult(I)V

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    const/4 v2, 0x1

    iget v3, v1, Lcom/subao/common/b/g;->d:I

    if-eq v2, v3, :cond_2

    .line 89
    if-eqz p3, :cond_0

    .line 90
    const/16 v1, 0x3f2

    invoke-interface {p3, v1}, Lcom/subao/common/intf/RequestTrialCallback;->onRequestTrialResult(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, v1, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    invoke-static {p0, p1, v0, p3}, Lcom/subao/common/b/b;->b(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/RequestTrialCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(ZLcom/subao/common/j/n;)Z
    .locals 1

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/subao/common/j/n;->c()V

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a()[B
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 318
    const-class v0, Lcom/subao/common/b/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/b/b;->d:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)Lcom/subao/common/b/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 757
    sget-object v0, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    invoke-virtual {v0, p0}, Lcom/subao/common/b/a;->a(Ljava/lang/String;)Lcom/subao/common/b/g;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/subao/common/intf/XunyouTokenStateListener;
    .locals 2

    .prologue
    .line 336
    const-class v0, Lcom/subao/common/b/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/b/b;->e:Lcom/subao/common/intf/XunyouTokenStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(IILcom/subao/common/b/g;ILjava/lang/String;Lcom/subao/common/b/c;)V
    .locals 22

    .prologue
    .line 348
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    .line 349
    const-string v2, "SubaoAuth"

    invoke-static {v2}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/subao/common/b/g;->i:J

    invoke-static {v2, v3}, Lcom/subao/common/n/c;->b(J)Ljava/util/Calendar;

    move-result-object v2

    .line 351
    const-string v3, "SubaoAuth"

    sget-object v4, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string/jumbo v5, "userId=[%s], expire=[%d], serviceId=[%s], status=[%s], time=[%s], serverTime=[%d][%s], scopes=[%s], credit=[%s, %s, %d]"

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p4, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/subao/common/b/g;->b:J

    .line 353
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v12, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p2

    iget v8, v0, Lcom/subao/common/b/g;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/subao/common/b/g;->i:J

    .line 354
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x7

    .line 355
    invoke-static {v2, v8}, Lcom/subao/common/n/c;->a(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x7

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/subao/common/b/g;->i:J

    .line 359
    invoke-static {v7, v8, v9}, Lcom/subao/common/b/k;->a(Lcom/subao/common/b/k;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/16 v2, 0x8

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/subao/common/b/g;->k:J

    .line 360
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const/16 v2, 0x9

    move-object/from16 v0, p2

    iget v7, v0, Lcom/subao/common/b/g;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/16 v2, 0xa

    move-object/from16 v0, p2

    iget v7, v0, Lcom/subao/common/b/g;->m:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 351
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Lcom/subao/common/b/g;->d:I

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    new-instance v3, Lcom/subao/common/i/b;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/subao/common/b/g;->k:J

    move-object/from16 v0, p2

    iget v6, v0, Lcom/subao/common/b/g;->l:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/subao/common/b/g;->m:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/subao/common/i/b;-><init>(JIILjava/lang/String;)V

    move-object/from16 v0, p4

    invoke-static {v0, v12, v2, v9, v3}, Lcom/subao/common/i/k;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/i/b;)V

    .line 366
    if-eqz p5, :cond_1

    .line 367
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/subao/common/b/g;->b:J

    move-object/from16 v0, p2

    iget v9, v0, Lcom/subao/common/b/g;->d:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/subao/common/b/g;->i:J

    .line 369
    invoke-static {v2, v14, v15}, Lcom/subao/common/b/k;->a(Lcom/subao/common/b/k;J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/subao/common/b/g;->i:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/subao/common/b/g;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/subao/common/b/g;->k:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/subao/common/b/g;->l:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/subao/common/b/g;->m:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v2, p5

    move/from16 v3, p0

    move/from16 v4, p1

    move-object v8, v12

    move/from16 v12, p3

    .line 367
    invoke-interface/range {v2 .. v21}, Lcom/subao/common/b/c;->a(IILjava/lang/String;JLjava/lang/String;ILjava/lang/String;ZILjava/lang/String;JIJIILjava/lang/String;)V

    .line 372
    :cond_1
    return-void
.end method

.method public static b(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
    .locals 7

    .prologue
    .line 488
    new-instance v0, Lcom/subao/common/b/b$4;

    invoke-interface {p0}, Lcom/subao/common/b/b$c;->b()Lcom/subao/common/i/d$b;

    move-result-object v1

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/b/b$4;-><init>(Lcom/subao/common/i/d$b;IILjava/lang/String;Lcom/subao/common/b/c;Ljava/lang/String;)V

    .line 527
    invoke-interface {p0}, Lcom/subao/common/b/b$c;->a()Z

    move-result v1

    invoke-static {v1, v0}, Lcom/subao/common/b/b;->a(ZLcom/subao/common/j/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-interface {p0}, Lcom/subao/common/b/b$c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1, v0}, Lcom/subao/common/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V

    .line 530
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/subao/common/b/o;)V
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lcom/subao/common/b/b;->a:Lcom/subao/common/b/p;

    invoke-virtual {v0, p0, p1}, Lcom/subao/common/b/p;->a(Ljava/lang/String;Lcom/subao/common/b/o;)V

    .line 534
    iget-object v0, p1, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/subao/common/i/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/RequestTrialCallback;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/intf/RequestTrialCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    new-instance v0, Lcom/subao/common/c/f;

    new-instance v1, Lcom/subao/common/b/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lcom/subao/common/b/b$d;-><init>(Lcom/subao/common/intf/RequestTrialCallback;Lcom/subao/common/b/b$1;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/subao/common/c/f;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/c/f$a;)V

    .line 119
    invoke-static {v0}, Lcom/subao/common/m/d;->a(Ljava/lang/Runnable;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c()Lcom/subao/common/b/a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/subao/common/b/b;->b:Lcom/subao/common/b/a;

    return-object v0
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/subao/common/b/b;->e()V

    return-void
.end method

.method private static e()V
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lcom/subao/common/b/b;->b()Lcom/subao/common/intf/XunyouTokenStateListener;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0}, Lcom/subao/common/intf/XunyouTokenStateListener;->onXunyouTokenInvalid()V

    .line 429
    :cond_0
    return-void
.end method
