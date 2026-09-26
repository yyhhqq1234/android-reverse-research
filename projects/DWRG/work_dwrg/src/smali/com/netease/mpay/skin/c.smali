.class public Lcom/netease/mpay/skin/c;
.super Lcom/netease/mpay/skin/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/skin/d;-><init>()V

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
.method public a(Landroid/view/View;)V
    .locals 5

    const-string v0, "color"

    iget-object v1, p0, Lcom/netease/mpay/skin/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mpay/skin/SkinManager;->getInstance()Lcom/netease/mpay/skin/SkinManager;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/skin/c;->b:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/skin/SkinManager;->b(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/netease/mpay/skin/SkinManager;->getInstance()Lcom/netease/mpay/skin/SkinManager;

    move-result-object v1

    iget v2, p0, Lcom/netease/mpay/skin/c;->b:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/skin/SkinManager;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p1, v0}, Lcom/netease/mpay/skin/h;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "drawable"

    iget-object v1, p0, Lcom/netease/mpay/skin/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/skin/SkinManager;->getInstance()Lcom/netease/mpay/skin/SkinManager;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/skin/c;->b:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/skin/SkinManager;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-static {p1, v0}, Lcom/netease/mpay/skin/h;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
