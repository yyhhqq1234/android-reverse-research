.class Lcom/netease/dwrg/InputView$12;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/InputView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$200(Lcom/netease/dwrg/InputView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 374
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v2}, Lcom/netease/dwrg/InputView;->access$600(Lcom/netease/dwrg/InputView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 375
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$200(Lcom/netease/dwrg/InputView;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 376
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$900(Lcom/netease/dwrg/InputView;)V

    .line 377
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$1000(Lcom/netease/dwrg/InputView;)V

    .line 378
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$1100(Lcom/netease/dwrg/InputView;)V

    .line 379
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$800(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$800(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$800(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 383
    iget-object v3, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$700(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$700(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v2}, Lcom/netease/dwrg/InputView;->access$700(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 392
    :goto_1
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 393
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 394
    iget-object v1, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 396
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->isInLayout()Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/netease/dwrg/InputView$12$1;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/InputView$12$1;-><init>(Lcom/netease/dwrg/InputView$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 418
    iget-object v0, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$1300(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/netease/dwrg/InputView$12$2;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/InputView$12$2;-><init>(Lcom/netease/dwrg/InputView$12;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_2
    return-void
.end method
