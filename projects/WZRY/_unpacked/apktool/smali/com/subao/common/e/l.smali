.class public Lcom/subao/common/e/l;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final a:Lcom/subao/common/e/l;


# instance fields
.field private final b:Lcom/subao/common/f/c;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/subao/common/e/l;

    invoke-direct {v0}, Lcom/subao/common/e/l;-><init>()V

    sput-object v0, Lcom/subao/common/e/l;->a:Lcom/subao/common/e/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "config.subao"

    invoke-static {v0}, Lcom/subao/common/f/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/l;->b:Lcom/subao/common/f/c;

    .line 37
    invoke-virtual {p0}, Lcom/subao/common/e/l;->b()Z

    .line 38
    return-void
.end method

.method public static a()Lcom/subao/common/e/l;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/subao/common/e/l;->a:Lcom/subao/common/e/l;

    return-object v0
.end method

.method static synthetic a(Lcom/subao/common/e/l;)Lcom/subao/common/f/c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/subao/common/e/l;->b:Lcom/subao/common/f/c;

    return-object v0
.end method

.method static synthetic b(Lcom/subao/common/e/l;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/subao/common/e/l;->c:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/subao/common/e/l$1;

    invoke-direct {v1, p0}, Lcom/subao/common/e/l$1;-><init>(Lcom/subao/common/e/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/subao/common/e/l;->c:I

    if-eq v0, p1, :cond_0

    .line 89
    iput p1, p0, Lcom/subao/common/e/l;->c:I

    .line 90
    invoke-direct {p0}, Lcom/subao/common/e/l;->d()V

    .line 92
    :cond_0
    return-void
.end method

.method b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/subao/common/e/l;->b:Lcom/subao/common/f/c;

    invoke-interface {v1}, Lcom/subao/common/f/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 53
    :cond_0
    const/4 v3, 0x0

    .line 55
    :try_start_0
    new-instance v2, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/subao/common/e/l;->b:Lcom/subao/common/f/c;

    invoke-interface {v5}, Lcom/subao/common/f/c;->b()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v2, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 57
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v3, "drsm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/subao/common/e/l;->c:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    .line 68
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 62
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 69
    :catch_1
    move-exception v1

    .line 70
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 65
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 66
    const/4 v0, 0x1

    .line 72
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 69
    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_3

    .line 67
    :catch_3
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method public c()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/subao/common/e/l;->c:I

    return v0
.end method
