.class public Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Lgbsdk/android/support/v4/view/ViewPropertyAnimatorUpdateListener;)Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;Lgbsdk/android/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat$2;->this$0:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat$2;->val$listener:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p3, p0, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 781
    iget-object p1, p0, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat$2;->val$listener:Lgbsdk/android/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iget-object v0, p0, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lgbsdk/android/support/v4/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    return-void
.end method
