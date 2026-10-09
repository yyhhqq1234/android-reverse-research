.class Lcom/android/support/Titanic$100000001;
.super Ljava/lang/Object;
.source "Titanic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Titanic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Titanic$100000001$100000000;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Titanic;

.field private final val$textView:Lcom/android/support/TitanicTextView;


# direct methods
.method constructor <init>(Lcom/android/support/Titanic;Lcom/android/support/TitanicTextView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/support/Titanic$100000001;->val$textView:Lcom/android/support/TitanicTextView;

    return-void
.end method

.method static access$0(Lcom/android/support/Titanic$100000001;)Lcom/android/support/Titanic;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 38
    move-object v1, p0

    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->val$textView:Lcom/android/support/TitanicTextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/support/TitanicTextView;->setSinking(Z)V

    .line 43
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->val$textView:Lcom/android/support/TitanicTextView;

    const-string v8, "maskX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v1

    iget-object v12, v12, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    iget v12, v12, Lcom/android/support/Titanic;->LEFT:F

    aput v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v1

    iget-object v12, v12, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    iget v12, v12, Lcom/android/support/Titanic;->RIGHT:F

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object v3, v7

    .line 44
    move-object v7, v3

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 46
    move-object v7, v3

    move-object v8, v1

    iget-object v8, v8, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    iget-wide v8, v8, Lcom/android/support/Titanic;->setDuration:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 47
    move-object v7, v3

    const/4 v8, 0x0

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 49
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->val$textView:Lcom/android/support/TitanicTextView;

    invoke-virtual {v7}, Lcom/android/support/TitanicTextView;->getHeight()I

    move-result v7

    move v4, v7

    .line 54
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->val$textView:Lcom/android/support/TitanicTextView;

    const-string v8, "maskY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v4

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move v12, v4

    neg-int v12, v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    aput v12, v10, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object v5, v7

    .line 55
    move-object v7, v5

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 56
    move-object v7, v5

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 57
    move-object v7, v5

    const/16 v8, 0x2710

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 58
    move-object v7, v5

    const/4 v8, 0x0

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 61
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    new-instance v8, Landroid/animation/AnimatorSet;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v7, v8}, Lcom/android/support/Titanic;->access$S1000000(Lcom/android/support/Titanic;Landroid/animation/AnimatorSet;)V

    .line 62
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    invoke-static {v7}, Lcom/android/support/Titanic;->access$L1000000(Lcom/android/support/Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    move-object v11, v5

    aput-object v11, v9, v10

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 63
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    invoke-static {v7}, Lcom/android/support/Titanic;->access$L1000000(Lcom/android/support/Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v7

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    invoke-static {v7}, Lcom/android/support/Titanic;->access$L1000000(Lcom/android/support/Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v7

    new-instance v8, Lcom/android/support/Titanic$100000001$100000000;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/android/support/Titanic$100000001;->val$textView:Lcom/android/support/TitanicTextView;

    invoke-direct {v9, v10, v11}, Lcom/android/support/Titanic$100000001$100000000;-><init>(Lcom/android/support/Titanic$100000001;Lcom/android/support/TitanicTextView;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    invoke-static {v7}, Lcom/android/support/Titanic;->access$L1000001(Lcom/android/support/Titanic;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 95
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    invoke-static {v7}, Lcom/android/support/Titanic;->access$L1000000(Lcom/android/support/Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    invoke-static {v8}, Lcom/android/support/Titanic;->access$L1000001(Lcom/android/support/Titanic;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lcom/android/support/Titanic$100000001;->this$0:Lcom/android/support/Titanic;

    invoke-static {v7}, Lcom/android/support/Titanic;->access$L1000000(Lcom/android/support/Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
