.class public Lcom/subao/common/b/n;
.super Ljava/lang/Object;
.source "UserAccelStatus.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/subao/common/b/n;->a:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/subao/common/b/n;->b:I

    .line 27
    iput-object p3, p0, Lcom/subao/common/b/n;->c:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/subao/common/b/n;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    const/4 v0, -0x1

    .line 38
    new-instance v4, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 41
    :try_start_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    move-object v1, v3

    move-object v2, v3

    .line 42
    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v6, "shortId"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 46
    :cond_1
    const-string v6, "status"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_0

    .line 48
    :cond_2
    const-string v6, "expiredTime"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v4}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    .line 66
    :goto_1
    return-object v0

    .line 54
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {v4}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 63
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 64
    new-instance v3, Lcom/subao/common/b/n;

    invoke-direct {v3, v2, v0, v1}, Lcom/subao/common/b/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 60
    invoke-static {v4}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_5
    move-object v0, v3

    .line 66
    goto :goto_1
.end method
