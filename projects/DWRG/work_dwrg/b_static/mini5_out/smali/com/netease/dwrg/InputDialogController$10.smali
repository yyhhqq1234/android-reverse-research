.class Lcom/netease/dwrg/InputDialogController$10;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputDialogController;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputDialogController;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputDialogController;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/netease/dwrg/R$id;->edit_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/dwrg/InputDialogController;->access$1302(Lcom/netease/dwrg/InputDialogController;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 329
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1000(Lcom/netease/dwrg/InputDialogController;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$1400(Lcom/netease/dwrg/InputDialogController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 330
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$1200(Lcom/netease/dwrg/InputDialogController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 331
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 332
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$1500(Lcom/netease/dwrg/InputDialogController;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 333
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$10;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$1600(Lcom/netease/dwrg/InputDialogController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method
