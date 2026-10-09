.class public Lcom/android/support/Titanic;
.super Ljava/lang/Object;
.source "Titanic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Titanic$100000001;,
        Lcom/android/support/Titanic$100000002;,
        Lcom/android/support/Titanic$100000004;,
        Lcom/android/support/Titanic$100000005;,
        Lcom/android/support/Titanic$100000007;,
        Lcom/android/support/Titanic$100000008;
    }
.end annotation


# instance fields
.field LEFT:F

.field RIGHT:F

.field private animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field setDuration:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 313
    move-object v1, p0

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v1

    const/16 v4, 0x7d0

    int-to-float v4, v4

    iput v4, v3, Lcom/android/support/Titanic;->LEFT:F

    move-object v3, v1

    const/4 v4, 0x0

    int-to-float v4, v4

    iput v4, v3, Lcom/android/support/Titanic;->RIGHT:F

    move-object v3, v1

    const/16 v4, 0x4e20

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/android/support/Titanic;->setDuration:J

    return-void
.end method

.method static synthetic access$L1000000(Lcom/android/support/Titanic;)Landroid/animation/AnimatorSet;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/android/support/Titanic;)Landroid/animation/Animator$AnimatorListener;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/android/support/Titanic;Landroid/animation/AnimatorSet;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/android/support/Titanic;Landroid/animation/Animator$AnimatorListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Titanic;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 311
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Titanic;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    move-object v0, v2

    return-object v0
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/support/Titanic;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public start(Lcom/android/support/TitanicButton;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/support/TitanicButton;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Lcom/android/support/Titanic$100000007;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/android/support/Titanic$100000007;-><init>(Lcom/android/support/Titanic;Lcom/android/support/TitanicButton;)V

    move-object v3, v5

    .line 287
    move-object v5, v1

    invoke-virtual {v5}, Lcom/android/support/TitanicButton;->isSetUp()Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    move-object v5, v1

    new-instance v6, Lcom/android/support/Titanic$100000008;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/android/support/Titanic$100000008;-><init>(Lcom/android/support/Titanic;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Lcom/android/support/TitanicButton;->setAnimationSetupCallback(Lcom/android/support/AnimationSetupCallback;)V

    .line 305
    :goto_0
    return-void

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public start(Lcom/android/support/TitanicTextView2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/support/TitanicTextView2;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Lcom/android/support/Titanic$100000004;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/android/support/Titanic$100000004;-><init>(Lcom/android/support/Titanic;Lcom/android/support/TitanicTextView2;)V

    move-object v3, v5

    .line 194
    move-object v5, v1

    invoke-virtual {v5}, Lcom/android/support/TitanicTextView2;->isSetUp()Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    move-object v5, v1

    new-instance v6, Lcom/android/support/Titanic$100000005;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/android/support/Titanic$100000005;-><init>(Lcom/android/support/Titanic;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Lcom/android/support/TitanicTextView2;->setAnimationSetupCallback(Lcom/android/support/AnimationSetupCallback;)V

    .line 212
    :goto_0
    return-void

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public start(Lcom/android/support/TitanicTextView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/support/TitanicTextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Lcom/android/support/Titanic$100000001;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/android/support/Titanic$100000001;-><init>(Lcom/android/support/Titanic;Lcom/android/support/TitanicTextView;)V

    move-object v3, v5

    .line 102
    move-object v5, v1

    invoke-virtual {v5}, Lcom/android/support/TitanicTextView;->isSetUp()Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    move-object v5, v1

    new-instance v6, Lcom/android/support/Titanic$100000002;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/android/support/Titanic$100000002;-><init>(Lcom/android/support/Titanic;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Lcom/android/support/TitanicTextView;->setAnimationSetupCallback(Lcom/android/support/AnimationSetupCallback;)V

    .line 120
    :goto_0
    return-void

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
