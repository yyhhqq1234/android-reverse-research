.class public Lcom/netease/mpay/ec;
.super Lcom/netease/mpay/a;


# instance fields
.field private d:Lcom/netease/mpay/b/l;

.field private e:Landroid/content/res/Resources;


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

.method private b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/ec;->s()V

    goto :goto_0

    :cond_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/mpay/ec;->t()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private s()V
    .locals 7

    const/4 v5, 0x1

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    invoke-virtual {v2}, Lcom/netease/mpay/b/l;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/String;ZZLjava/lang/Integer;)V

    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->K:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/u;

    iget-object v3, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    invoke-virtual {v3}, Lcom/netease/mpay/b/l;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/u;-><init>(Lcom/netease/mpay/b/a$a;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/l;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/l;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_5

    :cond_0
    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v1, v0, Lcom/netease/mpay/b/l;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    new-instance v2, Lcom/netease/mpay/UserExt;

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v2, v0}, Lcom/netease/mpay/UserExt;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v1, v2}, Lcom/netease/mpay/BackgroundAuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    :cond_1
    check-cast p4, Lcom/netease/mpay/b/ao;

    invoke-virtual {p4}, Lcom/netease/mpay/b/ao;->a()Lcom/netease/mpay/b/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/ec;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/BackgroundAuthenticationCallback;->onLoginFail(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/ec;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/BackgroundAuthenticationCallback;->onLoginFail(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ec;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ec;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/ec;->d:Lcom/netease/mpay/b/l;

    iget-object v0, v0, Lcom/netease/mpay/b/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/ec;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
