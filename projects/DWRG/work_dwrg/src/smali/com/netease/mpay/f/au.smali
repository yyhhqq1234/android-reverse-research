.class public abstract Lcom/netease/mpay/f/au;
.super Lcom/netease/mpay/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/au$b;,
        Lcom/netease/mpay/f/au$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/netease/mpay/f/au$a;

.field protected b:Z

.field private j:Lcom/netease/mpay/f/au$b;

.field private k:Lcom/netease/mpay/e/b/o;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-boolean p4, p0, Lcom/netease/mpay/f/au;->b:Z

    iput-object p6, p0, Lcom/netease/mpay/f/au;->a:Lcom/netease/mpay/f/au$a;

    iput-object v0, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    if-eqz p5, :cond_0

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->c()Lcom/netease/mpay/f/a/d;

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/f/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/e/b;Ljava/lang/String;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/o$a;Z)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/e/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/netease/mpay/server/response/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/netease/mpay/e/b/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/netease/mpay/e/b/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iget v1, p4, Lcom/netease/mpay/server/response/m;->c:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/server/response/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p5, :cond_4

    new-instance p5, Lcom/netease/mpay/e/b/o;

    invoke-direct {p5, p4, v2, v2}, Lcom/netease/mpay/e/b/o;-><init>(Lcom/netease/mpay/server/response/m;ZZ)V

    :goto_0
    invoke-virtual {p5, p6}, Lcom/netease/mpay/e/b/o;->a(Lcom/netease/mpay/e/b/o$a;)V

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0, p5, p3, p7}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/i;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/i;-><init>()V

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/i;->a:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->w:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/netease/mpay/e/b/i;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->g()Lcom/netease/mpay/e/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/f;->a(Lcom/netease/mpay/e/b/i;)V

    :cond_0
    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->l:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    invoke-virtual {v1, v0, p3, v3}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v0

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/g;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p4, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/g;->a()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p5, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/netease/mpay/f/au;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    iget-object v0, p5, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/netease/mpay/f/au;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v0, p5, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/netease/mpay/f/au;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v0, p5, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/f/au;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    iget-object v0, p5, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/f/au;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    iget-boolean v0, p4, Lcom/netease/mpay/server/response/m;->g:Z

    iput-boolean v0, p5, Lcom/netease/mpay/e/b/o;->j:Z

    iget v0, p4, Lcom/netease/mpay/server/response/m;->h:I

    iput v0, p5, Lcom/netease/mpay/e/b/o;->k:I

    iget v0, p4, Lcom/netease/mpay/server/response/m;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p4, Lcom/netease/mpay/server/response/m;->o:I

    :goto_1
    iput v0, p5, Lcom/netease/mpay/e/b/o;->g:I

    invoke-virtual {p5, v2}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/netease/mpay/server/response/m;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/netease/mpay/f/au;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/netease/mpay/e/b/o;->a(Ljava/lang/String;)V

    iput-boolean v2, p5, Lcom/netease/mpay/e/b/o;->m:Z

    iput-boolean v2, p5, Lcom/netease/mpay/e/b/o;->l:Z

    goto/16 :goto_0

    :cond_5
    iget v0, p5, Lcom/netease/mpay/e/b/o;->g:I

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/mpay/f/au;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/f/au;)Lcom/netease/mpay/f/au$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/f/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/f/au;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/f/au;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/f/au;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/f/au;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/m;
    .locals 5

    new-instance v0, Lcom/netease/mpay/f/au$b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/f/au$b;-><init>(Lcom/netease/mpay/f/au;Lcom/netease/mpay/f/a/d$d;)V

    iput-object v0, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v0, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v0, v0, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    invoke-virtual {p0, v1}, Lcom/netease/mpay/f/au;->a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netease/mpay/f/au;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v2, v2, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v2, v2, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v3, v3, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v4, v4, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v2, v2, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/g;->a()V

    :cond_0
    iget-object v2, p0, Lcom/netease/mpay/f/au;->j:Lcom/netease/mpay/f/au$b;

    iget-object v2, v2, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, v1, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/q;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    :cond_2
    return-object v1
.end method

.method protected abstract a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;
.end method

.method protected final a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/f/au;->a:Lcom/netease/mpay/f/au$a;

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/f/au;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/au$a;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/netease/mpay/f/a/a$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/f/a/a$b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/f/au;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/au;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/f/l;

    new-instance v1, Lcom/netease/mpay/f/av;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/f/av;-><init>(Lcom/netease/mpay/f/au;Lcom/netease/mpay/f/a/a$b;)V

    invoke-direct {v0, v1}, Lcom/netease/mpay/f/l;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/f/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/au$a;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/f/ax;

    iget-object v1, p0, Lcom/netease/mpay/f/au;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/au;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/au;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/au;->k:Lcom/netease/mpay/e/b/o;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/ax;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Z)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ax;->h()V

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/aw;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/f/aw;-><init>(Lcom/netease/mpay/f/au;Lcom/netease/mpay/f/au$a;)V

    invoke-super {p0, p1, v0}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V
    .locals 8
    .param p1    # Lcom/netease/mpay/f/au$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/server/response/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/netease/mpay/e/b/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/netease/mpay/f/au;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/au;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    iget-object v3, p0, Lcom/netease/mpay/f/au;->e:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/f/au;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/e/b;Ljava/lang/String;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/o$a;Z)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/o$a;Z)V
    .locals 8
    .param p1    # Lcom/netease/mpay/f/au$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/netease/mpay/server/response/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/netease/mpay/e/b/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/netease/mpay/e/b/o$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/netease/mpay/f/au;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/au;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    iget-object v3, p0, Lcom/netease/mpay/f/au;->e:Ljava/lang/String;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/f/au;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/e/b;Ljava/lang/String;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/o$a;Z)V

    return-void
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/au;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/m;

    move-result-object v0

    return-object v0
.end method
