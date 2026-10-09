.class public Lcom/subao/common/e/h;
.super Landroid/os/AsyncTask;
.source "BeaconCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/subao/common/e/h$a;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/subao/common/e/al;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/subao/common/e/h;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/subao/common/e/h;->b:Lcom/subao/common/e/al;

    .line 25
    iput-object p3, p0, Lcom/subao/common/e/h;->c:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/e/h$a;)V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lcom/subao/common/e/al;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget v3, p1, Lcom/subao/common/e/al;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/al;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    new-instance v1, Lcom/subao/common/e/h;

    invoke-direct {v1, p0, v0, p2}, Lcom/subao/common/e/h;-><init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/subao/common/e/h$a;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/subao/common/e/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/subao/common/e/h$a;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/16 v2, 0x3a98

    const/4 v1, 0x0

    .line 44
    .line 45
    new-instance v0, Lcom/subao/common/j/a;

    invoke-direct {v0, v2, v2}, Lcom/subao/common/j/a;-><init>(II)V

    .line 47
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/subao/common/e/h;->b:Lcom/subao/common/e/al;

    iget-object v3, v3, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/e/h;->b:Lcom/subao/common/e/al;

    iget-object v4, v4, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/subao/common/e/h;->b:Lcom/subao/common/e/al;

    iget v5, v5, Lcom/subao/common/e/al;->c:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/api/v1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/subao/common/e/h;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/counters/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/subao/common/e/h;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    sget-object v3, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    sget-object v4, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v4, v4, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 52
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;

    move-result-object v0

    .line 53
    iget v0, v0, Lcom/subao/common/j/a$c;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 61
    :goto_0
    aget-object v1, p1, v1

    invoke-interface {v1, v0}, Lcom/subao/common/e/h$a;->a(Z)V

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 60
    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Lcom/subao/common/e/h$a;

    invoke-virtual {p0, p1}, Lcom/subao/common/e/h;->a([Lcom/subao/common/e/h$a;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
