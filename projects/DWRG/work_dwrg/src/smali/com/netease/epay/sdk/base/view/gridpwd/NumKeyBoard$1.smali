.class Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;
.super Ljava/lang/Object;
.source "NumKeyBoard.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout$NumberKeyClickListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->viewInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->hideKeyboard()V

    .line 82
    return-void
.end method

.method public numberInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->onKey(Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackSpace()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->backSpace()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard$1;->this$0:Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;->access$000(Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyBoard;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method
