.class public Lcom/netease/mpay/dp;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/dp$b;,
        Lcom/netease/mpay/dp$a;,
        Lcom/netease/mpay/dp$c;,
        Lcom/netease/mpay/dp$d;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/i;

.field private e:Lcom/netease/mpay/widget/s;

.field private f:Lcom/netease/mpay/e/b;

.field private g:Lcom/netease/mpay/e/b/q;

.field private h:Lcom/netease/mpay/e/b/o;

.field private i:Lcom/netease/mpay/e/b/o;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/PopupWindow;

.field private p:Landroid/widget/ListView;

.field private q:Landroid/widget/GridView;

.field private r:Landroid/widget/ImageView;

.field private s:I

.field private t:Z

.field private u:Lcom/netease/mpay/server/response/u;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput v0, p0, Lcom/netease/mpay/dp;->s:I

    iput-boolean v0, p0, Lcom/netease/mpay/dp;->t:Z

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

.method private A()V
    .locals 7

    new-instance v6, Lcom/netease/mpay/ea;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ea;-><init>(Lcom/netease/mpay/dp;)V

    new-instance v0, Lcom/netease/mpay/f/bm;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v3}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bm;->h()V

    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/dp;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_1
    new-instance v0, Lcom/netease/mpay/b/au;

    invoke-direct {v0}, Lcom/netease/mpay/b/au;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/au;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private C()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-boolean v2, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-boolean v2, v2, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v3}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/dp;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/dp;->s:I

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/dp;I)I
    .locals 0

    iput p1, p0, Lcom/netease/mpay/dp;->s:I

    return p1
.end method

.method private a(Lcom/netease/mpay/b/ao;Z)V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mpay/b/ao;->h:Ljava/lang/String;

    iget v4, p1, Lcom/netease/mpay/b/ao;->f:I

    iget-object v5, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v5}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p1, Lcom/netease/mpay/b/ao;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/b/ao;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    :cond_2
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/dp;Lcom/netease/mpay/b/ao;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/b/ao;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/e/b/o;I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/dp;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/dp;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/dp;ZZLcom/netease/mpay/e/b/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/dp;->a(ZZLcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/e/b/o;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iput-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    iget-object v1, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dp;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/server/response/r;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/e/b/o;I)V
    .locals 6

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_0
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz p1, :cond_1

    iget-object v6, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_1
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void

    :cond_0
    move-object v4, v7

    goto :goto_0

    :cond_1
    move-object v6, v7

    goto :goto_1
.end method

.method private a(Lcom/netease/mpay/server/response/s$a;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/dp;->q:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->clearDisappearingChildren()V

    iget-object v0, p0, Lcom/netease/mpay/dp;->q:Landroid/widget/GridView;

    new-instance v1, Lcom/netease/mpay/dp$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/dp$a;-><init>(Lcom/netease/mpay/dp;Lcom/netease/mpay/server/response/s$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v0, p0, Lcom/netease/mpay/dp;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->q:Landroid/widget/GridView;

    iget-object v1, p1, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dp;->q:Landroid/widget/GridView;

    iget-object v1, p1, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp;->e:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(ZZLcom/netease/mpay/e/b/o;)V
    .locals 7

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    if-eqz p3, :cond_0

    iget-object v5, p3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZLjava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/dp;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->u()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/netease/mpay/e/b/o;)V
    .locals 4

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    return-void
.end method

.method private b(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v4, Lcom/netease/mpay/b/m$f;

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v0}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v4, v5, v0, p2, v1}, Lcom/netease/mpay/b/m$f;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/dp;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->v()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/dp;->c(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method private c(Lcom/netease/mpay/e/b/o;)V
    .locals 7

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZZLjava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/netease/mpay/dp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/dp;->d(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method private d(Lcom/netease/mpay/e/b/o;)V
    .locals 5

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v0}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/netease/mpay/dp;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->B()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/dp;->e(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method private e(Lcom/netease/mpay/e/b/o;)V
    .locals 5

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v0}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/netease/mpay/dp;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/q;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/dp;)Lcom/netease/mpay/b/i;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/dp;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->w()V

    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/dp;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->z()V

    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method static synthetic l(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic m(Lcom/netease/mpay/dp;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->y()V

    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/dp;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->x()V

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/dp;->t:Z

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->B:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aN:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/dp;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->be:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/dp;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aE:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/dp;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aF:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/dp;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bf:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/mpay/dp;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aD:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/netease/mpay/dp;->q:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/dq;

    invoke-direct {v1, p0}, Lcom/netease/mpay/dq;-><init>(Lcom/netease/mpay/dp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ch:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/ds;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ds;-><init>(Lcom/netease/mpay/dp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/dt;

    invoke-direct {v1, p0}, Lcom/netease/mpay/dt;-><init>(Lcom/netease/mpay/dp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/dp;->e:Lcom/netease/mpay/widget/s;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private t()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/mpay/dp;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->b()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-boolean v0, v0, Lcom/netease/mpay/b/i;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/dp;->u()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/dp;->v()V

    goto :goto_0
.end method

.method private u()V
    .locals 9

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    iget-object v5, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v6, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v6}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/netease/mpay/server/response/u;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    invoke-virtual {v0, v5}, Lcom/netease/mpay/server/response/u;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dp;->e:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ag:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/du;

    invoke-direct {v3, p0}, Lcom/netease/mpay/du;-><init>(Lcom/netease/mpay/dp;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    invoke-virtual {v0, v5, v3}, Lcom/netease/mpay/server/response/u;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v5, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v7, v5, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/netease/mpay/dp;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/dp;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    iget v0, p0, Lcom/netease/mpay/dp;->s:I

    if-gtz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/server/response/s$a;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private v()V
    .locals 7

    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    iget v0, p0, Lcom/netease/mpay/dp;->s:I

    if-gtz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->bP:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/dp;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/mpay/dp;->l:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/netease/mpay/dp$d;

    invoke-direct {v3, p0, v5}, Lcom/netease/mpay/dp$d;-><init>(Lcom/netease/mpay/dp;Lcom/netease/mpay/dq;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->b()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v3, v3, Lcom/netease/mpay/e/b/q;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    invoke-virtual {v0, v3, v4}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/q;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/e/b/o;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/netease/mpay/dp$c;

    invoke-direct {v3, p0, v5}, Lcom/netease/mpay/dp$c;-><init>(Lcom/netease/mpay/dp;Lcom/netease/mpay/dq;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->ch:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    iget-object v4, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    iget-object v5, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v6, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v6}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/netease/mpay/server/response/u;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/mpay/server/response/u;->a(Ljava/util/ArrayList;)I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-boolean v0, v0, Lcom/netease/mpay/b/i;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->b(I)V

    invoke-direct {p0}, Lcom/netease/mpay/dp;->z()V

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iput-boolean v2, v0, Lcom/netease/mpay/b/i;->a:Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method private w()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->L:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$d;->m:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bf:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/netease/mpay/dp;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/netease/mpay/dp;->l:Landroid/widget/LinearLayout;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bf:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/mpay/dp;->p:Landroid/widget/ListView;

    new-instance v5, Lcom/netease/mpay/dv;

    invoke-direct {v5, p0}, Lcom/netease/mpay/dv;-><init>(Lcom/netease/mpay/dp;)V

    new-instance v0, Lcom/netease/mpay/widget/af$b;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->p:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v3, v3, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$g;->u:I

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/af$b;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/netease/mpay/dw;

    invoke-direct {v1, p0}, Lcom/netease/mpay/dw;-><init>(Lcom/netease/mpay/dp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$d;->n:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/netease/mpay/dp;->g:Lcom/netease/mpay/e/b/q;

    iget-object v3, v3, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/mpay/widget/RIdentifier$d;->b:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$d;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto/16 :goto_1
.end method

.method private x()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/server/response/u;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/server/response/s$a;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/netease/mpay/dp;->s:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netease/mpay/dp;->s:I

    :cond_0
    return-void
.end method

.method private y()V
    .locals 6

    new-instance v0, Lcom/netease/mpay/cw;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v3}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/netease/mpay/dz;

    invoke-direct {v5, p0}, Lcom/netease/mpay/dz;-><init>(Lcom/netease/mpay/dp;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/cw;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/cw;->a()V

    return-void
.end method

.method private z()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v3}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/netease/mpay/e/c/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/dp;->A()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    iget-object v1, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->f:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/e/b/o;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/netease/mpay/dp;->y()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->c(Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->d(Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->e(Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v1, v0, v2}, Lcom/netease/mpay/dp;->a(ZZLcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/netease/mpay/dp;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/i;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/i;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/netease/mpay/dp;->b(I)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-nez v0, :cond_3

    check-cast p4, Lcom/netease/mpay/b/ao;

    invoke-direct {p0, p4, v2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/b/ao;Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p4, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/mpay/dp;->B()V

    goto :goto_0

    :cond_2
    instance-of v0, p4, Lcom/netease/mpay/b/an;

    if-eqz v0, :cond_4

    check-cast p4, Lcom/netease/mpay/b/an;

    iget-object v0, p4, Lcom/netease/mpay/b/an;->b:Ljava/lang/String;

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/dp;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lcom/netease/mpay/dp;->b(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p4, Lcom/netease/mpay/b/an;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netease/mpay/dp;->t()V

    goto :goto_1
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dp;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v3, p0, Lcom/netease/mpay/dp;->t:Z

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    if-eq v3, v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dp;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-direct {p0}, Lcom/netease/mpay/dp;->s()V

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/netease/mpay/dp;->u()V

    :goto_3
    iget-object v0, p0, Lcom/netease/mpay/dp;->r:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/netease/mpay/dp;->v()V

    goto :goto_3

    :cond_6
    const/16 v2, 0x8

    goto :goto_4
.end method

.method a(Landroid/view/View;Lcom/netease/mpay/e/b/o;)V
    .locals 6

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ce:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bZ:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->aL:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    iget v4, p2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v1, v4}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v1

    iget-object v4, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v5}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v0}, Lcom/netease/mpay/server/response/r;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget v0, p2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netease/mpay/dy;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/dy;-><init>(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v0}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v1}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-boolean v0, v0, Lcom/netease/mpay/b/i;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/dp;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/dp;->i:Lcom/netease/mpay/e/b/o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/e/b/o;->m:Z

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    invoke-virtual {v1}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/dp;->u:Lcom/netease/mpay/server/response/u;

    invoke-direct {p0}, Lcom/netease/mpay/dp;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/dp;->t()V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-object v0, v0, Lcom/netease/mpay/b/i;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->b:Lcom/netease/mpay/widget/al;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->b:Lcom/netease/mpay/widget/al;

    iget-object v1, p0, Lcom/netease/mpay/dp;->d:Lcom/netease/mpay/b/i;

    iget-wide v1, v1, Lcom/netease/mpay/b/i;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/widget/al;->a(J)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->j()V

    return-void
.end method

.method public l()Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/dp;->B()V

    const/4 v0, 0x1

    return v0
.end method
