.class public Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6$1;
.super Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;

    invoke-direct {p0}, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1010
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Lgbsdk/android/support/v7/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lgbsdk/android/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1011
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListener;)Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1012
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iput-object v0, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mFadeAnim:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1005
    iget-object p1, p0, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6$1;->this$1:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl$6;->this$0:Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/AppCompatDelegateImpl;->mActionModeView:Lgbsdk/android/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgbsdk/android/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
