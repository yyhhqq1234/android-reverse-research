.class Lcom/android/support/Launcher$100000000;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/support/Launcher;

.field private final val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/support/Launcher;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/support/Launcher$100000000;->this$0:Lcom/android/support/Launcher;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/support/Launcher$100000000;->val$handler:Landroid/os/Handler;

    return-void
.end method

.method static access$0(Lcom/android/support/Launcher$100000000;)Lcom/android/support/Launcher;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Launcher$100000000;->this$0:Lcom/android/support/Launcher;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Launcher$100000000;->this$0:Lcom/android/support/Launcher;

    invoke-static {v2}, Lcom/android/support/Launcher;->access$1000002(Lcom/android/support/Launcher;)V

    .line 28
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Launcher$100000000;->val$handler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    return-void
.end method
