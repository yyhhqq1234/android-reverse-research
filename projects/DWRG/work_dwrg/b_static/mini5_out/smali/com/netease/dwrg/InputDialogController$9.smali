.class Lcom/netease/dwrg/InputDialogController$9;
.super Ljava/lang/Object;
.source "InputDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputDialogController;->showInputDialog(Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputDialogController;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$is_hint:Z

.field final synthetic val$is_multiline:Z

.field final synthetic val$is_password:Z


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputDialogController;ZZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    iput-boolean p2, p0, Lcom/netease/dwrg/InputDialogController$9;->val$is_multiline:Z

    iput-boolean p3, p0, Lcom/netease/dwrg/InputDialogController$9;->val$is_password:Z

    iput-boolean p4, p0, Lcom/netease/dwrg/InputDialogController$9;->val$is_hint:Z

    iput-object p5, p0, Lcom/netease/dwrg/InputDialogController$9;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/dwrg/InputDialogController;->access$702(Lcom/netease/dwrg/InputDialogController;Z)Z

    .line 275
    iget-boolean v0, p0, Lcom/netease/dwrg/InputDialogController$9;->val$is_multiline:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1200(Lcom/netease/dwrg/InputDialogController;)I

    move-result v1

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/netease/dwrg/InputDialogController;->access$1202(Lcom/netease/dwrg/InputDialogController;I)I

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/netease/dwrg/InputDialogController$9;->val$is_password:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1200(Lcom/netease/dwrg/InputDialogController;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-static {v0, v1}, Lcom/netease/dwrg/InputDialogController;->access$1202(Lcom/netease/dwrg/InputDialogController;I)I

    .line 280
    :cond_1
    iget-boolean v0, p0, Lcom/netease/dwrg/InputDialogController$9;->val$is_hint:Z

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$9;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1300(Lcom/netease/dwrg/InputDialogController;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$9;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1000(Lcom/netease/dwrg/InputDialogController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 286
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x438

    .line 287
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 288
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$1000(Lcom/netease/dwrg/InputDialogController;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 289
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-virtual {v0}, Lcom/netease/dwrg/InputDialogController;->refresh()V

    .line 290
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1000(Lcom/netease/dwrg/InputDialogController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 292
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/dwrg/InputDialogController$9$1;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$9$1;-><init>(Lcom/netease/dwrg/InputDialogController$9;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$9;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$300(Lcom/netease/dwrg/InputDialogController;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/dwrg/InputDialogController$9$2;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputDialogController$9$2;-><init>(Lcom/netease/dwrg/InputDialogController$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
