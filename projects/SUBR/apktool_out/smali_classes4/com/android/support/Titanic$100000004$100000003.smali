.class Lcom/android/support/Titanic$100000004$100000003;
.super Ljava/lang/Object;
.source "Titanic.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Titanic$100000004;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Titanic$100000004;

.field private final val$textView:Lcom/android/support/TitanicTextView2;


# direct methods
.method constructor <init>(Lcom/android/support/Titanic$100000004;Lcom/android/support/TitanicTextView2;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Titanic$100000004$100000003;->this$0:Lcom/android/support/Titanic$100000004;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/support/Titanic$100000004$100000003;->val$textView:Lcom/android/support/TitanicTextView2;

    return-void
.end method

.method static access$0(Lcom/android/support/Titanic$100000004$100000003;)Lcom/android/support/Titanic$100000004;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000004$100000003;->this$0:Lcom/android/support/Titanic$100000004;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000004$100000003;->val$textView:Lcom/android/support/TitanicTextView2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/support/TitanicTextView2;->setSinking(Z)V

    .line 165
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 166
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000004$100000003;->val$textView:Lcom/android/support/TitanicTextView2;

    invoke-virtual {v3}, Lcom/android/support/TitanicTextView2;->postInvalidate()V

    .line 171
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000004$100000003;->this$0:Lcom/android/support/Titanic$100000004;

    invoke-static {v3}, Lcom/android/support/Titanic$100000004;->access$0(Lcom/android/support/Titanic$100000004;)Lcom/android/support/Titanic;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-static {v3, v4}, Lcom/android/support/Titanic;->access$S1000000(Lcom/android/support/Titanic;Landroid/animation/AnimatorSet;)V

    return-void

    .line 168
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000004$100000003;->val$textView:Lcom/android/support/TitanicTextView2;

    invoke-virtual {v3}, Lcom/android/support/TitanicTextView2;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
