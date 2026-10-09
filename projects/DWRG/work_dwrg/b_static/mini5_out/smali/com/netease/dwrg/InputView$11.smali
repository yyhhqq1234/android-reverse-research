.class Lcom/netease/dwrg/InputView$11;
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

    .line 317
    iput-object p1, p0, Lcom/netease/dwrg/InputView$11;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/netease/dwrg/InputView$11;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/InputView$11;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$800(Lcom/netease/dwrg/InputView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/netease/dwrg/InputView$11;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/netease/dwrg/InputView$11;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v1}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
