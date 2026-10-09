.class public Lcom/subao/common/i/f;
.super Ljava/lang/Object;
.source "MessagePersistent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/f$a;,
        Lcom/subao/common/i/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/i/f$b;


# direct methods
.method public constructor <init>(Lcom/subao/common/i/f$b;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subao/common/i/f;->a:Lcom/subao/common/i/f$b;

    .line 23
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/i/f$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/subao/common/i/f;->a:Lcom/subao/common/i/f$b;

    invoke-interface {v0}, Lcom/subao/common/i/f$b;->a()[Ljava/lang/String;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 59
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "link_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    const-string v5, "link_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/subao/common/i/f;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 62
    const-string v6, "link_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v7, Lcom/subao/common/i/f$a;

    invoke-direct {v7, v6, v5}, Lcom/subao/common/i/f$a;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    if-lez p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, p1, :cond_1

    .line 74
    :cond_0
    :goto_1
    return-object v0

    .line 67
    :catch_0
    move-exception v5

    .line 68
    iget-object v5, p0, Lcom/subao/common/i/f;->a:Lcom/subao/common/i/f$b;

    invoke-interface {v5, v4}, Lcom/subao/common/i/f$b;->a(Ljava/lang/String;)V

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/subao/common/i/f;->a:Lcom/subao/common/i/f$b;

    invoke-static {p1}, Lcom/subao/common/i/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/subao/common/i/f$b;->a(Ljava/lang/String;Z)Ljava/io/RandomAccessFile;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 47
    return-void

    .line 42
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v1

    .line 45
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Open file error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/subao/common/i/f;->a:Lcom/subao/common/i/f$b;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/subao/common/i/f$b;->a(Ljava/lang/String;Z)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 80
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 81
    const-wide/32 v4, 0x100000

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 82
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File too large"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 84
    :cond_0
    long-to-int v0, v2

    :try_start_1
    new-array v0, v0, [B

    .line 85
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    .line 86
    long-to-int v2, v2

    if-eq v4, v2, :cond_1

    .line 87
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Read file error"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_1
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/subao/common/i/f;->a:Lcom/subao/common/i/f$b;

    invoke-static {p1}, Lcom/subao/common/i/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subao/common/i/f$b;->a(Ljava/lang/String;)V

    .line 102
    return-void
.end method
