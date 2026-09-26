.class public Lcom/netease/mpay/f/a/d$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/e/b;

.field protected b:Lcom/netease/mpay/e/b/o;

.field final synthetic c:Lcom/netease/mpay/f/a/d;

.field private d:Lcom/netease/mpay/e/b/f;

.field private final e:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/netease/mpay/f/a/d;)V
    .locals 3

    iput-object p1, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/a/d$d;->e:Ljava/lang/Boolean;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p1, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    iget-object v2, p1, Lcom/netease/mpay/f/a/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/f/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/a/d$d;->b:Lcom/netease/mpay/e/b/o;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mpay/e/b/f;
    .locals 3

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$d;->e:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/server/a$b;

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a$b;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    return-object v0
.end method

.method public a(Lcom/netease/mpay/e/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/f/a/d$d;->b:Lcom/netease/mpay/e/b/o;

    return-void
.end method

.method public b()Lcom/netease/mpay/e/b/f;
    .locals 7

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$d;->e:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v2, v2, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v0, v3, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/netease/mpay/e/b/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v4, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v4, v4, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v5, v5, Lcom/netease/mpay/f/a/d;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v6, v6, Lcom/netease/mpay/f/a/d;->e:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/netease/mpay/server/a/j;

    iget-object v5, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v5, v5, Lcom/netease/mpay/f/a/d;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v2}, Lcom/netease/mpay/server/a/j;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/f;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/f;

    iget-object v4, v0, Lcom/netease/mpay/server/response/f;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/server/response/f;->c:[B

    iput-object v4, v3, Lcom/netease/mpay/e/b/f;->i:[B

    iget-object v0, v0, Lcom/netease/mpay/server/response/f;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/netease/mpay/e/b/f;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mpay/e/c/c;->a(Lcom/netease/mpay/e/b/f;)V

    :cond_1
    iput-object v3, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    iget-object v3, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v3, v3, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/e/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v3, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v3, v3, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v4, v4, Lcom/netease/mpay/f/a/d;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/a/d$d;->c:Lcom/netease/mpay/f/a/d;

    iget-object v5, v5, Lcom/netease/mpay/f/a/d;->e:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/netease/mpay/server/a/l;

    iget-object v4, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    iget-object v4, v4, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    invoke-direct {v3, v4, v5, v2}, Lcom/netease/mpay/server/a/l;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/f;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/g;

    iget-object v2, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    iget-wide v3, v0, Lcom/netease/mpay/server/response/g;->a:J

    iput-wide v3, v2, Lcom/netease/mpay/e/b/f;->o:J

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/c;->a(Lcom/netease/mpay/e/b/f;)V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->d:Lcom/netease/mpay/e/b/f;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/netease/mpay/e/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/f/a/d$d;->b:Lcom/netease/mpay/e/b/o;

    return-void
.end method

.method public c()Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$d;->b:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method
