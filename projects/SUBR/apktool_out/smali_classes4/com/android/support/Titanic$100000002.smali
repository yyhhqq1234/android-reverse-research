.class Lcom/android/support/Titanic$100000002;
.super Ljava/lang/Object;
.source "Titanic.java"

# interfaces
.implements Lcom/android/support/AnimationSetupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Titanic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Titanic;

.field private final val$animate:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/support/Titanic;Ljava/lang/Runnable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Titanic$100000002;->this$0:Lcom/android/support/Titanic;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/support/Titanic$100000002;->val$animate:Ljava/lang/Runnable;

    return-void
.end method

.method static access$0(Lcom/android/support/Titanic$100000002;)Lcom/android/support/Titanic;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000002;->this$0:Lcom/android/support/Titanic;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onSetupAnimation(Lcom/android/support/TitanicButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/support/TitanicButton;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onSetupAnimation(Lcom/android/support/TitanicTextView2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/support/TitanicTextView2;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000002;->val$animate:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onSetupAnimation(Lcom/android/support/TitanicTextView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/support/TitanicTextView;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Titanic$100000002;->val$animate:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
