.class public Lcom/netease/mpay/d/a/y;
.super Lcom/netease/mpay/ew;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/y$a;,
        Lcom/netease/mpay/d/a/y$c;,
        Lcom/netease/mpay/d/a/y$b;
    }
.end annotation


# static fields
.field private static g:Lcom/netease/mpay/widget/al;


# instance fields
.field b:Lcom/netease/mpay/d/a/a/q$a;

.field private c:Landroid/app/Activity;

.field private d:Lcom/netease/mpay/d/a/y$b;

.field private e:Lcom/netease/mpay/d/a/y$c;

.field private f:Lcom/netease/mpay/d/a/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    sput-object v0, Lcom/netease/mpay/d/a/y;->g:Lcom/netease/mpay/widget/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ew;-><init>()V

    new-instance v0, Lcom/netease/mpay/d/a/ad;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/ad;-><init>(Lcom/netease/mpay/d/a/y;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/y;->b:Lcom/netease/mpay/d/a/a/q$a;

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

.method static synthetic a(Lcom/netease/mpay/d/a/y;)Lcom/netease/mpay/d/a/y$c;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/d/a/y$c;Lcom/netease/mpay/d/a/y$b;)Lcom/netease/mpay/d/a/y;
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/y;

    invoke-direct {v0}, Lcom/netease/mpay/d/a/y;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/d/a/y;->b(Lcom/netease/mpay/d/a/y$c;Lcom/netease/mpay/d/a/y$b;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/d/a/y;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v2, v2, Lcom/netease/mpay/d/a/y$c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v3, v3, Lcom/netease/mpay/d/a/y$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/server/response/r;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v1, v1, Lcom/netease/mpay/d/a/y$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/y$c;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/netease/mpay/d/a/ac;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/ac;-><init>(Lcom/netease/mpay/d/a/y;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/y;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/y;)Lcom/netease/mpay/d/a/y$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/y$b;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/netease/mpay/d/a/y$c;Lcom/netease/mpay/d/a/y$b;)V
    .locals 4

    iput-object p1, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iput-object p2, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/netease/mpay/d/a/y$a;->a:Lcom/netease/mpay/d/a/y$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/y$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/netease/mpay/d/a/y$a;->b:Lcom/netease/mpay/d/a/y$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/y$a;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/netease/mpay/d/a/y;->g:Lcom/netease/mpay/widget/al;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/d/a/y;->g:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/netease/mpay/d/a/y;->setArguments(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/mpay/ew;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/y;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/d/a/y;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v0, Lcom/netease/mpay/d/a/y;->g:Lcom/netease/mpay/widget/al;

    sget-object v2, Lcom/netease/mpay/d/a/y$a;->b:Lcom/netease/mpay/d/a/y$a;

    invoke-virtual {v2}, Lcom/netease/mpay/d/a/y$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/y$b;

    iput-object v0, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    sget-object v0, Lcom/netease/mpay/d/a/y$a;->a:Lcom/netease/mpay/d/a/y$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/y$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/y$c;

    iput-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/y$b;->d()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/y;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->J:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bu:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bQ:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-boolean v1, v1, Lcom/netease/mpay/d/a/y$c;->d:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->X:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bd:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/y$c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/netease/mpay/d/a/z;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/z;-><init>(Lcom/netease/mpay/d/a/y;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bV:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/d/a/y;->a(Landroid/view/View;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bv:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/y$c;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->d:Lcom/netease/mpay/d/a/y$b;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/y$b;->d()V

    :goto_3
    move-object v0, v3

    goto :goto_0

    :cond_2
    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->be:I

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/y$c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    new-instance v0, Lcom/netease/mpay/d/a/a/n;

    iget-object v1, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v1, v1, Lcom/netease/mpay/d/a/y$c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v2, v2, Lcom/netease/mpay/d/a/y$c;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/netease/mpay/d/a/y;->b:Lcom/netease/mpay/d/a/a/q$a;

    invoke-direct {v0, v1, v2, v5}, Lcom/netease/mpay/d/a/a/n;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/mpay/d/a/a/q$a;)V

    :goto_4
    iput-object v0, p0, Lcom/netease/mpay/d/a/y;->f:Lcom/netease/mpay/d/a/a/q;

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->f:Lcom/netease/mpay/d/a/a/q;

    iget-object v1, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v2, v2, Lcom/netease/mpay/d/a/y$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/netease/mpay/d/a/a/q;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/netease/mpay/d/a/a/l;

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v5, v0, Lcom/netease/mpay/d/a/y$c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->e:Lcom/netease/mpay/d/a/y$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/y$c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/w$a;

    iget-object v2, p0, Lcom/netease/mpay/d/a/y;->b:Lcom/netease/mpay/d/a/a/q$a;

    invoke-direct {v1, v5, v0, v2}, Lcom/netease/mpay/d/a/a/l;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/w$a;Lcom/netease/mpay/d/a/a/q$a;)V

    move-object v0, v1

    goto :goto_4
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/ew;->onResume()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/d/a/aa;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/aa;-><init>(Lcom/netease/mpay/d/a/y;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/y;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/d/a/ab;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/ab;-><init>(Lcom/netease/mpay/d/a/y;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
