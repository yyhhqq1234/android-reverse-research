.class Lcom/android/support/Titanic$100000007$100000006;
.super Ljava/lang/Object;
.source "Titanic.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Titanic$100000007;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Titanic$100000007;

.field private final val$Button:Lcom/android/support/TitanicButton;


# direct methods
.method constructor <init>(Lcom/android/support/Titanic$100000007;Lcom/android/support/TitanicButton;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Titanic$100000007$100000006;->this$0:Lcom/android/support/Titanic$100000007;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/support/Titanic$100000007$100000006;->val$Button:Lcom/android/support/TitanicButton;

    return-void
.end method

.method static access$0(Lcom/android/support/Titanic$100000007$100000006;)Lcom/android/support/Titanic$100000007;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000007$100000006;->this$0:Lcom/android/support/Titanic$100000007;

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
    .line 256
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000007$100000006;->val$Button:Lcom/android/support/TitanicButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/support/TitanicButton;->setSinking(Z)V

    .line 258
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 259
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000007$100000006;->val$Button:Lcom/android/support/TitanicButton;

    invoke-virtual {v3}, Lcom/android/support/TitanicButton;->postInvalidate()V

    .line 264
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000007$100000006;->this$0:Lcom/android/support/Titanic$100000007;

    invoke-static {v3}, Lcom/android/support/Titanic$100000007;->access$0(Lcom/android/support/Titanic$100000007;)Lcom/android/support/Titanic;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, Landroid/animation/AnimatorSet;

    invoke-static {v3, v4}, Lcom/android/support/Titanic;->access$S1000000(Lcom/android/support/Titanic;Landroid/animation/AnimatorSet;)V

    return-void

    .line 261
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000007$100000006;->val$Button:Lcom/android/support/TitanicButton;

    invoke-virtual {v3}, Lcom/android/support/TitanicButton;->postInvalidateOnAnimation()V

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
