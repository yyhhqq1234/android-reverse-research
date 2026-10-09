.class public final Lcom/netease/mobile/link/i0;
.super Lcom/netease/mobile/link/h5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/h5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mobile/link/h5;->d:Ljava/lang/String;

    const-string v1, "color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget v2, p0, Lcom/netease/mobile/link/h5;->b:I

    invoke-virtual {v0, v2}, Lcom/netease/mobile/link/j5;->a(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/h5;->d:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mobile/link/j5;->a()Lcom/netease/mobile/link/j5;

    move-result-object v0

    iget v2, p0, Lcom/netease/mobile/link/h5;->b:I

    invoke-virtual {v0, v2}, Lcom/netease/mobile/link/j5;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 3
    instance-of v6, p1, Landroid/widget/ListView;

    if-eqz v6, :cond_1

    move-object v6, p1

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 4
    :cond_1
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method
