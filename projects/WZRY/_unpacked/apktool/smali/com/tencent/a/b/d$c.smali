.class final Lcom/tencent/a/b/d$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/tencent/a/b/d$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/a/b/d$b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/tencent/a/b/d$b;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/a/b/d$c;->a:Lcom/tencent/a/b/d$b;

    iput p2, p0, Lcom/tencent/a/b/d$c;->b:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/a/b/d$c;)I
    .locals 1

    iget v0, p0, Lcom/tencent/a/b/d$c;->b:I

    return v0
.end method

.method private varargs a([Ljava/lang/String;)Lcom/tencent/a/b/d$d;
    .locals 11

    const/16 v10, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/a/b/d$d;

    invoke-direct {v4, v2}, Lcom/tencent/a/b/d$d;-><init>(B)V

    if-eqz p1, :cond_f

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {}, Lcom/tencent/a/b/d/e;->y()I

    move-result v0

    sput v0, Lcom/tencent/a/b/b;->e:I

    sget v0, Lcom/tencent/a/b/b;->e:I

    iput v0, v4, Lcom/tencent/a/b/d$d;->a:I

    invoke-static {}, Lcom/tencent/a/b/d/e;->x()I

    move-result v0

    iput v0, v4, Lcom/tencent/a/b/d$d;->c:I

    invoke-static {}, Lcom/tencent/a/b/d/e;->v()I

    move-result v0

    iput v0, v4, Lcom/tencent/a/b/d$d;->d:I

    invoke-static {}, Lcom/tencent/a/b/d/e;->u()I

    move-result v0

    iput v0, v4, Lcom/tencent/a/b/d$d;->e:I

    invoke-static {}, Lcom/tencent/a/b/d/e;->t()I

    move-result v0

    iput v0, v4, Lcom/tencent/a/b/d$d;->f:I

    sget-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/a/b/d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/b/d$a;->a(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/tencent/a/b/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Lcom/tencent/a/b/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v2

    invoke-static {v0}, Lcom/tencent/a/b/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    aget-object v5, v1, v3

    invoke-static {v5}, Lcom/tencent/a/b/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/tencent/a/b/c;->a(Ljava/lang/String;)V

    :cond_0
    :goto_2
    :try_start_1
    new-instance v1, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&&frontier="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v10, :cond_f

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "gzip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_3
    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    :goto_4
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/a/b/d$a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v4

    :goto_5
    return-object v0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "decode frontier.dat to string error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string v1, "info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    move-object v0, v4

    goto :goto_5

    :cond_5
    const-string v0, "raster"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v4

    goto :goto_5

    :cond_6
    const-string/jumbo v1, "style"

    const/16 v6, 0x3e8

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/tencent/a/b/d$d;->a:I

    const-string v1, "scene"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/tencent/a/b/d$d;->b:I

    const-string/jumbo v1, "version"

    sget v6, Lcom/tencent/a/b/b;->a:I

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sget-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    iget v0, v4, Lcom/tencent/a/b/d$d;->a:I

    iget v1, v4, Lcom/tencent/a/b/d$d;->b:I

    const/4 v7, 0x0

    invoke-static {v0, v1, v6, v7}, Lcom/tencent/a/b/d$a;->a(IIIZ)Z

    sget-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iget v1, v4, Lcom/tencent/a/b/d$d;->a:I

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Lcom/tencent/a/b/d$a;->a(Ljava/lang/String;IZ)Z

    sget-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iget v1, v4, Lcom/tencent/a/b/d$d;->b:I

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Lcom/tencent/a/b/d$a;->b(Ljava/lang/String;IZ)Z

    const-string/jumbo v0, "world"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, v4

    goto :goto_5

    :cond_7
    const-string/jumbo v1, "style"

    const/16 v7, 0x3e8

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/tencent/a/b/d$d;->d:I

    const-string v1, "scene"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/tencent/a/b/d$d;->e:I

    const-string/jumbo v1, "version"

    sget v7, Lcom/tencent/a/b/b;->b:I

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "logo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v0, v4, Lcom/tencent/a/b/d$d;->d:I

    iget v1, v4, Lcom/tencent/a/b/d$d;->e:I

    new-instance v9, Ljava/io/File;

    invoke-static {v0, v1, v7}, Lcom/tencent/a/b/d$a;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v3

    :goto_6
    if-nez v0, :cond_9

    iget v1, v4, Lcom/tencent/a/b/d$d;->d:I

    iget v2, v4, Lcom/tencent/a/b/d$d;->e:I

    invoke-static {v1, v2, v7}, Lcom/tencent/a/b/d$a;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/b/d$a;->a(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    :try_start_3
    array-length v9, v1

    invoke-static {v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/a/b/d$d;->g:Landroid/graphics/Bitmap;

    :cond_8
    iget-object v1, v4, Lcom/tencent/a/b/d$d;->g:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v1, :cond_9

    move v0, v3

    :cond_9
    :goto_7
    if-eqz v0, :cond_b

    if-eqz v8, :cond_b

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    if-lez v0, :cond_b

    const/4 v1, 0x0

    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v10, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/b/d$a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/a/b/d$d;->g:Landroid/graphics/Bitmap;

    iget v2, v4, Lcom/tencent/a/b/d$d;->d:I

    iget v3, v4, Lcom/tencent/a/b/d$d;->e:I

    invoke-static {v2, v3, v7}, Lcom/tencent/a/b/d$a;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/a/b/d$a;->a([BLjava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_a
    if-eqz v0, :cond_b

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_b
    :goto_8
    :try_start_8
    const-string v0, "frontier"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/b/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v10, :cond_c

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/tencent/a/b/d$a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {}, Lcom/tencent/a/b/d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/a/b/d$a;->a([BLjava/lang/String;)Z

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    invoke-static {}, Lcom/tencent/a/b/d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/b/d$a;->a(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/a/b/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v0}, Lcom/tencent/a/b/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/tencent/a/b/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/tencent/a/b/c;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_c
    :goto_9
    :try_start_9
    sget-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    iget v0, v4, Lcom/tencent/a/b/d$d;->d:I

    iget v1, v4, Lcom/tencent/a/b/d$d;->e:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v7, v2}, Lcom/tencent/a/b/d$a;->a(IIIZ)Z

    sget-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iget v1, v4, Lcom/tencent/a/b/d$d;->d:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/a/b/d$a;->a(Ljava/lang/String;IZ)Z

    sget-object v0, Lcom/tencent/a/b/d$a$a;->a:Lcom/tencent/a/b/d$a;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iget v1, v4, Lcom/tencent/a/b/d$d;->e:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/a/b/d$a;->b(Ljava/lang/String;IZ)Z

    iget v0, v4, Lcom/tencent/a/b/d$d;->c:I

    if-eq v6, v0, :cond_d

    new-instance v0, Lcom/tencent/a/b/d$c$1;

    invoke-direct {v0, p0, v6}, Lcom/tencent/a/b/d$c$1;-><init>(Lcom/tencent/a/b/d$c;I)V

    invoke-virtual {v0}, Lcom/tencent/a/b/d$c$1;->start()V

    :cond_d
    iput v6, v4, Lcom/tencent/a/b/d$d;->c:I

    invoke-static {}, Lcom/tencent/a/b/d/e;->t()I

    move-result v0

    if-eq v7, v0, :cond_e

    new-instance v0, Lcom/tencent/a/b/d$c$2;

    invoke-direct {v0, p0, v7}, Lcom/tencent/a/b/d$c$2;-><init>(Lcom/tencent/a/b/d$c;I)V

    invoke-virtual {v0}, Lcom/tencent/a/b/d$c$2;->start()V

    :cond_e
    iput v7, v4, Lcom/tencent/a/b/d$d;->f:I

    :cond_f
    :goto_a
    move-object v0, v4

    goto/16 :goto_5

    :cond_10
    move v0, v2

    goto/16 :goto_6

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decode bing logo error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_b
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_8

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check version got error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_c
    if-eqz v3, :cond_11

    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v2

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "frontier is already the new:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_9

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_c

    :catch_5
    move-exception v1

    goto :goto_b

    :cond_12
    move v0, v2

    goto/16 :goto_1

    :cond_13
    move v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/a/b/d$c;->a([Ljava/lang/String;)Lcom/tencent/a/b/d$d;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/tencent/a/b/d$d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d$c;->a:Lcom/tencent/a/b/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d$c;->a:Lcom/tencent/a/b/d$b;

    iget v1, p1, Lcom/tencent/a/b/d$d;->a:I

    iget v2, p1, Lcom/tencent/a/b/d$d;->b:I

    iget v3, p1, Lcom/tencent/a/b/d$d;->c:I

    iget v4, p1, Lcom/tencent/a/b/d$d;->d:I

    iget v5, p1, Lcom/tencent/a/b/d$d;->e:I

    iget v6, p1, Lcom/tencent/a/b/d$d;->f:I

    iget-object v7, p1, Lcom/tencent/a/b/d$d;->g:Landroid/graphics/Bitmap;

    invoke-interface/range {v0 .. v7}, Lcom/tencent/a/b/d$b;->a(IIIIIILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
