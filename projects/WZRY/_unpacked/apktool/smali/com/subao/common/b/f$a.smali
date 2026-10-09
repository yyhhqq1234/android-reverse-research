.class Lcom/subao/common/b/f$a;
.super Ljava/lang/Object;
.source "JWTPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/subao/common/b/f$a;->a:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private static a(Landroid/util/JsonReader;)Lcom/subao/common/b/f$a;
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 94
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v2, "account"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    new-instance v1, Lcom/subao/common/b/f$a;

    invoke-direct {v1, v0}, Lcom/subao/common/b/f$a;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static a(Ljava/lang/String;)Lcom/subao/common/b/f$a;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 80
    :try_start_0
    invoke-static {v0}, Lcom/subao/common/b/f$a;->a(Landroid/util/JsonReader;)Lcom/subao/common/b/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 82
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 84
    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method
