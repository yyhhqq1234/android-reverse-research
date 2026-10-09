.class Lcom/netease/dwrg/InputDialogController$9$1;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputDialogController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/InputDialogController$9;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputDialogController$9;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$9$1;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$1;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/dwrg/InputDialogController;->access$702(Lcom/netease/dwrg/InputDialogController;Z)Z

    .line 296
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$1;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 297
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9$1;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v0, v0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1100(Lcom/netease/dwrg/InputDialogController;)Lcom/netease/dwrg/Client;

    move-result-object v0

    const-string v2, "input_method"

    .line 298
    invoke-virtual {v0, v2}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 299
    iget-object v2, p0, Lcom/netease/dwrg/InputDialogController$9$1;->this$1:Lcom/netease/dwrg/InputDialogController$9;

    iget-object v2, v2, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v2}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
