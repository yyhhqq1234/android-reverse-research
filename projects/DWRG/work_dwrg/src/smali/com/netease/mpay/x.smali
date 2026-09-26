.class public Lcom/netease/mpay/x;
.super Lcom/netease/mpay/a;


# instance fields
.field private d:Lcom/netease/mpay/b/s;

.field private e:Lcom/netease/mpay/ii;


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

.method static synthetic a(Lcom/netease/mpay/x;)Lcom/netease/mpay/ii;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/x;->e:Lcom/netease/mpay/ii;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/x;)Lcom/netease/mpay/b/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/x;->t()V

    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->n()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 7

    new-instance v0, Lcom/netease/mpay/f/c;

    iget-object v1, p0, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v5}, Lcom/netease/mpay/b/s;->q()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/y;

    invoke-direct {v6, p0}, Lcom/netease/mpay/y;-><init>(Lcom/netease/mpay/x;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/c;->h()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    iget-object v0, p0, Lcom/netease/mpay/x;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->V:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mpay/x;->e:Lcom/netease/mpay/ii;

    invoke-direct {p0}, Lcom/netease/mpay/x;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/x;->t()V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/x;->e:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-object v0, p0, Lcom/netease/mpay/x;->e:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    const/4 v0, 0x1

    return v0
.end method
