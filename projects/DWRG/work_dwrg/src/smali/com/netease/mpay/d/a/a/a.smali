.class public Lcom/netease/mpay/d/a/a/a;
.super Lcom/netease/mpay/d/a/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/a/a$a;
    }
.end annotation


# instance fields
.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lcom/netease/mpay/d/a/a/a$a;


# direct methods
.method public constructor <init>(IZZLcom/netease/mpay/d/a/a/a$a;)V
    .locals 2

    invoke-direct {p0, p4}, Lcom/netease/mpay/d/a/a/e;-><init>(Lcom/netease/mpay/d/a/a/e$a;)V

    iput p1, p0, Lcom/netease/mpay/d/a/a/a;->d:I

    iput-boolean p2, p0, Lcom/netease/mpay/d/a/a/a;->e:Z

    iput-boolean p3, p0, Lcom/netease/mpay/d/a/a/a;->f:Z

    iput-object p4, p0, Lcom/netease/mpay/d/a/a/a;->g:Lcom/netease/mpay/d/a/a/a$a;

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

.method static synthetic a(Lcom/netease/mpay/d/a/a/a;)Lcom/netease/mpay/d/a/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/a;->g:Lcom/netease/mpay/d/a/a/a$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/d/a/a/e;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aM:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->F:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/BottomLinkButtons;

    const/4 v3, 0x4

    iget v4, p0, Lcom/netease/mpay/d/a/a/a;->d:I

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/netease/mpay/d/a/a/a;->e:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/netease/mpay/d/a/a/a;->f:Z

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Lcom/netease/mpay/view/BottomLinkButtons;->setVisibility(I)V

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/netease/mpay/view/BottomLinkButtons;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/netease/mpay/d/a/a/a;->e:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/netease/mpay/d/a/a/a;->f:Z

    if-nez v2, :cond_2

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->O:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->h:I

    new-instance v4, Lcom/netease/mpay/d/a/a/b;

    invoke-direct {v4, p0}, Lcom/netease/mpay/d/a/a/b;-><init>(Lcom/netease/mpay/d/a/a/a;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a()V

    goto :goto_0

    :cond_2
    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->N:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->h:I

    new-instance v4, Lcom/netease/mpay/d/a/a/c;

    invoke-direct {v4, p0}, Lcom/netease/mpay/d/a/a/c;-><init>(Lcom/netease/mpay/d/a/a/a;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method a()Z
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Lcom/netease/mpay/d/a/a/a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
