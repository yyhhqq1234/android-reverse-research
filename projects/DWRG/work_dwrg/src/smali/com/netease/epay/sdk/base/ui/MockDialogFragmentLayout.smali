.class public Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
.super Landroid/widget/FrameLayout;
.source "MockDialogFragmentLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "#80000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;->setBackgroundColor(I)V

    .line 21
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_fragment_base_mid_window:I

    invoke-static {p1, v0, p0}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    sget v0, Lcom/netease/epay/sdk/base/R$id;->fl_content:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    return-void
.end method
