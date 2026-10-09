.class Lcom/subao/common/b/j$a$a;
.super Ljava/lang/Object;
.source "OriginUserStateRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/subao/common/b/j$a$a;->a:I

    .line 138
    iput-object p2, p0, Lcom/subao/common/b/j$a$a;->b:Ljava/lang/String;

    .line 139
    return-void
.end method

.method static a(Lcom/subao/common/j/a$c;)Lcom/subao/common/b/j$a$a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 142
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/subao/common/j/a$c;->b:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/subao/common/j/a$c;->b:[B

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    const/4 v1, 0x0

    .line 147
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/subao/common/j/a$c;->b:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 149
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 150
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string v4, "origin_code"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_1

    .line 154
    :cond_2
    const-string v4, "origin_body"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    invoke-static {v2}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 163
    new-instance v2, Lcom/subao/common/b/j$a$a;

    invoke-direct {v2, v1, v0}, Lcom/subao/common/b/j$a$a;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method
