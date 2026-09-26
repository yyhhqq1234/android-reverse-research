.class Lcom/netease/dwrg/InputView$10;
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
    .param p1, "this$0"    # Lcom/netease/dwrg/InputView;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 270
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$600(Lcom/netease/dwrg/InputView;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 271
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v4}, Lcom/netease/dwrg/InputView;->access$300(Lcom/netease/dwrg/InputView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 273
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$600(Lcom/netease/dwrg/InputView;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 274
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$700(Lcom/netease/dwrg/InputView;)V

    .line 275
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$800(Lcom/netease/dwrg/InputView;)V

    .line 276
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$900(Lcom/netease/dwrg/InputView;)V

    .line 277
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v4}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 280
    .local v0, "editable":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 281
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 285
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$400(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$400(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 286
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v4}, Lcom/netease/dwrg/InputView;->access$400(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 291
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 292
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 293
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_1

    .line 294
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInLayout()Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 298
    .end local v1    # "rootView":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$1000(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 299
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    new-array v4, v5, [Landroid/text/InputFilter;

    new-instance v5, Lcom/netease/dwrg/InputView$10$1;

    invoke-direct {v5, p0}, Lcom/netease/dwrg/InputView$10$1;-><init>(Lcom/netease/dwrg/InputView$10;)V

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 313
    :goto_2
    return-void

    .line 283
    :cond_2
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 311
    :cond_4
    iget-object v3, p0, Lcom/netease/dwrg/InputView$10;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v3}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v3

    new-array v4, v6, [Landroid/text/InputFilter;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2
.end method
