.class public Lcom/netease/mpay/widget/bi;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/app/Activity;

.field private e:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/netease/mpay/widget/bi;->a:I

    iput v3, p0, Lcom/netease/mpay/widget/bi;->b:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/netease/mpay/widget/bi;->c:I

    iput-object p1, p0, Lcom/netease/mpay/widget/bi;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/widget/bi;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/skin/e;

    invoke-direct {v1}, Lcom/netease/mpay/skin/e;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/mpay/skin/e;->a(Landroid/view/LayoutInflater;Lcom/netease/mpay/skin/e;)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->W:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aB:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bi:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/netease/mpay/widget/bi;->e:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/netease/mpay/widget/bi;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/bi;->e:Landroid/widget/PopupWindow;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$i;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

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

.method static synthetic a(Lcom/netease/mpay/widget/bi;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/bi;->e:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/widget/bi;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netease/mpay/widget/bi;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/16 v4, 0x23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/mpay/widget/bj;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/bj;-><init>(Lcom/netease/mpay/widget/bi;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
