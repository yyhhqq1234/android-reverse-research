.class public Lcom/netease/mpay/hi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/hi$d;,
        Lcom/netease/mpay/hi$f;,
        Lcom/netease/mpay/hi$e;,
        Lcom/netease/mpay/hi$c;,
        Lcom/netease/mpay/hi$b;,
        Lcom/netease/mpay/hi$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static i:Lcom/netease/mpay/widget/al;

.field private static p:Lcom/netease/mpay/hi;

.field private static q:Ljava/lang/ref/WeakReference;


# instance fields
.field public b:Lcom/netease/mpay/widget/al;

.field public c:Lcom/netease/mpay/widget/al;

.field public d:Lcom/netease/mpay/widget/al;

.field public e:Lcom/netease/mpay/widget/al;

.field public f:Lcom/netease/mpay/widget/al;

.field public g:Lcom/netease/mpay/widget/al;

.field public h:Lcom/netease/mpay/widget/al;

.field public j:Lcom/netease/mpay/widget/al;

.field public k:Lcom/netease/mpay/widget/al;

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field private final o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/hi;->a:Ljava/lang/Boolean;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    sput-object v0, Lcom/netease/mpay/hi;->i:Lcom/netease/mpay/widget/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->b:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->c:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->d:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->e:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->f:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->g:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->h:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->j:Lcom/netease/mpay/widget/al;

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->k:Lcom/netease/mpay/widget/al;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/hi;->l:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hi;->o:Ljava/util/HashMap;

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

.method public static a()Lcom/netease/mpay/hi;
    .locals 2

    sget-object v0, Lcom/netease/mpay/hi;->p:Lcom/netease/mpay/hi;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/hi;->p:Lcom/netease/mpay/hi;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/netease/mpay/hi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/hi;->p:Lcom/netease/mpay/hi;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/hi;

    invoke-direct {v0}, Lcom/netease/mpay/hi;-><init>()V

    :goto_1
    sput-object v0, Lcom/netease/mpay/hi;->p:Lcom/netease/mpay/hi;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/netease/mpay/hi;->p:Lcom/netease/mpay/hi;

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/netease/mpay/hi;->p:Lcom/netease/mpay/hi;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/mpay/b/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    new-instance v3, Lcom/netease/mpay/widget/s;

    invoke-direct {v3, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v1, v2, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v1, :cond_0

    iget v1, v2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v1}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->v:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/netease/mpay/hi;->a(Lcom/netease/mpay/AuthenticationCallback;)V

    :goto_0
    return-void

    :cond_1
    iget v1, v2, Lcom/netease/mpay/e/b/o;->f:I

    if-eq v1, v5, :cond_2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->ao:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/netease/mpay/hi;->a(Lcom/netease/mpay/AuthenticationCallback;)V

    goto :goto_0

    :cond_2
    iget-object v1, p2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/server/response/r;->g:Z

    if-nez v1, :cond_3

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->L:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/netease/mpay/hi;->a(Lcom/netease/mpay/AuthenticationCallback;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/netease/mpay/bj;->c(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v0, p1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Lcom/netease/mpay/widget/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->L:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->j:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/hj;

    invoke-direct {v3, p0, p4}, Lcom/netease/mpay/hj;-><init>(Lcom/netease/mpay/hi;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/hi;->c(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    new-instance v3, Lcom/netease/mpay/hi$d;

    invoke-direct {v3, p0, p3, p4}, Lcom/netease/mpay/hi$d;-><init>(Lcom/netease/mpay/hi;ILcom/netease/mpay/AuthenticationCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$d;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;ZLjava/lang/Integer;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/netease/mpay/e/b/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    if-nez p4, :cond_1

    const/4 v3, 0x4

    if-eqz p3, :cond_0

    iget-object v4, p3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object v4, v6

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netease/mpay/b$a;->n:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/g;

    if-eqz p3, :cond_2

    iget-object v0, p3, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    :goto_2
    invoke-direct {v2, p2, v0, p4, v6}, Lcom/netease/mpay/b/g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZLcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v1, v2, v6, p5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 9

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    iget-object v2, p2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    const/4 v3, 0x0

    iget-boolean v4, p4, Lcom/netease/mpay/b$b;->a:Z

    iget-object v5, p3, Lcom/netease/mpay/hi$a;->a:Lcom/netease/mpay/AuthenticationCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p3, Lcom/netease/mpay/hi$a;->a:Lcom/netease/mpay/AuthenticationCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    instance-of v0, p3, Lcom/netease/mpay/hi$b;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lcom/netease/mpay/hi$b;

    iget-boolean v2, v0, Lcom/netease/mpay/hi$b;->d:Z

    move-object v0, p3

    check-cast v0, Lcom/netease/mpay/hi$b;

    iget-boolean v4, v0, Lcom/netease/mpay/hi$b;->c:Z

    :cond_3
    :goto_1
    sget-object v6, Lcom/netease/mpay/b$a;->b:Lcom/netease/mpay/b$a;

    new-instance v0, Lcom/netease/mpay/b/i;

    iget-object v5, p3, Lcom/netease/mpay/hi$a;->a:Lcom/netease/mpay/AuthenticationCallback;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/i;-><init>(Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v6, v0, p4, p5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    instance-of v0, p3, Lcom/netease/mpay/hi$c;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Lcom/netease/mpay/hi$c;

    iget-boolean v3, v0, Lcom/netease/mpay/hi$c;->c:Z

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$d;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 4

    sget-object v2, Lcom/netease/mpay/b$a;->f:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/d;

    if-eqz p3, :cond_0

    iget v0, p3, Lcom/netease/mpay/hi$d;->a:I

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/netease/mpay/hi$d;->c:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/netease/mpay/hi$d;->c:Lcom/netease/mpay/AuthenticationCallback;

    :goto_1
    invoke-direct {v3, p2, v1, v0}, Lcom/netease/mpay/b/d;-><init>(Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v2, v3, p4, p5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$f;Ljava/lang/String;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/netease/mpay/hi$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/netease/mpay/b$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v8, Lcom/netease/mpay/b$a;->c:Lcom/netease/mpay/b$a;

    new-instance v0, Lcom/netease/mpay/b/ad;

    if-eqz p3, :cond_1

    iget-object v2, p3, Lcom/netease/mpay/hi$f;->b:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_2

    iget-object v1, p3, Lcom/netease/mpay/hi$f;->e:Ljava/lang/String;

    move-object v7, v1

    :goto_1
    if-eqz p3, :cond_3

    iget-boolean v1, p3, Lcom/netease/mpay/hi$f;->a:Z

    if-eqz v1, :cond_3

    move v4, v3

    :goto_2
    if-eqz p3, :cond_4

    iget-object v5, p3, Lcom/netease/mpay/hi$f;->c:Lcom/netease/mpay/AuthenticationCallback;

    :goto_3
    move-object v1, p2

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/ad;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v8, v0, p5, p6}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    :cond_0
    return-void

    :cond_1
    move-object v2, v6

    goto :goto_0

    :cond_2
    move-object v7, v6

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move-object v5, v6

    goto :goto_3
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/mpay/hi$f;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi$f;-><init>(Lcom/netease/mpay/hi;ZLjava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    new-instance v6, Lcom/netease/mpay/b$b;

    invoke-direct {v6, p4}, Lcom/netease/mpay/b$b;-><init>(Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$f;Ljava/lang/String;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    if-nez p5, :cond_0

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/netease/mpay/b$a;->m:Lcom/netease/mpay/b$a;

    new-instance v0, Lcom/netease/mpay/b/h;

    move-object v1, p2

    move v2, p5

    move v3, p4

    move v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/h;-><init>(Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v6, v0, v7, p7}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;ZLcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/netease/mpay/b$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/b$a;->l:Lcom/netease/mpay/b$a;

    invoke-static {p1, v0, p2, p5, p6}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/hi;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/hi;->a(Lcom/netease/mpay/AuthenticationCallback;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/widget/al;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netease/mpay/widget/al;->a()V

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b$a;->o:Lcom/netease/mpay/b$a;

    new-instance v1, Lcom/netease/mpay/b/c;

    invoke-direct {v1, p2, p3, p4}, Lcom/netease/mpay/b/c;-><init>(Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v0, v1, p5, p6}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private c(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V
    .locals 7

    new-instance v2, Lcom/netease/mpay/b/m$c;

    invoke-direct {v2, p2, p3, p4}, Lcom/netease/mpay/b/m$c;-><init>(Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;ZLcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/netease/mpay/cz;->a(Landroid/content/Context;)Lcom/netease/mpay/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/cz;->a()V

    sget-object v0, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/mpay/hi;->b:Lcom/netease/mpay/widget/al;

    invoke-direct {p0, v0}, Lcom/netease/mpay/hi;->a(Lcom/netease/mpay/widget/al;)V

    iget-object v0, p0, Lcom/netease/mpay/hi;->c:Lcom/netease/mpay/widget/al;

    invoke-direct {p0, v0}, Lcom/netease/mpay/hi;->a(Lcom/netease/mpay/widget/al;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;ZLjava/lang/Integer;)V
    .locals 7

    const/4 v3, 0x1

    new-instance v5, Lcom/netease/mpay/b$b;

    invoke-direct {v5, p4}, Lcom/netease/mpay/b$b;-><init>(Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/Integer;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;ZLjava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/16 v3, 0x9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/auth/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/netease/mpay/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/widget/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->au:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netease/mpay/b$a;->j:Lcom/netease/mpay/b$a;

    new-instance v1, Lcom/netease/mpay/b/k;

    invoke-direct {v1, p2, v6}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v0, v1, v6, p4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZZLjava/lang/Integer;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    if-nez p5, :cond_0

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p5, :cond_1

    iget-boolean v0, p0, Lcom/netease/mpay/hi;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/hi;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mpay/b$a;->i:Lcom/netease/mpay/b$a;

    new-instance v1, Lcom/netease/mpay/b/aj;

    iget-object v2, p0, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/hi;->n:Ljava/lang/String;

    invoke-direct {v1, p2, v2, v3, v6}, Lcom/netease/mpay/b/aj;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v0, v1, v6, p6}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netease/mpay/b$a;->J:Lcom/netease/mpay/b$a;

    new-instance v1, Lcom/netease/mpay/b/ai;

    invoke-direct {v1, p2, p4}, Lcom/netease/mpay/b/ai;-><init>(Lcom/netease/mpay/b/a$a;Z)V

    invoke-static {p1, v0, v1, v6, p6}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 6

    new-instance v3, Lcom/netease/mpay/hi$c;

    invoke-direct {v3, p0, p3, p4}, Lcom/netease/mpay/hi$c;-><init>(Lcom/netease/mpay/hi;ZLcom/netease/mpay/AuthenticationCallback;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 8

    new-instance v0, Lcom/netease/mpay/hi$f;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi$f;-><init>(Lcom/netease/mpay/hi;ZLjava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p6

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$f;Ljava/lang/String;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 6

    new-instance v3, Lcom/netease/mpay/hi$b;

    invoke-direct {v3, p0, p4, p5, p6}, Lcom/netease/mpay/hi$b;-><init>(Lcom/netease/mpay/hi;ZZLcom/netease/mpay/AuthenticationCallback;)V

    new-instance v4, Lcom/netease/mpay/b$b;

    invoke-direct {v4, p3}, Lcom/netease/mpay/b$b;-><init>(Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;ZLcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;ZLcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/netease/mpay/b$b;

    invoke-direct {v5, p3}, Lcom/netease/mpay/b$b;-><init>(Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;ZLcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    iget-object v1, p2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/netease/mpay/server/response/u;->a(I)Lcom/netease/mpay/server/response/s;

    move-result-object v1

    iget-boolean v2, v1, Lcom/netease/mpay/server/response/s;->b:Z

    if-nez v2, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/s;

    invoke-direct {v1, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ah:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, v1, Lcom/netease/mpay/server/response/s;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/ah;

    sget-object v4, Lcom/netease/mpay/f/an$a;->v:Lcom/netease/mpay/f/an$a;

    invoke-direct {v3, p2, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v1, v1, Lcom/netease/mpay/server/response/s;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, p4}, Lcom/netease/mpay/b/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/b/ah;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, p5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)Z
    .locals 11

    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v3, p3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_1
    iget v0, p3, Lcom/netease/mpay/e/b/o;->f:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZZLjava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, v3, p4}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3, p4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, v3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZLjava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/hi;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " too frequent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/hi;->o:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/n;->h()Z

    move-result v0

    goto :goto_0
.end method

.method public b()Landroid/app/Activity;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/netease/mpay/hi;->q:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    sget-object v0, Lcom/netease/mpay/hi;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/netease/mpay/hi;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 6

    new-instance v3, Lcom/netease/mpay/hi$d;

    invoke-direct {v3, p0, p3, p4}, Lcom/netease/mpay/hi$d;-><init>(Lcom/netease/mpay/hi;ILcom/netease/mpay/AuthenticationCallback;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/hi$d;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;ZLjava/lang/Integer;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/Integer;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/auth/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/netease/mpay/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/widget/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->at:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netease/mpay/b$a;->k:Lcom/netease/mpay/b$a;

    new-instance v1, Lcom/netease/mpay/b/k;

    invoke-direct {v1, p2, v6}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {p1, v0, v1, v6, p4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public c(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 7

    const/4 v3, 0x0

    new-instance v2, Lcom/netease/mpay/b/m$c;

    invoke-direct {v2, p2, p3, p4}, Lcom/netease/mpay/b/m$c;-><init>(Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;ZLcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
