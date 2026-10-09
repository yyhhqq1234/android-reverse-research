.class Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$3;
.super Ljava/lang/Object;
.source "NativeFilePickerPickResultFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 128
    iput-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->cancel()V

    .line 133
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-static {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->access$000(Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;)Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->sendResultToUnity()V

    .line 135
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment$3;->this$0:Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;->dismissAllowingStateLoss()V

    return-void
.end method
