.class final Lcom/subao/common/j/c$a;
.super Landroid/os/AsyncTask;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/subao/common/j/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/subao/common/j/a$b;

.field private final c:[B

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/j/m;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/subao/common/j/n;


# direct methods
.method public constructor <init>(Lcom/subao/common/j/n;Ljava/lang/String;Lcom/subao/common/j/a$b;[BLjava/util/List;)V
    .locals 0
    .param p1    # Lcom/subao/common/j/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/subao/common/j/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/j/n;",
            "Ljava/lang/String;",
            "Lcom/subao/common/j/a$b;",
            "[B",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/j/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/subao/common/j/c$a;->e:Lcom/subao/common/j/n;

    .line 72
    iput-object p2, p0, Lcom/subao/common/j/c$a;->a:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/subao/common/j/c$a;->b:Lcom/subao/common/j/a$b;

    .line 74
    iput-object p4, p0, Lcom/subao/common/j/c$a;->c:[B

    .line 75
    iput-object p5, p0, Lcom/subao/common/j/c$a;->d:Ljava/util/List;

    .line 76
    return-void
.end method

.method static synthetic a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;Lcom/subao/common/j/a$b;[B)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lcom/subao/common/j/c$a;->b(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;Lcom/subao/common/j/a$b;[B)V

    return-void
.end method

.method private static b(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;Lcom/subao/common/j/a$b;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/j/m;",
            ">;",
            "Lcom/subao/common/j/n;",
            "Ljava/lang/String;",
            "Lcom/subao/common/j/a$b;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/subao/common/j/c$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/j/c$a;-><init>(Lcom/subao/common/j/n;Ljava/lang/String;Lcom/subao/common/j/a$b;[BLjava/util/List;)V

    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/j/c$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method


# virtual methods
.method a()Lcom/subao/common/j/a$c;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 115
    .line 117
    :try_start_0
    new-instance v0, Lcom/subao/common/j/a;

    const/16 v2, 0x3a98

    const/16 v3, 0x3a98

    invoke-direct {v0, v2, v3}, Lcom/subao/common/j/a;-><init>(II)V

    iget-object v2, p0, Lcom/subao/common/j/c$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/subao/common/j/a;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/j/c$a;->b:Lcom/subao/common/j/a$b;

    sget-object v4, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v4, v4, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v2

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/subao/common/j/c$a;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/subao/common/j/c$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/j/m;

    .line 120
    iget-object v4, v0, Lcom/subao/common/j/m;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/subao/common/j/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 138
    :goto_1
    :try_start_2
    new-instance v0, Lcom/subao/common/j/g;

    invoke-direct {v0}, Lcom/subao/common/j/g;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v0

    .line 123
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/subao/common/j/c$a;->c:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/subao/common/j/c$a;->c:[B

    array-length v0, v0

    if-lez v0, :cond_2

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 125
    iget-object v0, p0, Lcom/subao/common/j/c$a;->c:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 128
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lcom/subao/common/j/c$a;->c:[B

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    :try_start_5
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 135
    :cond_2
    invoke-static {v2}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 140
    if-eqz v2, :cond_3

    .line 141
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v0

    .line 132
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 140
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 136
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected varargs a([Ljava/lang/Void;)Lcom/subao/common/j/a$c;
    .locals 1

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/subao/common/j/c$a;->a()Lcom/subao/common/j/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/subao/common/j/a$c;)V
    .locals 1

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/subao/common/j/c$a;->e:Lcom/subao/common/j/n;

    invoke-virtual {v0, p1}, Lcom/subao/common/j/n;->a(Lcom/subao/common/j/a$c;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/subao/common/j/c$a;->e:Lcom/subao/common/j/n;

    invoke-virtual {v0}, Lcom/subao/common/j/n;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/subao/common/j/c$a;->a([Ljava/lang/Void;)Lcom/subao/common/j/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/subao/common/j/a$c;

    invoke-virtual {p0, p1}, Lcom/subao/common/j/c$a;->a(Lcom/subao/common/j/a$c;)V

    return-void
.end method
