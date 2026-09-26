.class public Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;
.super Lcom/netease/mpay/widget/pull2refresh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/RotateAnimation;

.field private i:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;-><init>(Landroid/content/Context;)V

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/widget/pull2refresh/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public completeLoad()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->g:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->completeLoad()V

    return-void
.end method

.method public completeRefresh()V
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->completeRefresh()V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public init(Landroid/view/View;Landroid/widget/ListView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;Landroid/view/View;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->init(Landroid/view/View;Landroid/widget/ListView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public init(Landroid/view/View;Landroid/widget/ListView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/widget/pull2refresh/e;

    invoke-direct {v0, p0, p5}, Lcom/netease/mpay/widget/pull2refresh/e;-><init>(Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;)V

    invoke-super {p0, p1, p2, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->init(Landroid/view/View;Landroid/view/View;Lcom/netease/mpay/widget/pull2refresh/a$b;)V

    iput-object p6, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->f:Landroid/view/animation/Animation;

    iput-object p8, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->g:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->h:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->h:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->h:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->h:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->i:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->i:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->i:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->i:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iput-object p3, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->c:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onHeaderComplete(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->onHeaderComplete(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->h:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onHeaderInComplete(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->onHeaderInComplete(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->i:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onLoad()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->f:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->onLoad()V

    return-void
.end method

.method public onRefresh(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->onRefresh(Landroid/view/View;)V

    return-void
.end method

.method public onStartPulling(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->onStartPulling(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method
