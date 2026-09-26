.class public Lcom/netease/mpay/d/a/a;
.super Lcom/netease/mpay/ew;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/a$c;,
        Lcom/netease/mpay/d/a/a$b;,
        Lcom/netease/mpay/d/a/a$a;
    }
.end annotation


# static fields
.field private static g:Lcom/netease/mpay/widget/al;


# instance fields
.field private b:Lcom/netease/mpay/d/a/a$b;

.field private c:Lcom/netease/mpay/d/a/a$c;

.field private d:Lcom/netease/mpay/d/a/a/e;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/e/b/af;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/mpay/widget/al;

    invoke-direct {v0}, Lcom/netease/mpay/widget/al;-><init>()V

    sput-object v0, Lcom/netease/mpay/d/a/a;->g:Lcom/netease/mpay/widget/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ew;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/d/a/a;->h:Z

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

.method static synthetic a(Lcom/netease/mpay/d/a/a;)Lcom/netease/mpay/d/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/d/a/a$c;Lcom/netease/mpay/d/a/a$b;)Lcom/netease/mpay/d/a/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/a;

    invoke-direct {v0}, Lcom/netease/mpay/d/a/a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/d/a/a;->b(Lcom/netease/mpay/d/a/a$c;Lcom/netease/mpay/d/a/a$b;)V

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->am:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/a$b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/cq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->af:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/a$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a$c;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    new-instance v0, Lcom/netease/mpay/f/aj;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v2, v2, Lcom/netease/mpay/d/a/a$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v3, v3, Lcom/netease/mpay/d/a/a$c;->b:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/d/a/e;

    invoke-direct {v6, p0, p1, v5}, Lcom/netease/mpay/d/a/e;-><init>(Lcom/netease/mpay/d/a/a;Ljava/lang/String;Z)V

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/aj;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/aj;->h()V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/a;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->f:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/d/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/d/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/a;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a$c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v1, v1, Lcom/netease/mpay/d/a/a$c;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/a$b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/d/a/a;->h:Z

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/netease/mpay/d/a/a$c;Lcom/netease/mpay/d/a/a$b;)V
    .locals 4

    iput-object p1, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/netease/mpay/d/a/a$a;->a:Lcom/netease/mpay/d/a/a$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lcom/netease/mpay/d/a/a$a;->b:Lcom/netease/mpay/d/a/a$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a$a;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/netease/mpay/d/a/a;->g:Lcom/netease/mpay/widget/al;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/d/a/a;->g:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/netease/mpay/d/a/a;->setArguments(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/netease/mpay/ew;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/d/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v0, Lcom/netease/mpay/d/a/a;->g:Lcom/netease/mpay/widget/al;

    sget-object v3, Lcom/netease/mpay/d/a/a$a;->b:Lcom/netease/mpay/d/a/a$a;

    invoke-virtual {v3}, Lcom/netease/mpay/d/a/a$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/a$b;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    sget-object v0, Lcom/netease/mpay/d/a/a$a;->a:Lcom/netease/mpay/d/a/a$a;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/d/a/a$c;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    invoke-interface {v0}, Lcom/netease/mpay/d/a/a$b;->d()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/a;->e:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v3, v3, Lcom/netease/mpay/d/a/a$c;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/a;->f:Lcom/netease/mpay/e/b/af;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a$c;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v2, v2, Lcom/netease/mpay/d/a/a$c;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;I)Z

    move-result v1

    iget-object v2, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;)Z

    move-result v0

    new-instance v2, Lcom/netease/mpay/d/a/a/a;

    iget-object v3, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v3, v3, Lcom/netease/mpay/d/a/a$c;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/netease/mpay/d/a/b;

    invoke-direct {v4, p0}, Lcom/netease/mpay/d/a/b;-><init>(Lcom/netease/mpay/d/a/a;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/netease/mpay/d/a/a/a;-><init>(IZZLcom/netease/mpay/d/a/a/a$a;)V

    iput-object v2, p0, Lcom/netease/mpay/d/a/a;->d:Lcom/netease/mpay/d/a/a/e;

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/netease/mpay/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a$c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v2, v2, Lcom/netease/mpay/d/a/a$c;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/netease/mpay/d/a/a$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a$c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/d/a/a;->h:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/netease/mpay/d/a/a/d;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-object v3, v0, Lcom/netease/mpay/d/a/a$c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->c:Lcom/netease/mpay/d/a/a$c;

    iget-wide v4, v0, Lcom/netease/mpay/d/a/a$c;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    move v0, v1

    :goto_2
    new-instance v1, Lcom/netease/mpay/d/a/c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/c;-><init>(Lcom/netease/mpay/d/a/a;)V

    invoke-direct {v2, v3, v0, v1}, Lcom/netease/mpay/d/a/a/d;-><init>(Ljava/lang/String;ZLcom/netease/mpay/d/a/a/e$a;)V

    iput-object v2, p0, Lcom/netease/mpay/d/a/a;->d:Lcom/netease/mpay/d/a/a/e;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->b:Lcom/netease/mpay/d/a/a$b;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->d:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/netease/mpay/d/a/a/e;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/ew;->onResume()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->d:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/d/a/a/e;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/d/a/d;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/d;-><init>(Lcom/netease/mpay/d/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
