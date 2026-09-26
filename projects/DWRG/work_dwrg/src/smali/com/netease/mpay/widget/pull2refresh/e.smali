.class Lcom/netease/mpay/widget/pull2refresh/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/pull2refresh/a$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;

.field final synthetic b:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/e;->b:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    iput-object p2, p0, Lcom/netease/mpay/widget/pull2refresh/e;->a:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/e;->a:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, v0, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 6

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v3

    if-gt v0, v1, :cond_0

    new-array v3, v4, [I

    new-array v4, v4, [I

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v4

    if-lt v3, v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
