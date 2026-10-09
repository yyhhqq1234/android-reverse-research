.class Lcom/subao/common/e/z$a;
.super Ljava/lang/Object;
.source "ParallelConfigDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean p1, p0, Lcom/subao/common/e/z$a;->a:Z

    .line 141
    iput-object p2, p0, Lcom/subao/common/e/z$a;->b:Ljava/util/List;

    .line 142
    iput-object p3, p0, Lcom/subao/common/e/z$a;->c:Ljava/util/List;

    .line 143
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    .line 244
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 246
    :try_start_0
    invoke-static {v1, p1}, Lcom/subao/common/n/h;->a(Ljava/io/Reader;Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 248
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static a(Landroid/util/JsonReader;)Lcom/subao/common/e/z$a;
    .locals 5

    .prologue
    .line 211
    invoke-static {}, Lcom/subao/common/e/z$a;->b()Ljava/util/List;

    move-result-object v1

    .line 212
    invoke-static {}, Lcom/subao/common/e/z$a;->b()Ljava/util/List;

    move-result-object v2

    .line 213
    const/4 v0, 0x0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 216
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v4, "model"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/subao/common/e/z$a;->a(Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :goto_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_0
    :try_start_1
    const-string v4, "cpu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/subao/common/e/z$a;->a(Ljava/lang/String;Ljava/util/List;)I

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    goto :goto_1

    .line 222
    :cond_1
    const-string/jumbo v4, "switch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const-string v0, "1"

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 229
    invoke-static {v0, v1, v2}, Lcom/subao/common/e/z$a;->a(ZLjava/util/List;Ljava/util/List;)Lcom/subao/common/e/z$a;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/subao/common/e/ac;)Lcom/subao/common/e/z$a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 154
    if-nez p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/e/ac;->b()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 160
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/subao/common/e/ac;->a()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 162
    :try_start_0
    invoke-static {v1}, Lcom/subao/common/e/z$a;->a(Landroid/util/JsonReader;)Lcom/subao/common/e/z$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 168
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v2

    .line 164
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 165
    :catch_1
    move-exception v2

    .line 166
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static a(ZLjava/util/List;Ljava/util/List;)Lcom/subao/common/e/z$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/subao/common/e/z$a;"
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/subao/common/e/z$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/subao/common/e/z$a;-><init>(ZLjava/util/List;Ljava/util/List;)V

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 191
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 200
    :goto_0
    return v0

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 200
    goto :goto_0
.end method

.method private static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/subao/common/e/z$a;->a:Z

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/subao/common/e/z$a;->c:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/subao/common/e/z$a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/subao/common/e/z$a;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/subao/common/e/z$a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 274
    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "[enable=%b, cpu=%d, model=%d]"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/subao/common/e/z$a;->a:Z

    .line 275
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/subao/common/e/z$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 276
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/subao/common/e/z$a;->b:Ljava/util/List;

    if-nez v5, :cond_1

    .line 277
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 274
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/subao/common/e/z$a;->c:Ljava/util/List;

    .line 276
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/subao/common/e/z$a;->b:Ljava/util/List;

    .line 277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1
.end method
