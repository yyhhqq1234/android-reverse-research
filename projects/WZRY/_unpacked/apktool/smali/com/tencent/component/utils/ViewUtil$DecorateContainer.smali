.class Lcom/tencent/component/utils/ViewUtil$DecorateContainer;
.super Landroid/widget/FrameLayout;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/ViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecorateContainer"
.end annotation


# instance fields
.field private final mHostView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 227
    iput-object p2, p0, Lcom/tencent/component/utils/ViewUtil$DecorateContainer;->mHostView:Landroid/view/View;

    .line 228
    return-void
.end method


# virtual methods
.method public getVisibility()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/component/utils/ViewUtil$DecorateContainer;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/utils/ViewUtil$DecorateContainer;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method
