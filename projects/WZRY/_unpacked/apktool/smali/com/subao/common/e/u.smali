.class public abstract Lcom/subao/common/e/u;
.super Ljava/lang/Object;
.source "HRDataTrans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/u$c;,
        Lcom/subao/common/e/u$b;,
        Lcom/subao/common/e/u$d;,
        Lcom/subao/common/e/u$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/j/a$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final b:Lcom/subao/common/e/u$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final c:Lcom/subao/common/e/u$d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/j/a$b;[B)V
    .locals 0
    .param p1    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/u$d;
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

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/subao/common/e/u;->b:Lcom/subao/common/e/u$a;

    .line 44
    iput-object p2, p0, Lcom/subao/common/e/u;->c:Lcom/subao/common/e/u$d;

    .line 45
    iput-object p3, p0, Lcom/subao/common/e/u;->a:Lcom/subao/common/j/a$b;

    .line 46
    iput-object p4, p0, Lcom/subao/common/e/u;->d:[B

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/subao/common/e/u;Ljava/net/URL;)Lcom/subao/common/e/u$b;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/subao/common/e/u;->a(Ljava/net/URL;)Lcom/subao/common/e/u$b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URL;)Lcom/subao/common/e/u$b;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    .line 75
    :try_start_0
    new-instance v0, Lcom/subao/common/j/a;

    const/16 v1, 0x3a98

    const/16 v3, 0x3a98

    invoke-direct {v0, v1, v3}, Lcom/subao/common/j/a;-><init>(II)V

    iget-object v1, p0, Lcom/subao/common/e/u;->a:Lcom/subao/common/j/a$b;

    sget-object v3, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v3, v3, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 76
    :try_start_1
    invoke-virtual {p0}, Lcom/subao/common/e/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/e/u;->c:Lcom/subao/common/e/u$d;

    iget-object v0, v0, Lcom/subao/common/e/u$d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subao/common/e/u;->c:Lcom/subao/common/e/u$d;

    iget-object v4, v4, Lcom/subao/common/e/u$d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    const-string/jumbo v0, "userId"

    iget-object v3, p0, Lcom/subao/common/e/u;->c:Lcom/subao/common/e/u$d;

    iget-object v3, v3, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/subao/common/e/u;->a(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "accessToken"

    iget-object v3, p0, Lcom/subao/common/e/u;->c:Lcom/subao/common/e/u$d;

    iget-object v3, v3, Lcom/subao/common/e/u$d;->c:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/subao/common/e/u;->a(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/subao/common/e/u$1;->a:[I

    iget-object v3, p0, Lcom/subao/common/e/u;->a:Lcom/subao/common/j/a$b;

    invoke-virtual {v3}, Lcom/subao/common/j/a$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 87
    iget-object v0, p0, Lcom/subao/common/e/u;->d:[B

    invoke-static {v1, v0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 93
    :goto_0
    new-instance v2, Lcom/subao/common/e/u$b;

    invoke-direct {v2, v1, v0}, Lcom/subao/common/e/u$b;-><init>(Ljava/net/HttpURLConnection;Lcom/subao/common/j/a$c;)V

    return-object v2

    .line 84
    :pswitch_0
    :try_start_2
    invoke-static {v1}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 91
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/subao/common/e/u;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/subao/common/e/u;->e()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/URLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method private e()Ljava/net/URL;
    .locals 5

    .prologue
    .line 97
    new-instance v0, Ljava/net/URL;

    .line 98
    invoke-virtual {p0}, Lcom/subao/common/e/u;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/e/u;->b:Lcom/subao/common/e/u$a;

    iget-object v2, v2, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    iget-object v2, v2, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/e/u;->b:Lcom/subao/common/e/u$a;

    iget-object v3, v3, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    iget v3, v3, Lcom/subao/common/e/al;->c:I

    .line 101
    invoke-virtual {p0}, Lcom/subao/common/e/u;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Lcom/subao/common/e/u$b;)V
    .locals 0
    .param p1    # Lcom/subao/common/e/u$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    return-void
.end method

.method public a(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    new-instance v0, Lcom/subao/common/e/u$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/subao/common/e/u$c;-><init>(Lcom/subao/common/e/u;Lcom/subao/common/e/u$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/subao/common/e/u;->b:Lcom/subao/common/e/u$a;

    iget-object v0, v0, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    iget-object v0, v0, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
