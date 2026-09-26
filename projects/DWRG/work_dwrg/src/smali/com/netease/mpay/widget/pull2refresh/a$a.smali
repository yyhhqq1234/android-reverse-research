.class Lcom/netease/mpay/widget/pull2refresh/a$a;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/pull2refresh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->a:I

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->c:Landroid/view/View;

    iput p2, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->b:I

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->c:Landroid/view/View;

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
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->b:I

    iget v2, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iput p2, p0, Lcom/netease/mpay/widget/pull2refresh/a$a;->a:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
