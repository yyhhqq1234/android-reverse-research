.class public abstract Lcom/netease/mpay/d/a/a/r;
.super Lcom/netease/mpay/d/a/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/a/r$d;,
        Lcom/netease/mpay/d/a/a/r$b;,
        Lcom/netease/mpay/d/a/a/r$a;,
        Lcom/netease/mpay/d/a/a/r$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/mpay/d/a/a/r$a;

.field private c:Lcom/netease/mpay/d/a/a/r$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/k;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/r;->a:Ljava/lang/String;

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


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->G:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->ba:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/r;->b:Lcom/netease/mpay/d/a/a/r$a;

    iget-object v3, p0, Lcom/netease/mpay/d/a/a/r;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/netease/mpay/d/a/a/r$a;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r;->b:Lcom/netease/mpay/d/a/a/r$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/d/a/a/r$a;->a(Landroid/view/View;)V

    new-instance v0, Lcom/netease/mpay/d/a/a/r$c;

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/mpay/d/a/a/r$c;-><init>(Lcom/netease/mpay/d/a/a/r;Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r;->c:Lcom/netease/mpay/d/a/a/r$c;

    return-object v1
.end method

.method public a(ZZ)Lcom/netease/mpay/d/a/a/r;
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/a/r$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/d/a/a/r$d;-><init>(Lcom/netease/mpay/d/a/a/r;ZZ)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r;->b:Lcom/netease/mpay/d/a/a/r$a;

    return-object p0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected abstract c()V
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r;->c:Lcom/netease/mpay/d/a/a/r$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r;->c:Lcom/netease/mpay/d/a/a/r$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/d/a/a/r$c;->a(Lcom/netease/mpay/d/a/a/r$c;Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r;->c:Lcom/netease/mpay/d/a/a/r$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r;->c:Lcom/netease/mpay/d/a/a/r$c;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/r$c;->a(Lcom/netease/mpay/d/a/a/r$c;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Lcom/netease/mpay/d/a/a/r;
    .locals 1

    new-instance v0, Lcom/netease/mpay/d/a/a/r$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/a/r$b;-><init>(Lcom/netease/mpay/d/a/a/r;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r;->b:Lcom/netease/mpay/d/a/a/r$a;

    return-object p0
.end method
