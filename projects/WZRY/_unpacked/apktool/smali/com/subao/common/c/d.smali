.class public Lcom/subao/common/c/d;
.super Lcom/subao/common/c/g;
.source "PayRequester.java"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private d:Lcom/subao/common/intf/RequestBuyResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/c/g;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/subao/common/c/d;->c:I

    .line 48
    iput-object p4, p0, Lcom/subao/common/c/d;->a:Ljava/lang/String;

    .line 49
    iput p5, p0, Lcom/subao/common/c/d;->b:I

    .line 50
    return-void
.end method

.method private a([B)Lcom/subao/common/intf/RequestBuyResult;
    .locals 7
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 85
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    :cond_0
    move-object v0, v3

    .line 118
    :goto_0
    return-object v0

    .line 93
    :cond_1
    :try_start_0
    new-instance v5, Landroid/util/JsonReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-direct {v5, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    :try_start_6
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    .line 95
    :goto_1
    :try_start_7
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v4

    if-eqz v4, :cond_5

    .line 96
    :try_start_8
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v4

    .line 97
    :try_start_9
    const-string v6, "productId"
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    :try_start_b
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 99
    :cond_2
    :try_start_c
    const-string v6, "accessKey"
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    :try_start_e
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v1

    goto :goto_1

    .line 101
    :cond_3
    :try_start_f
    const-string/jumbo v6, "transNo"
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    :try_start_11
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 104
    :cond_4
    :try_start_12
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v4

    move-object v6, v0

    :goto_2
    move-object v0, v6

    .line 109
    :try_start_13
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 111
    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v4, v0

    .line 113
    :goto_3
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 114
    new-instance v0, Lcom/subao/common/intf/RequestBuyResultForViVo;

    iget-object v3, p0, Lcom/subao/common/c/d;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/subao/common/intf/RequestBuyResultForViVo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_5
    :try_start_14
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 111
    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v4, v0

    .line 112
    goto :goto_3

    .line 111
    :catchall_0
    move-exception v0

    move-object v5, v3

    :goto_4
    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_6
    move-object v0, v3

    .line 118
    goto :goto_0

    .line 111
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 108
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_9
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_a
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_b
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_c
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_d
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_e
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_f
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_10
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_11
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_12
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_13
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_14
    move-exception v4

    move-object v6, v0

    goto :goto_2

    :catch_15
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto/16 :goto_2

    :catch_16
    move-exception v0

    move-object v4, v0

    move-object v6, v3

    move-object v1, v3

    move-object v2, v3

    goto/16 :goto_2
.end method


# virtual methods
.method protected a()Lcom/subao/common/j/a$b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    return-object v0
.end method

.method protected a(Lcom/subao/common/j/a$c;)V
    .locals 3
    .param p1    # Lcom/subao/common/j/a$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v0, 0x3f0

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/subao/common/c/d;->d:Lcom/subao/common/intf/RequestBuyResult;

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/subao/common/c/d;->c:I

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    iget v1, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    .line 69
    iput v0, p0, Lcom/subao/common/c/d;->c:I

    goto :goto_0

    .line 72
    :cond_1
    iget v1, p0, Lcom/subao/common/c/d;->b:I

    packed-switch v1, :pswitch_data_0

    .line 78
    const/16 v0, 0x3f3

    iput v0, p0, Lcom/subao/common/c/d;->c:I

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v1, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-direct {p0, v1}, Lcom/subao/common/c/d;->a([B)Lcom/subao/common/intf/RequestBuyResult;

    move-result-object v1

    iput-object v1, p0, Lcom/subao/common/c/d;->d:Lcom/subao/common/intf/RequestBuyResult;

    .line 75
    iget-object v1, p0, Lcom/subao/common/c/d;->d:Lcom/subao/common/intf/RequestBuyResult;

    if-nez v1, :cond_2

    :goto_1
    iput v0, p0, Lcom/subao/common/c/d;->c:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected b()[B
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string/jumbo v1, "{\"payType\":%d}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/subao/common/c/d;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 125
    const-string v0, "/api/v1/%s/orders/%s/payment"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/subao/common/c/d;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/subao/common/c/d;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/subao/common/c/d;->c:I

    return v0
.end method

.method public e()Lcom/subao/common/intf/RequestBuyResult;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/subao/common/c/d;->d:Lcom/subao/common/intf/RequestBuyResult;

    return-object v0
.end method
