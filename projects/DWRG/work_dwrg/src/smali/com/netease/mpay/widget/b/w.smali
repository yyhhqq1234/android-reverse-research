.class public Lcom/netease/mpay/widget/b/w;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/b/w;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/w;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/widget/b/x;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/b/x;-><init>(Lcom/netease/mpay/widget/b/w;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/netease/mpay/widget/b/w;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/w;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/netease/mpay/widget/b/w;->b:I

    goto :goto_0
.end method

.method private a()V
    .locals 4

    invoke-direct {p0}, Lcom/netease/mpay/widget/b/w;->b()I

    move-result v0

    iget v1, p0, Lcom/netease/mpay/widget/b/w;->c:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/w;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_1

    iget-object v3, p0, Lcom/netease/mpay/widget/b/w;->d:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/widget/b/w;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iput v0, p0, Lcom/netease/mpay/widget/b/w;->c:I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/widget/b/w;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/netease/mpay/widget/b/w;->b:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/widget/b/w;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/b/w;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/widget/b/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/widget/b/w;->a()V

    return-void
.end method

.method private b()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/w;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method
