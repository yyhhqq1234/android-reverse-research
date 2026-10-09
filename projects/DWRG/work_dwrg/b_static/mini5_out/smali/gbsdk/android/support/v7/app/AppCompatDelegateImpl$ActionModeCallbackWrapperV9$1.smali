.class public Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;
.super Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->onDestroyActionMode(Lgbsdk/android/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 2187
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Lgbsdk/android/support/v7/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lgbsdk/android/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 2188
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2189
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2190
    :cond_0
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Lgbsdk/android/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2191
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Lgbsdk/android/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lgbsdk/android/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 2193
    :cond_1
    :goto_0
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Lgbsdk/android/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 2194
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListener;)Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2195
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iput-object v0, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method
