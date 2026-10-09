.class public Lgbsdk/android/support/v7/app/WindowDecorActionBar$2;
.super Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v7/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v7/app/WindowDecorActionBar;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lgbsdk/android/support/v7/app/WindowDecorActionBar$2;->this$0:Lgbsdk/android/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lgbsdk/android/support/v7/app/WindowDecorActionBar$2;->this$0:Lgbsdk/android/support/v7/app/WindowDecorActionBar;

    const/4 v0, 0x0

    iput-object v0, p1, Lgbsdk/android/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Lgbsdk/android/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 156
    iget-object p1, p0, Lgbsdk/android/support/v7/app/WindowDecorActionBar$2;->this$0:Lgbsdk/android/support/v7/app/WindowDecorActionBar;

    iget-object p1, p1, Lgbsdk/android/support/v7/app/WindowDecorActionBar;->mContainerView:Lgbsdk/android/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Lgbsdk/android/support/v7/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
