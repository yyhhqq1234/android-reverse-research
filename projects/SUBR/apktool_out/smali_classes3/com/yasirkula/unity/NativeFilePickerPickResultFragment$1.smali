.class Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;
.super Ljava/lang/Object;
.source "NativeFilePickerPickResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;


# direct methods
.method constructor <init>(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->finished:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->sendResultToUnity()V

    .line 35
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-virtual {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->dismissAllowingStateLoss()V

    goto :goto_1

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$100(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    move-result-object v0

    iget v0, v0, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->progress:I

    if-ltz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$100(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$100(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$100(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    move-result-object v1

    iget v1, v1, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$100(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$100(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$300(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$200(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Ljava/lang/Runnable;

    move-result-object v1

    sget v2, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->uiUpdateInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$300(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$1;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v2}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$200(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Ljava/lang/Runnable;

    move-result-object v2

    sget v3, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->uiUpdateInterval:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    throw v0
.end method
