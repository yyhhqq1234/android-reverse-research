.class final Lcom/netease/epay/sdk/base/util/LogicUtil$1;
.super Ljava/lang/Object;
.source "LogicUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$1;->val$manager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/util/LogicUtil$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 83
    :cond_0
    return-void
.end method
