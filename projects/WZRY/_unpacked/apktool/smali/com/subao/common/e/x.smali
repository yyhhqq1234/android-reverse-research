.class public abstract Lcom/subao/common/e/x;
.super Lcom/subao/common/e/ab;
.source "IpInfoDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/x$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/g/c;


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 25
    iput-object p2, p0, Lcom/subao/common/e/x;->a:Lcom/subao/common/g/c;

    .line 26
    return-void
.end method

.method public static a(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;Lcom/subao/common/e/x$a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    invoke-interface {p2, p0, p1}, Lcom/subao/common/e/x$a;->a(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)Lcom/subao/common/e/x;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/subao/common/e/x;->j()Lcom/subao/common/e/ac;

    move-result-object v1

    .line 39
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/subao/common/e/ac;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/subao/common/e/x;->b([Lcom/subao/common/e/ac;)Z

    .line 40
    invoke-virtual {v0, v1}, Lcom/subao/common/e/x;->d(Lcom/subao/common/e/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v1}, Lcom/subao/common/e/x;->b(Lcom/subao/common/e/ac;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/subao/common/e/ac;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2c

    const/4 v1, 0x0

    .line 54
    if-nez p0, :cond_0

    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/subao/common/e/ac;->a()[B

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 63
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 64
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v3, "list"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 81
    :cond_3
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 75
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    :goto_3
    move-object v0, v1

    .line 83
    goto :goto_0

    .line 81
    :cond_5
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 78
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected varargs a([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;
    .locals 5

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/subao/common/e/ab;->a([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/subao/common/e/ac;->d:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/subao/common/e/x;->a:Lcom/subao/common/g/c;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/subao/common/e/x;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/subao/common/e/x;->b(Lcom/subao/common/e/ac;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-object v0
.end method

.method protected abstract e()Ljava/lang/String;
.end method
