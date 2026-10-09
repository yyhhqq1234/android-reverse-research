.class public Lcom/subao/common/b/m;
.super Ljava/lang/Object;
.source "TokenInfo.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/subao/common/b/m;->a:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/subao/common/b/m;->b:I

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/subao/common/b/m;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    new-instance v3, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 40
    :try_start_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    move-object v1, v2

    .line 41
    :goto_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 43
    const-string v5, "access_token"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_1
    const-string v5, "expires_in"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 63
    :goto_1
    return-object v0

    .line 51
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 60
    if-eqz v1, :cond_4

    .line 61
    new-instance v2, Lcom/subao/common/b/m;

    invoke-direct {v2, v1, v0}, Lcom/subao/common/b/m;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_1

    .line 54
    :catch_1
    move-exception v0

    .line 57
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    move-object v0, v2

    .line 63
    goto :goto_1
.end method
