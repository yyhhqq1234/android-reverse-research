.class Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$2;
.super Ljava/lang/Object;
.source "NativeFilePickerPickResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 79
    iput-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$2;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$2;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->execute()V

    return-void
.end method
