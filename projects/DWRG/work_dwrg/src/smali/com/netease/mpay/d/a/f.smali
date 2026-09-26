.class public Lcom/netease/mpay/d/a/f;
.super Lcom/netease/mpay/ew;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/f$e;,
        Lcom/netease/mpay/d/a/f$c;,
        Lcom/netease/mpay/d/a/f$b;,
        Lcom/netease/mpay/d/a/f$a;,
        Lcom/netease/mpay/d/a/f$d;
    }
.end annotation


# static fields
.field private static g:Lcom/netease/mpay/widget/al;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/netease/mpay/d/a/f$b;

.field private d:Lcom/netease/mpay/d/a/f$d;

.field private e:Lcom/netease/mpay/d/a/a/k;

.field private f:Lcom/netease/mpay/e/b/o;

.field private h:Lcom/netease/mpay/f/bd$a;

.field private i:Lcom/netease/mpay/f/au$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    sput-object v0, Lcom/netease/mpay/d/a/f;->g:Lcom/netease/mpay/widget/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ew;-><init>()V

    new-instance v0, Lcom/netease/mpay/d/a/m;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/m;-><init>(Lcom/netease/mpay/d/a/f;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/f;->h:Lcom/netease/mpay/f/bd$a;

    new-instance v0, Lcom/netease/mpay/d/a/n;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/n;-><init>(Lcom/netease/mpay/d/a/f;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/f;->i:Lcom/netease/mpay/f/au$a;

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

.method static synthetic a(Lcom/netease/mpay/d/a/f;)Lcom/netease/mpay/d/a/f$d;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/d/a/f$d;)Lcom/netease/mpay/d/a/f;
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/f;

    invoke-direct {v0}, Lcom/netease/mpay/d/a/f;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/d/a/f;->b(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/d/a/f$d;)V

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/f;)Lcom/netease/mpay/d/a/f$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/d/a/f;)Lcom/netease/mpay/d/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->e:Lcom/netease/mpay/d/a/a/k;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->an:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/f$d;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/bc;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v2, v2, Lcom/netease/mpay/d/a/f$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v3, v3, Lcom/netease/mpay/d/a/f$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v4, Lcom/netease/mpay/d/a/f$c;

    iget-object v4, v4, Lcom/netease/mpay/d/a/f$c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v5, Lcom/netease/mpay/d/a/f$c;

    iget-boolean v6, v5, Lcom/netease/mpay/d/a/f$c;->g:Z

    iget-object v7, p0, Lcom/netease/mpay/d/a/f;->i:Lcom/netease/mpay/f/au$a;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/bc;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bc;->h()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/f$d;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method b()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_0

    new-instance v4, Lcom/netease/mpay/f/am$b;

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/f$c;->d:Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/netease/mpay/f/am$b;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/netease/mpay/f/am;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v2, v2, Lcom/netease/mpay/d/a/f$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v3, v3, Lcom/netease/mpay/d/a/f$b;->b:Ljava/lang/String;

    const/4 v5, 0x1

    new-instance v6, Lcom/netease/mpay/d/a/l;

    invoke-direct {v6, p0}, Lcom/netease/mpay/d/a/l;-><init>(Lcom/netease/mpay/d/a/f;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/am;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/am$d;ZLcom/netease/mpay/f/am$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/am;->h()V

    return-void

    :cond_0
    new-instance v4, Lcom/netease/mpay/d/a/k;

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$e;

    iget-object v0, v0, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    invoke-direct {v4, p0, v0}, Lcom/netease/mpay/d/a/k;-><init>(Lcom/netease/mpay/d/a/f;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/d/a/f$d;)V
    .locals 4

    iput-object p1, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iput-object p2, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/netease/mpay/d/a/f$a;->a:Lcom/netease/mpay/d/a/f$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/f$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/netease/mpay/d/a/f$a;->b:Lcom/netease/mpay/d/a/f$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/f$a;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/netease/mpay/d/a/f;->g:Lcom/netease/mpay/widget/al;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/d/a/f;->g:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/netease/mpay/d/a/f;->setArguments(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ak:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/f$d;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/mpay/f/bd;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v2, v2, Lcom/netease/mpay/d/a/f$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v3, v3, Lcom/netease/mpay/d/a/f$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v4, Lcom/netease/mpay/d/a/f$c;

    iget-object v4, v4, Lcom/netease/mpay/d/a/f$c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v5, Lcom/netease/mpay/d/a/f$c;

    iget-boolean v6, v5, Lcom/netease/mpay/d/a/f$c;->g:Z

    iget-object v7, p0, Lcom/netease/mpay/d/a/f;->h:Lcom/netease/mpay/f/bd$a;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/bd;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/bd$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bd;->h()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/f/bs;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v2, v2, Lcom/netease/mpay/d/a/f$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v3, v3, Lcom/netease/mpay/d/a/f$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v4, Lcom/netease/mpay/d/a/f$e;

    iget-object v4, v4, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v5, Lcom/netease/mpay/d/a/f$e;

    iget-boolean v6, v5, Lcom/netease/mpay/d/a/f$e;->e:Z

    iget-object v7, p0, Lcom/netease/mpay/d/a/f;->i:Lcom/netease/mpay/f/au$a;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/bs;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bs;->h()V

    goto :goto_0
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/f$d;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/mpay/ew;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/d/a/f;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v0, Lcom/netease/mpay/d/a/f;->g:Lcom/netease/mpay/widget/al;

    sget-object v2, Lcom/netease/mpay/d/a/f$a;->b:Lcom/netease/mpay/d/a/f$a;

    invoke-virtual {v2}, Lcom/netease/mpay/d/a/f$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/f$d;

    iput-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    sget-object v0, Lcom/netease/mpay/d/a/f$a;->a:Lcom/netease/mpay/d/a/f$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/f$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/f$b;

    iput-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/f$d;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-object v2, v2, Lcom/netease/mpay/d/a/f$b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$e;

    iget-object v0, v0, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/f;->f:Lcom/netease/mpay/e/b/o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netease/mpay/d/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->d:Lcom/netease/mpay/d/a/f$d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$c;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$c;->e:Z

    if-eqz v0, :cond_2

    new-instance v1, Lcom/netease/mpay/d/a/g;

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$c;

    iget-object v2, v0, Lcom/netease/mpay/d/a/f$c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$c;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$c;->f:Z

    invoke-direct {v1, p0, v2, v0}, Lcom/netease/mpay/d/a/g;-><init>(Lcom/netease/mpay/d/a/f;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/netease/mpay/d/a/f;->e:Lcom/netease/mpay/d/a/a/k;

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->e:Lcom/netease/mpay/d/a/a/k;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/netease/mpay/d/a/a/k;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/f$c;->d:Ljava/lang/String;

    :goto_2
    new-instance v1, Lcom/netease/mpay/d/a/h;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/d/a/h;-><init>(Lcom/netease/mpay/d/a/f;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/mpay/d/a/f;->e:Lcom/netease/mpay/d/a/a/k;

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->e:Lcom/netease/mpay/d/a/a/k;

    check-cast v0, Lcom/netease/mpay/d/a/a/r;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a/r;->g()Lcom/netease/mpay/d/a/a/r;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->f:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->f:Lcom/netease/mpay/e/b/o;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/o;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->e:Lcom/netease/mpay/d/a/a/k;

    check-cast v0, Lcom/netease/mpay/d/a/a/r;

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    check-cast v1, Lcom/netease/mpay/d/a/f$e;

    iget-boolean v3, v1, Lcom/netease/mpay/d/a/f$e;->e:Z

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->f:Lcom/netease/mpay/e/b/o;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netease/mpay/d/a/f;->f:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v2, v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/netease/mpay/d/a/a/r;->a(ZZ)Lcom/netease/mpay/d/a/a/r;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/ew;->onResume()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->c:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/netease/mpay/d/a/i;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/i;-><init>(Lcom/netease/mpay/d/a/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/f;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/d/a/j;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/j;-><init>(Lcom/netease/mpay/d/a/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
