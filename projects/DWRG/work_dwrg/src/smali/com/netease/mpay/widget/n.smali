.class public Lcom/netease/mpay/widget/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/widget/LinearLayout;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/widget/n;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/widget/n;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/widget/n;->a:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/mpay/widget/n;->a:Landroid/widget/LinearLayout;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/be;)V
    .locals 3

    invoke-static {}, Lcom/netease/mpay/widget/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p5, :cond_2

    invoke-static {p1}, Lcom/netease/mpay/widget/r;->setText(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/widget/r;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mpay/widget/n;->a:Landroid/widget/LinearLayout;

    :goto_1
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_2
    const/4 v0, -0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x28

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_3
    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    if-eqz p4, :cond_5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_4
    if-nez p5, :cond_6

    sget v0, Lcom/netease/mpay/widget/r;->a:I

    :goto_5
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez p5, :cond_7

    sget v0, Lcom/netease/mpay/widget/r;->b:I

    :goto_6
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p0}, Lcom/netease/mpay/widget/n;->b(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    sget-object v2, Lcom/netease/mpay/widget/n;->a:Landroid/widget/LinearLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-interface {p5}, Lcom/netease/mpay/widget/be;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/widget/n;->a:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_3
    const/16 v0, 0x7d2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    :cond_4
    const/16 v0, 0x31

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_3

    :cond_5
    const/16 v0, 0x23

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_6
    invoke-interface {p5}, Lcom/netease/mpay/widget/be;->b()I

    move-result v0

    goto :goto_5

    :cond_7
    invoke-interface {p5}, Lcom/netease/mpay/widget/be;->c()I

    move-result v0

    goto :goto_6
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/netease/mpay/widget/n;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
