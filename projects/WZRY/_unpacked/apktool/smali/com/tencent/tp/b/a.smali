.class public Lcom/tencent/tp/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tp/b/c$a;


# instance fields
.field private a:Lcom/tencent/tp/a/z;

.field private b:Lcom/tencent/tp/b/c;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tp/a/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tp/b/b;

    invoke-direct {v0, p0}, Lcom/tencent/tp/b/b;-><init>(Lcom/tencent/tp/b/a;)V

    iput-object v0, p0, Lcom/tencent/tp/b/a;->e:Lcom/tencent/tp/a/o$a;

    iput-object p1, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 10

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-string v0, "%.2fMB"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    invoke-virtual {v0}, Lcom/tencent/tp/a/z;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    :cond_0
    :try_start_0
    const-string v0, "http://dldir1.qq.com/gamesafe/mobile/app/android/tpsafe.apk"

    invoke-static {v0}, Lcom/tencent/tp/c/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/tp/c/i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/c/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/tencent/tp/c/a;

    iget-object v2, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/tp/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/tencent/tp/c/a;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/tencent/tp/m;->b()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "not exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/q;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    invoke-virtual {v0}, Lcom/tencent/tp/a/z;->a()V

    iput-object v5, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    :cond_0
    const-string v0, "rootkit:dl_err_unknown"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "\u9519\u8bef"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u53d1\u751f\u672a\u77e5\u9519\u8bef\uff0c\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u786e\u5b9a"

    new-instance v0, Lcom/tencent/tp/a/o;

    iget-object v1, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/tp/b/a;->e:Lcom/tencent/tp/a/o$a;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->n()V

    return-void
.end method

.method public a(II)V
    .locals 4

    const/4 v3, 0x0

    if-lez p2, :cond_1

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    iget-object v1, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tp/a/z;

    iget-object v2, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/tp/a/z;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    iget-object v1, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    iget-object v2, p0, Lcom/tencent/tp/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v3}, Lcom/tencent/tp/a/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    invoke-virtual {v1}, Lcom/tencent/tp/a/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    invoke-virtual {v1, v0}, Lcom/tencent/tp/a/z;->a(I)V

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    invoke-direct {p0, p1}, Lcom/tencent/tp/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tp/a/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/tencent/tp/b/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tp/a/z;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tencent/tp/b/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/tencent/tp/a/z;

    iget-object v1, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tp/a/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    iget-object v1, p0, Lcom/tencent/tp/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/tencent/tp/a/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    new-instance v0, Lcom/tencent/tp/b/c;

    iget-object v1, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    const-string v2, "http://dldir1.qq.com/gamesafe/mobile/app/android/tpsafe.apk"

    invoke-direct {v0, v1, p0, v2}, Lcom/tencent/tp/b/c;-><init>(Landroid/content/Context;Lcom/tencent/tp/b/c$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tp/b/a;->b:Lcom/tencent/tp/b/c;

    iget-object v0, p0, Lcom/tencent/tp/b/a;->b:Lcom/tencent/tp/b/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tencent/tp/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    invoke-virtual {v0}, Lcom/tencent/tp/a/z;->a()V

    iput-object v5, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    :cond_0
    const-string v0, "rootkit:dl_err_network"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "\u9519\u8bef"

    const-string/jumbo v3, "\u7cfb\u7edf\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u94fe\u63a5\u662f\u5426\u6b63\u5e38\u3002"

    const-string/jumbo v4, "\u786e\u5b9a"

    new-instance v0, Lcom/tencent/tp/a/o;

    iget-object v1, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/tp/b/a;->e:Lcom/tencent/tp/a/o$a;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->n()V

    return-void
.end method

.method public c()V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    invoke-virtual {v0}, Lcom/tencent/tp/a/z;->a()V

    iput-object v5, p0, Lcom/tencent/tp/b/a;->a:Lcom/tencent/tp/a/z;

    :cond_0
    const-string v0, "rootkit:dl_err_io"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "\u9519\u8bef"

    const-string/jumbo v3, "\u6587\u4ef6\u8bfb\u5199\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u624b\u673a\u5b58\u50a8\u7a7a\u95f4\u662f\u5426\u5df2\u6ee1\u3002"

    const-string/jumbo v4, "\u786e\u5b9a"

    new-instance v0, Lcom/tencent/tp/a/o;

    iget-object v1, p0, Lcom/tencent/tp/b/a;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/tp/b/a;->e:Lcom/tencent/tp/a/o$a;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V

    invoke-virtual {v0}, Lcom/tencent/tp/a/o;->n()V

    return-void
.end method
