.class final Lcom/netease/epay/sdk/base/util/LogicUtil$2;
.super Ljava/lang/Object;
.source "LogicUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$view:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->epaysdk_soft_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$view:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->epaysdk_soft_tag:I

    iget-object v2, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$2;->val$view:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
