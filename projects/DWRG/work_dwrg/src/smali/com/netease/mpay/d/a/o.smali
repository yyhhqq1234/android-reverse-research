.class public Lcom/netease/mpay/d/a/o;
.super Lcom/netease/mpay/ew;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/o$c;,
        Lcom/netease/mpay/d/a/o$a;,
        Lcom/netease/mpay/d/a/o$d;,
        Lcom/netease/mpay/d/a/o$b;
    }
.end annotation


# static fields
.field private static n:Lcom/netease/mpay/widget/al;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/netease/mpay/d/a/o$b;

.field private d:Lcom/netease/mpay/d/a/o$d;

.field private e:Lcom/netease/mpay/e/b;

.field private f:Lcom/netease/mpay/e/b/af;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/netease/mpay/widget/bf$a;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/Button;

.field private m:Z

.field private o:Lcom/netease/mpay/f/bd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    sput-object v0, Lcom/netease/mpay/d/a/o;->n:Lcom/netease/mpay/widget/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ew;-><init>()V

    new-instance v0, Lcom/netease/mpay/d/a/x;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/x;-><init>(Lcom/netease/mpay/d/a/o;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->o:Lcom/netease/mpay/f/bd$a;

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

.method static synthetic a(Lcom/netease/mpay/d/a/o;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/d/a/o$d;Lcom/netease/mpay/d/a/o$b;)Lcom/netease/mpay/d/a/o;
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/o;

    invoke-direct {v0}, Lcom/netease/mpay/d/a/o;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/d/a/o;->b(Lcom/netease/mpay/d/a/o$d;Lcom/netease/mpay/d/a/o$b;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aO:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->aQ:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/netease/mpay/d/a/r;

    invoke-direct {v4, p0}, Lcom/netease/mpay/d/a/r;-><init>(Lcom/netease/mpay/d/a/o;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->aP:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/netease/mpay/d/a/s;

    invoke-direct {v4, p0}, Lcom/netease/mpay/d/a/s;-><init>(Lcom/netease/mpay/d/a/o;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/widget/aa;->a(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/d/a/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->j:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->b()V

    new-instance v0, Lcom/netease/mpay/d/a/a/an;

    iget-object v1, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p2, p3}, Lcom/netease/mpay/d/a/a/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a/an;->a()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/d/a/o;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/o;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->l:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->j:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->b()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->h:Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/mpay/d/a/v;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/v;-><init>(Lcom/netease/mpay/d/a/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/o;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/o;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/netease/mpay/d/a/o;->c()V

    new-instance v0, Lcom/netease/mpay/f/am;

    iget-object v1, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v2, v2, Lcom/netease/mpay/d/a/o$d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v3, v3, Lcom/netease/mpay/d/a/o$d;->b:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/f/am$b;

    iget-object v5, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v5, v5, Lcom/netease/mpay/d/a/o$d;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/netease/mpay/f/am$b;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v5, 0x1

    :goto_0
    new-instance v6, Lcom/netease/mpay/d/a/w;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/d/a/w;-><init>(Lcom/netease/mpay/d/a/o;Z)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/am;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/am$d;ZLcom/netease/mpay/f/am$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/am;->h()V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->f:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->j:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->a()V

    return-void
.end method

.method private d()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ak:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/o$b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aF:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/o$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/f/bd;

    iget-object v1, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v2, v2, Lcom/netease/mpay/d/a/o$d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v3, v3, Lcom/netease/mpay/d/a/o$d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v4, v4, Lcom/netease/mpay/d/a/o$d;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-boolean v6, v6, Lcom/netease/mpay/d/a/o$d;->d:Z

    iget-object v7, p0, Lcom/netease/mpay/d/a/o;->o:Lcom/netease/mpay/f/bd$a;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/bd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/bd$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bd;->h()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/netease/mpay/d/a/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/o;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/d/a/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/o;->b()V

    return-void
.end method

.method static synthetic g(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$d;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/d/a/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/o;->d()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/netease/mpay/d/a/o$d;Lcom/netease/mpay/d/a/o$b;)V
    .locals 4

    iput-object p1, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iput-object p2, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/netease/mpay/d/a/o$a;->a:Lcom/netease/mpay/d/a/o$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/o$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/netease/mpay/d/a/o$a;->b:Lcom/netease/mpay/d/a/o$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/o$a;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/netease/mpay/d/a/o;->n:Lcom/netease/mpay/widget/al;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/d/a/o;->n:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/netease/mpay/d/a/o;->setArguments(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/mpay/ew;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/d/a/o;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v0, Lcom/netease/mpay/d/a/o;->n:Lcom/netease/mpay/widget/al;

    sget-object v2, Lcom/netease/mpay/d/a/o$a;->b:Lcom/netease/mpay/d/a/o$a;

    invoke-virtual {v2}, Lcom/netease/mpay/d/a/o$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/o$b;

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    sget-object v0, Lcom/netease/mpay/d/a/o$a;->a:Lcom/netease/mpay/d/a/o$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/o$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/o$d;

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/o$b;->d()V

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v2, v2, Lcom/netease/mpay/d/a/o$d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->e:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->f:Lcom/netease/mpay/e/b/af;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/d/a/o;->m:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->I:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->c:Lcom/netease/mpay/d/a/o$b;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->au:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->g:Landroid/widget/EditText;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->h:Landroid/widget/TextView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->av:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->i:Landroid/widget/TextView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->l:Landroid/widget/Button;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bt:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aK:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->k:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/netease/mpay/d/a/o;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->l:Landroid/widget/Button;

    invoke-static {v0, v6}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->g:Landroid/widget/EditText;

    new-instance v3, Lcom/netease/mpay/d/a/p;

    invoke-direct {v3, p0}, Lcom/netease/mpay/d/a/p;-><init>(Lcom/netease/mpay/d/a/o;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/netease/mpay/widget/bf$a;

    iget-object v3, p0, Lcom/netease/mpay/d/a/o;->i:Landroid/widget/TextView;

    const/16 v4, 0x3c

    new-instance v5, Lcom/netease/mpay/d/a/q;

    invoke-direct {v5, p0}, Lcom/netease/mpay/d/a/q;-><init>(Lcom/netease/mpay/d/a/o;)V

    invoke-direct {v0, v3, v4, v7, v5}, Lcom/netease/mpay/widget/bf$a;-><init>(Landroid/widget/TextView;IILcom/netease/mpay/widget/bf$a$a;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/o;->j:Lcom/netease/mpay/widget/bf$a;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->br:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->aS:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/mpay/d/a/o;->d:Lcom/netease/mpay/d/a/o$d;

    iget-object v5, v5, Lcom/netease/mpay/d/a/o$d;->c:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/netease/mpay/d/a/o;->b()V

    invoke-direct {p0, v7}, Lcom/netease/mpay/d/a/o;->b(Z)V

    new-instance v0, Lcom/netease/mpay/d/a/o$c;

    invoke-direct {v0, p0, v2}, Lcom/netease/mpay/d/a/o$c;-><init>(Lcom/netease/mpay/d/a/o;Lcom/netease/mpay/d/a/p;)V

    iget-object v2, p0, Lcom/netease/mpay/d/a/o;->l:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/netease/mpay/d/a/o;->g:Landroid/widget/EditText;

    new-instance v3, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v3, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/ew;->onResume()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/d/a/t;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/t;-><init>(Lcom/netease/mpay/d/a/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/d/a/u;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/u;-><init>(Lcom/netease/mpay/d/a/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
