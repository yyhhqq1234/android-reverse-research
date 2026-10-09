.class public abstract Lcom/netease/mobile/link/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/netease/mobile/link/y;

.field public c:Lcom/netease/mobile/link/m0;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget p3, Lcom/netease/mobile/link/R$layout;->mobile_link__fragment_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/netease/mobile/link/R$id;->iv_mobile_link__back:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mobile/link/z;->d:Landroid/view/View;

    new-instance v0, Lcom/netease/mobile/link/z$a;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/z$a;-><init>(Lcom/netease/mobile/link/z;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object p3, p3, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/16 v0, 0x8

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/netease/mobile/link/z;->d:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget p3, Lcom/netease/mobile/link/R$id;->iv_mobile_link__close:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mobile/link/z;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/mobile/link/z;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p3

    .line 1
    iget-object p3, p3, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    invoke-virtual {p3}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->isNonForceGuide()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2
    iget-object p3, p0, Lcom/netease/mobile/link/z;->e:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p3, p0, Lcom/netease/mobile/link/z;->e:Landroid/view/View;

    new-instance v0, Lcom/netease/mobile/link/z$b;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/z$b;-><init>(Lcom/netease/mobile/link/z;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/netease/mobile/link/z;->d()I

    move-result p3

    sget v0, Lcom/netease/mobile/link/R$id;->fl_mobile_link__fragment_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mobile/link/z;->a(Landroid/view/View;)V

    return-object p2
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public c()Z
    .locals 1

    instance-of v0, p0, Lcom/netease/mobile/link/s1;

    return v0
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    .line 1
    iget-object v1, v0, Lcom/netease/mobile/link/y;->c:Lcom/netease/mobile/link/m0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/netease/mobile/link/y;->b:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mobile/link/m0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-interface {v0}, Lcom/netease/mobile/link/r3;->b()V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/mobile/link/z;->k()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/z;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mobile/link/z;->d:Landroid/view/View;

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mobile/link/z;->d:Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
