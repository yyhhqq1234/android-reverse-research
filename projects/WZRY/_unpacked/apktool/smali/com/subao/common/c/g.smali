.class public abstract Lcom/subao/common/c/g;
.super Ljava/lang/Object;
.source "VaultRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/subao/common/e/al;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;)V
    .locals 0
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

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/subao/common/c/g;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/subao/common/c/g;->b:Lcom/subao/common/e/al;

    .line 45
    iput-object p3, p0, Lcom/subao/common/c/g;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/subao/common/c/g;->h()Ljava/lang/Iterable;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/subao/common/c/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/c/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/subao/common/j/a$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract a(Lcom/subao/common/j/a$c;)V
    .param p1    # Lcom/subao/common/j/a$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method protected a_()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected b()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract c()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected f()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/subao/common/c/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v0, v0, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected h()Ljava/lang/Iterable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Ljava/net/URL;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/subao/common/c/g;->b:Lcom/subao/common/e/al;

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/subao/common/c/g;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http"

    .line 156
    :goto_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "api.xunyou.mobi"

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/subao/common/c/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    .line 158
    :goto_1
    return-object v0

    .line 155
    :cond_0
    const-string v0, "https"

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/subao/common/c/g;->b:Lcom/subao/common/e/al;

    iget-object v1, v1, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/subao/common/c/g;->b:Lcom/subao/common/e/al;

    iget-object v2, v2, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/c/g;->b:Lcom/subao/common/e/al;

    iget v3, v3, Lcom/subao/common/e/al;->c:I

    invoke-virtual {p0}, Lcom/subao/common/c/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/subao/common/c/g;->a()Lcom/subao/common/j/a$b;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/subao/common/j/a;

    const/16 v2, 0x3a98

    const/16 v3, 0x3a98

    invoke-direct {v1, v2, v3}, Lcom/subao/common/j/a;-><init>(II)V

    invoke-virtual {p0}, Lcom/subao/common/c/g;->i()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0}, Lcom/subao/common/c/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 58
    invoke-direct {p0, v1}, Lcom/subao/common/c/g;->a(Ljava/net/HttpURLConnection;)V

    .line 60
    sget-object v2, Lcom/subao/common/c/g$1;->a:[I

    invoke-virtual {v0}, Lcom/subao/common/j/a$b;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 66
    invoke-static {v1}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;

    move-result-object v0

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Lcom/subao/common/c/g;->a(Lcom/subao/common/j/a$c;)V

    .line 74
    :goto_1
    return-void

    .line 63
    :pswitch_0
    invoke-virtual {p0}, Lcom/subao/common/c/g;->b()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subao/common/c/g;->a(Lcom/subao/common/j/a$c;)V

    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    goto :goto_2

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
