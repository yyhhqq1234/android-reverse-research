.class abstract Lcom/subao/common/i/h$a$a;
.super Ljava/lang/Object;
.source "MessageSenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field final synthetic b:Lcom/subao/common/i/h$a;

.field private c:[B

.field private d:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/subao/common/i/h$a$a;->b:Lcom/subao/common/i/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/subao/common/i/h$a$a;->a:Ljava/lang/String;

    .line 345
    return-void
.end method

.method private f()Ljava/net/URL;
    .locals 5

    .prologue
    .line 389
    iget-object v0, p0, Lcom/subao/common/i/h$a$a;->d:Ljava/net/URL;

    if-nez v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/subao/common/i/h$a$a;->b:Lcom/subao/common/i/h$a;

    iget-object v2, v2, Lcom/subao/common/i/h$a;->b:Lcom/subao/common/e/al;

    iget-object v2, v2, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/i/h$a$a;->b:Lcom/subao/common/i/h$a;

    iget-object v3, v3, Lcom/subao/common/i/h$a;->b:Lcom/subao/common/e/al;

    iget-object v3, v3, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/i/h$a$a;->b:Lcom/subao/common/i/h$a;

    iget-object v4, v4, Lcom/subao/common/i/h$a;->b:Lcom/subao/common/e/al;

    iget v4, v4, Lcom/subao/common/e/al;->c:I

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/subao/common/i/h$a$a;->d:Ljava/net/URL;

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/subao/common/i/h$a$a;->d:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/subao/common/j/a$b;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    return-object v0
.end method

.method final a(J)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/subao/common/i/h$a$a;->b:Lcom/subao/common/i/h$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/subao/common/i/h$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 402
    return-void
.end method

.method protected abstract a(Lcom/subao/common/j/a$c;)V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()[B
.end method

.method d()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract e()V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$a;->a()Lcom/subao/common/j/a$b;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null HTTP method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/subao/common/i/h$a$a;->f()Ljava/net/URL;

    move-result-object v1

    .line 356
    new-instance v2, Lcom/subao/common/j/a;

    iget-object v3, p0, Lcom/subao/common/i/h$a$a;->b:Lcom/subao/common/i/h$a;

    invoke-static {v3}, Lcom/subao/common/i/h$a;->a(Lcom/subao/common/i/h$a;)I

    move-result v3

    iget-object v4, p0, Lcom/subao/common/i/h$a$a;->b:Lcom/subao/common/i/h$a;

    invoke-static {v4}, Lcom/subao/common/i/h$a;->a(Lcom/subao/common/i/h$a;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/subao/common/j/a;-><init>(II)V

    .line 357
    sget-object v3, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v3, v3, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 359
    :try_start_1
    sget-object v2, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v2, v2, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 361
    sget-object v2, Lcom/subao/common/i/h$1;->b:[I

    invoke-virtual {v0}, Lcom/subao/common/j/a$b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 368
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/subao/common/i/h$a$a;->c:[B

    if-nez v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$a;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/i/h$a$a;->c:[B

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/subao/common/i/h$a$a;->c:[B

    .line 376
    :goto_0
    invoke-static {v1, v0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;

    move-result-object v0

    .line 379
    :goto_1
    invoke-virtual {p0, v0}, Lcom/subao/common/i/h$a$a;->a(Lcom/subao/common/j/a$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 386
    :goto_2
    return-void

    .line 364
    :pswitch_0
    :try_start_3
    invoke-static {v1}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;

    move-result-object v0

    goto :goto_1

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$a;->c()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    :goto_3
    invoke-virtual {p0}, Lcom/subao/common/i/h$a$a;->e()V

    goto :goto_2

    .line 383
    :catch_1
    move-exception v0

    goto :goto_3

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
