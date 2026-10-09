.class public Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/widget/CircularProgressDrawable;

.field final synthetic val$ring:Lgbsdk/android/support/v4/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/widget/CircularProgressDrawable;Lgbsdk/android/support/v4/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;->this$0:Lgbsdk/android/support/v4/widget/CircularProgressDrawable;

    iput-object p2, p0, Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;->val$ring:Lgbsdk/android/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 571
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 572
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;->this$0:Lgbsdk/android/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;->val$ring:Lgbsdk/android/support/v4/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, v1}, Lgbsdk/android/support/v4/widget/CircularProgressDrawable;->updateRingColor(FLgbsdk/android/support/v4/widget/CircularProgressDrawable$Ring;)V

    .line 573
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;->this$0:Lgbsdk/android/support/v4/widget/CircularProgressDrawable;

    iget-object v1, p0, Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;->val$ring:Lgbsdk/android/support/v4/widget/CircularProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lgbsdk/android/support/v4/widget/CircularProgressDrawable;->applyTransformation(FLgbsdk/android/support/v4/widget/CircularProgressDrawable$Ring;Z)V

    .line 574
    iget-object p1, p0, Lgbsdk/android/support/v4/widget/CircularProgressDrawable$1;->this$0:Lgbsdk/android/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Lgbsdk/android/support/v4/widget/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method
