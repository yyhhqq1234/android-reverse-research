.class Lcom/subao/common/l/g;
.super Ljava/lang/Object;
.source "QosResponse.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/subao/common/l/g;->a:I

    .line 18
    iput-object p2, p0, Lcom/subao/common/l/g;->b:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private static a(Landroid/util/JsonReader;)Lcom/subao/common/l/g;
    .locals 4

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "resultCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    .line 38
    :cond_0
    const-string v3, "errorInfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 45
    new-instance v2, Lcom/subao/common/l/g;

    invoke-direct {v2, v1, v0}, Lcom/subao/common/l/g;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public static a(Ljava/io/InputStream;)Lcom/subao/common/l/g;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 24
    :try_start_0
    invoke-static {v0}, Lcom/subao/common/l/g;->a(Landroid/util/JsonReader;)Lcom/subao/common/l/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 26
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method
