.class public Lcom/netease/mpay/codescanner/m;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/codescanner/m$b;,
        Lcom/netease/mpay/codescanner/m$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/w;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/e/b;

.field private g:Lcom/netease/mpay/e/b/f;

.field private h:Lcom/netease/mpay/e/b/o;

.field private i:Lcom/netease/mpay/e/b/q;

.field private j:Lcom/netease/mpay/e/b/o;

.field private k:Z

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/PopupWindow;

.field private p:Landroid/widget/ListView;

.field private q:Lcom/netease/mpay/widget/s;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/TextView;

.field private t:Z

.field private u:Lcom/netease/mpay/AuthenticationCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/m;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/m;->t:Z

    new-instance v0, Lcom/netease/mpay/codescanner/r;

    invoke-direct {v0, p0}, Lcom/netease/mpay/codescanner/r;-><init>(Lcom/netease/mpay/codescanner/m;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->u:Lcom/netease/mpay/AuthenticationCallback;

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

.method static synthetic a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/q;)Lcom/netease/mpay/e/b/q;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/codescanner/m;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/m;Ljava/lang/String;Lcom/netease/mpay/server/response/aa;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/codescanner/m;->a(Ljava/lang/String;Lcom/netease/mpay/server/response/aa;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    sget-object v0, Lcom/netease/mpay/codescanner/w;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p2}, Lcom/netease/mpay/codescanner/m;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$d;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v6}, Lcom/netease/mpay/b/m$d;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$g;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    sget-object v5, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->j:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    iput-object v6, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/netease/mpay/codescanner/m;->c(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/netease/mpay/server/response/aa;)V
    .locals 8

    new-instance v0, Lcom/netease/mpay/f/bh;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    iget-object v6, v4, Lcom/netease/mpay/b/w;->a:Ljava/lang/String;

    new-instance v7, Lcom/netease/mpay/codescanner/t;

    invoke-direct {v7, p0}, Lcom/netease/mpay/codescanner/t;-><init>(Lcom/netease/mpay/codescanner/m;)V

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/bh;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/aa;Ljava/lang/String;Lcom/netease/mpay/f/bh$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bh;->h()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->u:Lcom/netease/mpay/AuthenticationCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/o;)Lcom/netease/mpay/e/b/o;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/netease/mpay/e/b/o;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v1}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/server/response/r;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/codescanner/m;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/o;)Lcom/netease/mpay/e/b/o;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/codescanner/m;->j:Lcom/netease/mpay/e/b/o;

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->q:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/codescanner/u;

    invoke-direct {v3, p0}, Lcom/netease/mpay/codescanner/u;-><init>(Lcom/netease/mpay/codescanner/m;)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->e:Landroid/content/res/Resources;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/codescanner/v;

    invoke-direct {v5, p0}, Lcom/netease/mpay/codescanner/v;-><init>(Lcom/netease/mpay/codescanner/m;)V

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/q;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->q:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->f:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/codescanner/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/codescanner/m;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/netease/mpay/codescanner/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/m;->x()V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/codescanner/m;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->N:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/m;->w()V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/m;->t()V

    invoke-virtual {p0}, Lcom/netease/mpay/codescanner/m;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->b()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/m;->k:Z

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/m;->u()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/codescanner/m;->v()V

    goto :goto_0
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aE:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aF:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bf:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->p:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bP:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ch:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/codescanner/n;

    invoke-direct {v1, p0}, Lcom/netease/mpay/codescanner/n;-><init>(Lcom/netease/mpay/codescanner/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->r:Landroid/widget/Button;

    new-instance v1, Lcom/netease/mpay/codescanner/m$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netease/mpay/codescanner/m$a;-><init>(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/codescanner/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bS:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->s:Landroid/widget/TextView;

    return-void
.end method

.method private u()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->r:Landroid/widget/Button;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aE:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ci:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ch:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->da:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private v()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ci:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/netease/mpay/codescanner/m$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netease/mpay/codescanner/m$b;-><init>(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/codescanner/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->b()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    iget-object v2, v2, Lcom/netease/mpay/b/w;->b:Lcom/netease/mpay/server/response/aa;

    iget-object v2, v2, Lcom/netease/mpay/server/response/aa;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    iget-object v3, v3, Lcom/netease/mpay/b/w;->b:Lcom/netease/mpay/server/response/aa;

    iget-object v3, v3, Lcom/netease/mpay/server/response/aa;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/m;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aD:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private x()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->L:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$e;->f:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->l:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bf:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->p:Landroid/widget/ListView;

    new-instance v5, Lcom/netease/mpay/codescanner/o;

    invoke-direct {v5, p0}, Lcom/netease/mpay/codescanner/o;-><init>(Lcom/netease/mpay/codescanner/m;)V

    new-instance v0, Lcom/netease/mpay/widget/af$b;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->p:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->i:Lcom/netease/mpay/e/b/q;

    iget-object v3, v3, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$g;->O:I

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/af$b;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/netease/mpay/codescanner/p;

    invoke-direct {v1, p0}, Lcom/netease/mpay/codescanner/p;-><init>(Lcom/netease/mpay/codescanner/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/w;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/w;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->u:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->u:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    check-cast p4, Lcom/netease/mpay/b/ao;

    invoke-direct {v1, p4}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p4, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->u:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->u:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    goto :goto_0

    :cond_3
    instance-of v0, p4, Lcom/netease/mpay/b/an;

    if-eqz v0, :cond_1

    check-cast p4, Lcom/netease/mpay/b/an;

    iget-object v0, p4, Lcom/netease/mpay/b/an;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/m;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/m;->s()V

    return-void
.end method

.method a(Landroid/view/View;Lcom/netease/mpay/e/b/o;)V
    .locals 5

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

    iget-object v3, p2, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    iget v3, p2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v1, v3}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v4}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/netease/mpay/server/response/r;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget v0, p2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/o;)V
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v0, p1, Lcom/netease/mpay/e/b/o;->f:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget v3, p1, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v4, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILjava/lang/String;Ljava/lang/Integer;)Z

    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    invoke-virtual {p1, v3}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netease/mpay/cw;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/codescanner/s;

    invoke-direct {v5, p0}, Lcom/netease/mpay/codescanner/s;-><init>(Lcom/netease/mpay/codescanner/m;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/cw;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/cw;->a()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v0}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v7

    iget-object v8, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZZLjava/lang/Integer;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$f;

    iget-object v4, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v4}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3, v5, v5}, Lcom/netease/mpay/b/m$f;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    iget-object v3, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v0}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v7

    iget-object v10, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v8, v4

    move v9, v3

    invoke-virtual/range {v5 .. v11}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZLjava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    goto/16 :goto_0

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

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->e:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/m;->d:Lcom/netease/mpay/b/w;

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->f:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->g:Lcom/netease/mpay/e/b/f;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->q:Lcom/netease/mpay/widget/s;

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/m;->s()V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    iget-boolean v0, p0, Lcom/netease/mpay/codescanner/m;->t:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/mpay/codescanner/m;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/m;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/m;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/e/b/o;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/m;->t:Z

    :cond_2
    return-void
.end method

.method public o()Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    move-result v0

    return v0
.end method
