.class public Lcom/netease/mpay/eb;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/eb$a;,
        Lcom/netease/mpay/eb$b;
    }
.end annotation


# static fields
.field public static d:Ljava/lang/String;


# instance fields
.field private e:Lcom/netease/mpay/b/j;

.field private f:Lcom/netease/mpay/eb$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "netease_mpay__assistant_background"

    sput-object v0, Lcom/netease/mpay/eb;->d:Ljava/lang/String;

    return-void
.end method

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

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->D:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->e:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/netease/mpay/eb;->p()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->D:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/netease/mpay/eb$a;->a(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/j;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/j;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/eb;->e:Lcom/netease/mpay/b/j;

    iget-object v0, p0, Lcom/netease/mpay/eb;->e:Lcom/netease/mpay/b/j;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    sget-object v0, Lcom/netease/mpay/eb$b;->c:Lcom/netease/mpay/eb$b;

    iput-object v0, p0, Lcom/netease/mpay/eb;->f:Lcom/netease/mpay/eb$b;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/eb$b;->a:Lcom/netease/mpay/eb$b;

    iput-object v0, p0, Lcom/netease/mpay/eb;->f:Lcom/netease/mpay/eb$b;

    iget-object v0, p0, Lcom/netease/mpay/eb;->e:Lcom/netease/mpay/b/j;

    iget-boolean v0, v0, Lcom/netease/mpay/b/j;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/eb;->s()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/a;->e()V

    invoke-direct {p0}, Lcom/netease/mpay/eb;->s()V

    return-void
.end method

.method public f()V
    .locals 4

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    sget-object v0, Lcom/netease/mpay/eb$b;->a:Lcom/netease/mpay/eb$b;

    iget-object v1, p0, Lcom/netease/mpay/eb;->f:Lcom/netease/mpay/eb$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/eb;->e:Lcom/netease/mpay/b/j;

    iget-object v1, v1, Lcom/netease/mpay/b/j;->b:Lcom/netease/mpay/b$a;

    iget-object v2, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object v0, Lcom/netease/mpay/eb$b;->b:Lcom/netease/mpay/eb$b;

    iput-object v0, p0, Lcom/netease/mpay/eb;->f:Lcom/netease/mpay/eb$b;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netease/mpay/eb$b;->b:Lcom/netease/mpay/eb$b;

    iget-object v1, p0, Lcom/netease/mpay/eb;->f:Lcom/netease/mpay/eb$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/eb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    sget-object v0, Lcom/netease/mpay/eb$b;->c:Lcom/netease/mpay/eb$b;

    iput-object v0, p0, Lcom/netease/mpay/eb;->f:Lcom/netease/mpay/eb$b;

    goto :goto_0
.end method
