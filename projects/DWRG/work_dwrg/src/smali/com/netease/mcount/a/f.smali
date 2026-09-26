.class public abstract Lcom/netease/mcount/a/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;Ljava/util/HashMap;[BII)Lcom/netease/mcount/a/c;
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/a/c;
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/netease/mcount/a/g;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mcount/a/f;->a(ILjava/lang/String;Ljava/util/HashMap;[BII)Lcom/netease/mcount/a/c;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/netease/mcount/a/b;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/netease/mcount/a/b;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netease/mcount/a/b;

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/mcount/a/b;-><init>(ILjava/lang/String;)V

    throw v1
.end method
