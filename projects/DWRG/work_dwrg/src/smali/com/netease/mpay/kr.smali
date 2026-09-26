.class public Lcom/netease/mpay/kr;
.super Lcom/netease/mpay/a;

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field private d:Lcom/netease/mpay/b/k;

.field private e:Lcom/tencent/tauth/Tencent;

.field private f:Z


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

.method static synthetic a(Lcom/netease/mpay/kr;)Lcom/netease/mpay/b/k;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kr;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/kr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/kr;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/kr;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/kr;->s()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/kt;

    invoke-direct {v3, p0}, Lcom/netease/mpay/kt;-><init>(Lcom/netease/mpay/kr;)V

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/ku;

    invoke-direct {v5, p0}, Lcom/netease/mpay/ku;-><init>(Lcom/netease/mpay/kr;)V

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

.method private s()V
    .locals 3

    invoke-static {}, Lcom/netease/mpay/auth/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/kr;->e:Lcom/tencent/tauth/Tencent;

    iget-object v0, p0, Lcom/netease/mpay/kr;->e:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/auth/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/k;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/kr;->d:Lcom/netease/mpay/b/k;

    iget-object v0, p0, Lcom/netease/mpay/kr;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/16 v0, 0x2b5d

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kr;->e:Lcom/tencent/tauth/Tencent;

    invoke-static {p3, p0}, Lcom/tencent/tauth/Tencent;->handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/kr;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v0}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/kr;->f:Z

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    iget-boolean v0, p0, Lcom/netease/mpay/kr;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/kr;->f:Z

    invoke-direct {p0}, Lcom/netease/mpay/kr;->s()V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/netease/mpay/auth/a;->a(Ljava/lang/Object;)Lcom/netease/mpay/auth/a$a;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/kr;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/bg;

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kr;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/kr;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/netease/mpay/ks;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ks;-><init>(Lcom/netease/mpay/kr;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bg;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/auth/a$a;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bg;->h()V

    goto :goto_0
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/kr;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    return-void
.end method
