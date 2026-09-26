.class public Lcom/netease/mpay/a/k;
.super Lcom/netease/mpay/a;


# instance fields
.field private d:Lcom/netease/mpay/b/h;

.field private e:Lcom/netease/mpay/a/f;

.field private f:Lcom/netease/mpay/widget/av;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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

.method static synthetic a(Lcom/netease/mpay/a/k;)Lcom/netease/mpay/b/h;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/a/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/a/k;->s()V

    return-void
.end method

.method private s()V
    .locals 3

    new-instance v0, Lcom/netease/mpay/b/an;

    iget-object v1, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ae:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/an;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/a/k;->f:Lcom/netease/mpay/widget/av;

    iget-object v0, p0, Lcom/netease/mpay/a/k;->f:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->show()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/h;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/h;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    iget-object v0, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/a/k;->e:Lcom/netease/mpay/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/k;->e:Lcom/netease/mpay/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/a/f;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/a/f;

    iget-object v1, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    invoke-virtual {v2}, Lcom/netease/mpay/b/h;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    invoke-virtual {v3}, Lcom/netease/mpay/b/h;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    iget-boolean v4, v4, Lcom/netease/mpay/b/h;->a:Z

    iget-object v5, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    iget-boolean v5, v5, Lcom/netease/mpay/b/h;->c:Z

    iget-object v6, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    iget-boolean v6, v6, Lcom/netease/mpay/b/h;->b:Z

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/a/f;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/netease/mpay/a/k;->e:Lcom/netease/mpay/a/f;

    iget-object v0, p0, Lcom/netease/mpay/a/k;->e:Lcom/netease/mpay/a/f;

    invoke-virtual {v0}, Lcom/netease/mpay/a/f;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    iget-boolean v0, v0, Lcom/netease/mpay/b/h;->b:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/a/k;->s()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    invoke-virtual {v2}, Lcom/netease/mpay/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    invoke-virtual {v2}, Lcom/netease/mpay/b/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    iget v0, v4, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/a/k;->s()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/f/bm;

    iget-object v1, p0, Lcom/netease/mpay/a/k;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    invoke-virtual {v2}, Lcom/netease/mpay/b/h;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/a/k;->d:Lcom/netease/mpay/b/h;

    invoke-virtual {v3}, Lcom/netease/mpay/b/h;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/netease/mpay/a/l;

    invoke-direct {v6, p0}, Lcom/netease/mpay/a/l;-><init>(Lcom/netease/mpay/a/k;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bm;->h()V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    invoke-direct {p0}, Lcom/netease/mpay/a/k;->t()V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->i()V

    iget-object v0, p0, Lcom/netease/mpay/a/k;->f:Lcom/netease/mpay/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/k;->f:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/k;->f:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    :cond_0
    return-void
.end method
