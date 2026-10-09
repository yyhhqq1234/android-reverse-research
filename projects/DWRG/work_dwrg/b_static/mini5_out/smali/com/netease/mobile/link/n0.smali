.class public final Lcom/netease/mobile/link/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/n0$b;,
        Lcom/netease/mobile/link/n0$a;
    }
.end annotation


# direct methods
.method public static a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/netease/mobile/link/n0$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mobile/link/t3;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mobile/link/t3;",
            ">;II)",
            "Lcom/netease/mobile/link/n0$b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    const-string v3, "&"

    const/4 v4, 0x0

    const-string v5, "?"

    const/4 v6, 0x1

    if-ne p0, v6, :cond_2

    invoke-static {p3}, Lcom/netease/mobile/link/u3;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v3

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2
    :try_start_0
    invoke-static {p4}, Lcom/netease/mobile/link/u3;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lcom/netease/mobile/link/n0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p1, v6}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p1

    :cond_2
    if-nez p0, :cond_15

    if-nez p4, :cond_3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p4}, Lcom/netease/mobile/link/u3;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, v3

    goto :goto_1

    :cond_4
    move-object p1, v5

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move-object p1, v4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v0, 0x3

    .line 4
    :try_start_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    const-string v8, "Accept-Charset"

    invoke-virtual {v7, v8, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a98

    invoke-virtual {v7, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v7, p4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v7, v6}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_6

    :try_start_2
    const-string p0, "GET"

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_1e

    :catch_1
    move-exception p0

    goto/16 :goto_c

    :catch_2
    move-exception p0

    goto/16 :goto_d

    :catch_3
    move-exception p0

    goto/16 :goto_e

    :catch_4
    move-exception p0

    goto/16 :goto_f

    :catch_5
    move-exception p0

    goto/16 :goto_10

    :catch_6
    move-exception p0

    goto/16 :goto_11

    :catch_7
    move-exception p0

    goto/16 :goto_12

    :cond_6
    if-ne v6, p0, :cond_7

    const-string p0, "POST"

    .line 5
    :goto_3
    invoke-virtual {v7, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_8

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {v7, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_9
    new-instance p0, Lcom/netease/mobile/link/n0$b;

    invoke-direct {p0}, Lcom/netease/mobile/link/n0$b;-><init>()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p0, Lcom/netease/mobile/link/n0$b;->a:I
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_10

    :try_start_3
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    move-object v4, p2

    goto :goto_6

    :catch_8
    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_5

    :goto_6
    if-eqz v4, :cond_a

    invoke-static {v4}, Lcom/netease/mobile/link/u3;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mobile/link/n0$b;->b:[B

    :cond_a
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/netease/mobile/link/n0$b;->c:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v8, p0, Lcom/netease/mobile/link/n0$b;->c:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_b
    if-eqz v4, :cond_c

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_8

    :catch_9
    nop

    :cond_c
    :goto_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "\n\n"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    if-nez p1, :cond_d

    goto :goto_9

    :cond_d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_a

    :cond_e
    if-nez p1, :cond_f

    :goto_9
    const-string p1, ""

    goto :goto_b

    :cond_f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :goto_a
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/netease/mobile/link/n0$b;->a:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/netease/mobile/link/n0$b;->b:[B

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QA"

    invoke-static {p2, p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_10
    :try_start_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_c
    move-object p1, v4

    move-object v4, v7

    goto :goto_13

    :goto_d
    move-object p1, v4

    move-object v4, v7

    goto :goto_14

    :goto_e
    move-object p1, v4

    move-object v4, v7

    goto :goto_15

    :goto_f
    move-object p1, v4

    move-object v4, v7

    goto :goto_16

    :goto_10
    move-object p1, v4

    move-object v4, v7

    goto :goto_17

    :goto_11
    move-object p1, v4

    move-object v4, v7

    goto :goto_18

    :goto_12
    move-object p1, v4

    move-object v4, v7

    goto :goto_19

    :catchall_1
    move-exception p0

    move-object p1, v4

    goto/16 :goto_1d

    :catch_a
    move-exception p0

    move-object p1, v4

    :goto_13
    :try_start_7
    new-instance p2, Lcom/netease/mobile/link/n0$a;

    const/4 p3, 0x2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p2

    :catch_b
    move-exception p0

    move-object p1, v4

    :goto_14
    new-instance p2, Lcom/netease/mobile/link/n0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p2

    :catch_c
    move-exception p0

    move-object p1, v4

    :goto_15
    new-instance p2, Lcom/netease/mobile/link/n0$a;

    const/16 p3, 0x9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p2

    :catch_d
    move-exception p0

    move-object p1, v4

    :goto_16
    new-instance p2, Lcom/netease/mobile/link/n0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p2

    :catch_e
    move-exception p0

    move-object p1, v4

    :goto_17
    new-instance p2, Lcom/netease/mobile/link/n0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p2, v1}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p2

    :catch_f
    move-exception p0

    move-object p1, v4

    :goto_18
    new-instance p2, Lcom/netease/mobile/link/n0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p2, v6}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_10
    move-exception p0

    move-object p1, v4

    .line 8
    :goto_19
    :try_start_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 9
    :try_start_9
    new-instance p3, Lcom/netease/mobile/link/n5;

    invoke-direct {p3}, Lcom/netease/mobile/link/n5;-><init>()V

    invoke-virtual {p3}, Lcom/netease/mobile/link/n5;->a()J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1a

    :catch_11
    :try_start_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 10
    :goto_1a
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    sub-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-wide/32 v0, 0x1499700

    cmp-long v2, p2, v0

    if-gez v2, :cond_11

    goto :goto_1b

    :cond_11
    const/4 v6, 0x0

    goto :goto_1b

    :catchall_2
    move-exception p0

    goto :goto_1d

    :catch_12
    nop

    :goto_1b
    if-eqz v6, :cond_12

    const/4 p2, 0x6

    goto :goto_1c

    :cond_12
    const/16 p2, 0x8

    .line 11
    :goto_1c
    :try_start_b
    new-instance p3, Lcom/netease/mobile/link/n0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p3, p2}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    .line 12
    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_1d
    move-object v7, v4

    move-object v4, p1

    :goto_1e
    if-eqz v4, :cond_13

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13

    goto :goto_1f

    :catch_13
    nop

    :cond_13
    :goto_1f
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    throw p0

    .line 13
    :cond_15
    new-instance p0, Lcom/netease/mobile/link/n0$a;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    throw p0

    :cond_16
    new-instance p0, Lcom/netease/mobile/link/n0$a;

    invoke-direct {p0, v1}, Lcom/netease/mobile/link/n0$a;-><init>(I)V

    goto :goto_21

    :goto_20
    throw p0

    :goto_21
    goto :goto_20
.end method
