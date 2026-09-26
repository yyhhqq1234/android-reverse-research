.class public Lcom/netease/mpay/ex;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ex$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/widget/s;

.field private e:Lcom/netease/mpay/e/b;

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/support/v4/app/FragmentManager;

.field private h:Lcom/netease/mpay/widget/ae;

.field private i:Lcom/netease/mpay/ew;

.field private j:Lcom/netease/mpay/ex$a;

.field private k:I

.field private l:Lcom/netease/mpay/b/m;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    new-instance v1, Lcom/netease/mpay/ey;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ey;-><init>(Lcom/netease/mpay/ex;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    new-instance v0, Lcom/netease/mpay/ex$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ex$a;-><init>(Lcom/netease/mpay/ex;)V

    iput-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

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

.method static synthetic a(Lcom/netease/mpay/ex;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Lcom/netease/mpay/ew;)Lcom/netease/mpay/ew;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    return-object p1
.end method

.method private a(Lcom/netease/mpay/b/ao;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mpay/b/ao;->h:Ljava/lang/String;

    iget v4, p1, Lcom/netease/mpay/b/ao;->f:I

    iget-object v5, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v5}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p1, Lcom/netease/mpay/b/ao;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/b/ao;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->a:Lcom/netease/mpay/b/m$a;

    sget-object v1, Lcom/netease/mpay/b/m$a;->f:Lcom/netease/mpay/b/m$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    iget v1, p1, Lcom/netease/mpay/b/ao;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onGuestBindSuccess(Lcom/netease/mpay/User;)V

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/ex;->x()V

    invoke-virtual {p1}, Lcom/netease/mpay/b/ao;->a()Lcom/netease/mpay/b/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->b(Lcom/netease/mpay/b/ao;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/d/a/a$c;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/netease/mpay/widget/ae;

    invoke-direct {v0}, Lcom/netease/mpay/widget/ae;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    new-instance v0, Lcom/netease/mpay/ez;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ez;-><init>(Lcom/netease/mpay/ex;)V

    invoke-static {p1, v0}, Lcom/netease/mpay/d/a/a;->a(Lcom/netease/mpay/d/a/a$c;Lcom/netease/mpay/d/a/a$b;)Lcom/netease/mpay/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    sget-object v1, Lcom/netease/mpay/widget/ae$a;->b:Lcom/netease/mpay/widget/ae$a;

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    return-void
.end method

.method private a(Lcom/netease/mpay/d/a/af$e;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/netease/mpay/fc;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/fc;-><init>(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/af$e;)V

    sget-object v2, Lcom/netease/mpay/widget/ae$a;->a:Lcom/netease/mpay/widget/ae$a;

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;)Lcom/netease/mpay/ew;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lcom/netease/mpay/d/a/af;->a(Lcom/netease/mpay/d/a/af$e;Lcom/netease/mpay/d/a/af$d;)Lcom/netease/mpay/d/a/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    iget-object v1, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;Lcom/netease/mpay/ew;)Z

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-direct {p0, v0, v2, v3, v3}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    check-cast v0, Lcom/netease/mpay/d/a/af;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/d/a/af;->b(Lcom/netease/mpay/d/a/af$e;Lcom/netease/mpay/d/a/af$d;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/netease/mpay/fb;

    invoke-direct {v4, p0, p1, p2}, Lcom/netease/mpay/fb;-><init>(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V

    iget-boolean v0, p1, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/widget/ae$a;->c:Lcom/netease/mpay/widget/ae$a;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;)Lcom/netease/mpay/ew;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    if-nez v0, :cond_1

    invoke-static {p1, v4}, Lcom/netease/mpay/d/a/f;->a(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/d/a/f$d;)Lcom/netease/mpay/d/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    iget-object v4, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-virtual {v0, v1, v4}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;Lcom/netease/mpay/ew;)Z

    :goto_1
    iget-object v4, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-boolean v0, p1, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    iget-boolean v5, p1, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-nez v5, :cond_3

    :goto_3
    invoke-direct {p0, v4, v1, v0, v2}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/widget/ae$a;->f:Lcom/netease/mpay/widget/ae$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    check-cast v0, Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0, p1, v4}, Lcom/netease/mpay/d/a/f;->b(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/d/a/f$d;)V

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method private a(Lcom/netease/mpay/d/a/o$d;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/netease/mpay/fa;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/fa;-><init>(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/o$d;)V

    sget-object v2, Lcom/netease/mpay/widget/ae$a;->d:Lcom/netease/mpay/widget/ae$a;

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;)Lcom/netease/mpay/ew;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lcom/netease/mpay/d/a/o;->a(Lcom/netease/mpay/d/a/o$d;Lcom/netease/mpay/d/a/o$b;)Lcom/netease/mpay/d/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    iget-object v1, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;Lcom/netease/mpay/ew;)Z

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-direct {p0, v0, v2, v3, v3}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    check-cast v0, Lcom/netease/mpay/d/a/o;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/d/a/o;->b(Lcom/netease/mpay/d/a/o$d;Lcom/netease/mpay/d/a/o$b;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/d/a/y$c;)V
    .locals 4

    new-instance v1, Lcom/netease/mpay/fd;

    invoke-direct {v1, p0}, Lcom/netease/mpay/fd;-><init>(Lcom/netease/mpay/ex;)V

    sget-object v2, Lcom/netease/mpay/widget/ae$a;->g:Lcom/netease/mpay/widget/ae$a;

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;)Lcom/netease/mpay/ew;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lcom/netease/mpay/d/a/y;->a(Lcom/netease/mpay/d/a/y$c;Lcom/netease/mpay/d/a/y$b;)Lcom/netease/mpay/d/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    iget-object v1, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;Lcom/netease/mpay/ew;)Z

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    check-cast v0, Lcom/netease/mpay/d/a/y;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/d/a/y;->b(Lcom/netease/mpay/d/a/y$c;Lcom/netease/mpay/d/a/y$b;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-boolean v0, v0, Lcom/netease/mpay/ex$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/mpay/ex$a;->a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/ex;->k:I

    invoke-virtual {p2}, Lcom/netease/mpay/widget/ae$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    invoke-virtual {v1, p2, p1}, Lcom/netease/mpay/widget/ae;->a(Lcom/netease/mpay/widget/ae$a;Lcom/netease/mpay/ew;)Z

    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/netease/mpay/widget/ae$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Lcom/netease/mpay/b/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/b/ao;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/af$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/af$e;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/o$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/o$d;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/y$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/y$c;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Lcom/netease/mpay/f/an$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/f/an$a;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/ex;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/f/an$a;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/netease/mpay/fg;->c:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/an$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v3, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v4, Lcom/netease/mpay/b/ah;

    iget-object v5, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v5}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    invoke-static {v2, v3, v4, v1, v0}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void

    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/m$f;

    iget-object v1, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v2, v2, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/netease/mpay/b/m$f;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    new-instance v0, Lcom/netease/mpay/d/a/a$c;

    iget-object v1, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v5, v3, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/d/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/a$c;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/ex;->u()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/ex;)Lcom/netease/mpay/widget/ae;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    return-object v0
.end method

.method private b(Lcom/netease/mpay/b/ao;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    invoke-direct {p0}, Lcom/netease/mpay/ex;->y()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/ex;->x()V

    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/ex;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ex;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netease/mpay/ex;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/o;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aK:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dT:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/fe;

    invoke-direct {v5, p0}, Lcom/netease/mpay/fe;-><init>(Lcom/netease/mpay/ex;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->Z:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ff;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ff;-><init>(Lcom/netease/mpay/ex;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->d:Lcom/netease/mpay/widget/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v7, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v7}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/ex;->d:Lcom/netease/mpay/widget/s;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->d:Lcom/netease/mpay/widget/s;

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ex;->d:Lcom/netease/mpay/widget/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/ex;->d:Lcom/netease/mpay/widget/s;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->d:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/ex;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ex;->w()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/ex;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ex;->u()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ex;->e:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/ex;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ex;->t()V

    return-void
.end method

.method private s()V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v1, p0, Lcom/netease/mpay/ex;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/mpay/ex$a;->a:Z

    sget-object v0, Lcom/netease/mpay/b/m$a;->d:Lcom/netease/mpay/b/m$a;

    iget-object v1, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v1, v1, Lcom/netease/mpay/b/m;->a:Lcom/netease/mpay/b/m$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    check-cast v0, Lcom/netease/mpay/b/m$e;

    iget-object v1, v0, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v1}, Lcom/netease/mpay/server/response/ai;->b()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    sget-object v2, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v1}, Lcom/netease/mpay/server/response/ai;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/b/m$e;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/ex;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->D:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bs:I

    iput v0, p0, Lcom/netease/mpay/ex;->k:I

    new-instance v0, Lcom/netease/mpay/widget/ae;

    invoke-direct {v0}, Lcom/netease/mpay/widget/ae;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    iget-object v0, p0, Lcom/netease/mpay/ex;->g:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    sget-object v0, Lcom/netease/mpay/fg;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v1, v1, Lcom/netease/mpay/b/m;->a:Lcom/netease/mpay/b/m$a;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    check-cast v0, Lcom/netease/mpay/b/m$d;

    new-instance v1, Lcom/netease/mpay/d/a/f$e;

    invoke-virtual {v0}, Lcom/netease/mpay/b/m$d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netease/mpay/b/m$d;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/netease/mpay/b/m$d;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/netease/mpay/d/a/f$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1, v4}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    move-object v4, v0

    check-cast v4, Lcom/netease/mpay/b/m$g;

    new-instance v0, Lcom/netease/mpay/d/a/af$e;

    invoke-virtual {v4}, Lcom/netease/mpay/b/m$g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netease/mpay/b/m$g;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/netease/mpay/b/m$g;->c:Lcom/netease/mpay/b/m$b;

    iget-object v4, v4, Lcom/netease/mpay/b/m$g;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/d/a/af$e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/af$e;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    move-object v4, v0

    check-cast v4, Lcom/netease/mpay/b/m$e;

    iget-object v0, v4, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/mpay/d/a/f$e;

    invoke-virtual {v4}, Lcom/netease/mpay/b/m$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netease/mpay/b/m$e;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/netease/mpay/b/m$e;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/netease/mpay/d/a/f$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v4, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    sget-object v2, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/response/ai;->c(Lcom/netease/mpay/server/response/ai$a;)Lcom/netease/mpay/server/response/ai;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, v4, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/ai;->b()I

    move-result v0

    if-gt v0, v5, :cond_0

    iget-object v0, v4, Lcom/netease/mpay/b/m$e;->c:Lcom/netease/mpay/server/response/ai;

    sget-object v1, Lcom/netease/mpay/server/response/ai$a;->a:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/ai;->b(Lcom/netease/mpay/server/response/ai$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/d/a/af$e;

    invoke-virtual {v4}, Lcom/netease/mpay/b/m$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netease/mpay/b/m$e;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    iget-object v4, v4, Lcom/netease/mpay/b/m$e;->b:Ljava/lang/String;

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/d/a/af$e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/af$e;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    move-object v4, v0

    check-cast v4, Lcom/netease/mpay/b/m$f;

    new-instance v0, Lcom/netease/mpay/d/a/a$c;

    iget-object v1, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/netease/mpay/b/m$f;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/netease/mpay/b/m$f;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v5, v5, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/d/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/a$c;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    check-cast v0, Lcom/netease/mpay/b/m$c;

    new-instance v1, Lcom/netease/mpay/d/a/a$c;

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v3}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/netease/mpay/b/m$c;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v4, v4, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/netease/mpay/d/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-direct {p0, v1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/d/a/a$c;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ex;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ex;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/netease/mpay/b/ao;

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V

    invoke-direct {p0, v2}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/b/ao;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->a:Lcom/netease/mpay/b/m$a;

    sget-object v1, Lcom/netease/mpay/b/m$a;->d:Lcom/netease/mpay/b/m$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/m$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/ex;->u()V

    goto :goto_0
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/ex;->x()V

    new-instance v0, Lcom/netease/mpay/b/au;

    invoke-direct {v0}, Lcom/netease/mpay/b/au;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/au;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private v()V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v6, v4, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/netease/mpay/ex;->y()V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, v0, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/ex;->x()V

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private x()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/ex;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/ae;->a()V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/ex;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->h:Lcom/netease/mpay/widget/ae;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/ae;->a()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    invoke-static {p1}, Lcom/netease/mpay/b/m;->a(Landroid/content/Intent;)Lcom/netease/mpay/b/m;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    iget-object v0, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    invoke-virtual {v0, p1, p4}, Lcom/netease/mpay/ex$a;->a(ILcom/netease/mpay/b/al;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/b/al;)V
    .locals 3

    const/16 v2, 0xc

    const/16 v1, 0xb

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/ew;->a(ILcom/netease/mpay/b/al;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/ex;->v()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/netease/mpay/ex;->t()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_5

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    :cond_5
    instance-of v0, p2, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-nez v0, :cond_7

    if-ne v1, p1, :cond_6

    check-cast p2, Lcom/netease/mpay/b/ao;

    invoke-direct {p0, p2}, Lcom/netease/mpay/ex;->b(Lcom/netease/mpay/b/ao;)V

    goto :goto_0

    :cond_6
    check-cast p2, Lcom/netease/mpay/b/ao;

    invoke-direct {p0, p2}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/b/ao;)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_8

    if-ne v2, p1, :cond_8

    invoke-direct {p0}, Lcom/netease/mpay/ex;->x()V

    check-cast p2, Lcom/netease/mpay/b/ao;

    invoke-virtual {p2}, Lcom/netease/mpay/b/ao;->a()Lcom/netease/mpay/b/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_8
    instance-of v0, p2, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/netease/mpay/ex;->u()V

    goto :goto_0

    :cond_9
    instance-of v0, p2, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/ex;->v()V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-boolean v0, v0, Lcom/netease/mpay/ex$a;->a:Z

    iget-object v1, p0, Lcom/netease/mpay/ex;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/ex;->s()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Z)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/ew;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ex;->f:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ex;->l:Lcom/netease/mpay/b/m;

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/ex;->e:Lcom/netease/mpay/e/b;

    invoke-direct {p0}, Lcom/netease/mpay/ex;->s()V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/ex$a;->b:Z

    return-void
.end method

.method public g()V
    .locals 4

    invoke-super {p0}, Lcom/netease/mpay/a;->g()V

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/ex$a;->b:Z

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-boolean v0, v0, Lcom/netease/mpay/ex$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v0, v0, Lcom/netease/mpay/ex$a;->h:Lcom/netease/mpay/ex$a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v0, v0, Lcom/netease/mpay/ex$a;->h:Lcom/netease/mpay/ex$a$a;

    iget v0, v0, Lcom/netease/mpay/ex$a$a;->a:I

    iget-object v1, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v1, v1, Lcom/netease/mpay/ex$a;->h:Lcom/netease/mpay/ex$a$a;

    iget-object v1, v1, Lcom/netease/mpay/ex$a$a;->b:Lcom/netease/mpay/b/al;

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/ex;->a(ILcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    invoke-virtual {v0}, Lcom/netease/mpay/ex$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-boolean v0, v0, Lcom/netease/mpay/ex$a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v0, v0, Lcom/netease/mpay/ex$a;->d:Lcom/netease/mpay/ex$a$c;

    iget-object v0, v0, Lcom/netease/mpay/ex$a$c;->a:Lcom/netease/mpay/ew;

    iget-object v1, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v1, v1, Lcom/netease/mpay/ex$a;->d:Lcom/netease/mpay/ex$a$c;

    iget-object v1, v1, Lcom/netease/mpay/ex$a$c;->b:Lcom/netease/mpay/widget/ae$a;

    iget-object v2, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v2, v2, Lcom/netease/mpay/ex$a;->d:Lcom/netease/mpay/ex$a$c;

    iget-boolean v2, v2, Lcom/netease/mpay/ex$a$c;->c:Z

    iget-object v3, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v3, v3, Lcom/netease/mpay/ex$a;->d:Lcom/netease/mpay/ex$a$c;

    iget-boolean v3, v3, Lcom/netease/mpay/ex$a$c;->d:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    invoke-virtual {v0}, Lcom/netease/mpay/ex$a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-boolean v0, v0, Lcom/netease/mpay/ex$a;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v1, v1, Lcom/netease/mpay/ex$a;->f:Lcom/netease/mpay/ex$a$b;

    iget-object v1, v1, Lcom/netease/mpay/ex$a$b;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    iget-object v2, v2, Lcom/netease/mpay/ex$a;->f:Lcom/netease/mpay/ex$a$b;

    iget-object v2, v2, Lcom/netease/mpay/ex$a$b;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/netease/mpay/ex;->j:Lcom/netease/mpay/ex$a;

    invoke-virtual {v0}, Lcom/netease/mpay/ex$a;->c()V

    :cond_2
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ex;->i:Lcom/netease/mpay/ew;

    invoke-virtual {v0}, Lcom/netease/mpay/ew;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    goto :goto_0
.end method
