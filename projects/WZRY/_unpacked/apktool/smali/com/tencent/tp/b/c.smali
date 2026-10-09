.class public Lcom/tencent/tp/b/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/b/c$a;
    }
.end annotation


# static fields
.field private static final g:I = 0x0

.field private static final h:I = -0x1

.field private static final i:I = -0x2

.field private static final j:I = -0x63


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tp/b/c$a;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private k:Lcom/tencent/tp/c/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tp/b/c$a;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/tencent/tp/b/d;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/d;-><init>(Lcom/tencent/tp/b/c;)V

    iput-object v0, p0, Lcom/tencent/tp/b/c;->k:Lcom/tencent/tp/c/f;

    iput-object p1, p0, Lcom/tencent/tp/b/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    iput-object p3, p0, Lcom/tencent/tp/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "http://dldir1.qq.com/gamesafe/mobile/app/android/base.ini"

    iget-object v2, p0, Lcom/tencent/tp/b/c;->a:Landroid/content/Context;

    const-string v3, "base.ini"

    invoke-static {v2, v3}, Lcom/tencent/tp/c/i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/tp/c/h;->a(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/c/f;)I

    new-instance v1, Lcom/tencent/tp/c/g;

    iget-object v3, p0, Lcom/tencent/tp/b/c;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/tencent/tp/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/tencent/tp/c/i;->e(Ljava/lang/String;)V

    const-string v2, "info"

    const-string v3, "size"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tp/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/tp/b/c;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/tp/b/c;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/tp/b/c;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tp/b/c;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/tp/b/c;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/tp/b/c;->f:I

    return p1
.end method

.method private b()V
    .locals 5

    const/4 v4, -0x2

    invoke-direct {p0}, Lcom/tencent/tp/b/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tp/b/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tp/c/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/tencent/tp/b/c;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tencent/tp/c/i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v3, p0, Lcom/tencent/tp/b/c;->k:Lcom/tencent/tp/c/f;

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/tp/c/h;->a(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/c/f;)I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tp/b/c;->d:I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    iput v4, p0, Lcom/tencent/tp/b/c;->d:I

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    iput v4, p0, Lcom/tencent/tp/b/c;->d:I

    goto :goto_0

    :catch_3
    move-exception v0

    iput v4, p0, Lcom/tencent/tp/b/c;->d:I

    goto :goto_0

    :catch_4
    move-exception v0

    iput v4, p0, Lcom/tencent/tp/b/c;->d:I

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/tp/b/c;->d:I

    invoke-direct {p0}, Lcom/tencent/tp/b/c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    const/16 v0, -0x63

    iput v0, p0, Lcom/tencent/tp/b/c;->d:I

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/tp/b/c;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    invoke-interface {v0}, Lcom/tencent/tp/b/c$a;->a()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/tp/b/c;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    invoke-interface {v0}, Lcom/tencent/tp/b/c$a;->c()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/tp/b/c;->d:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    invoke-interface {v0}, Lcom/tencent/tp/b/c$a;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    iget v1, p0, Lcom/tencent/tp/b/c;->d:I

    invoke-interface {v0, v1}, Lcom/tencent/tp/b/c$a;->a(I)V

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/b/c;->b:Lcom/tencent/tp/b/c$a;

    iget v1, p0, Lcom/tencent/tp/b/c;->e:I

    iget v2, p0, Lcom/tencent/tp/b/c;->f:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/tp/b/c$a;->a(II)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/b/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/b/c;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/b/c;->b([Ljava/lang/Void;)V

    return-void
.end method
