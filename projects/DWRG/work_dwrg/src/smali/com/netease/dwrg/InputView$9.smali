.class Lcom/netease/dwrg/InputView$9;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView;->setText(Ljava/lang/String;)V
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
    .line 245
    iput-object p1, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v2}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 251
    .local v0, "editable":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/netease/dwrg/InputView$9;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 253
    :cond_0
    return-void
.end method
