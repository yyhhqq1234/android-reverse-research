.class Lcom/netease/dwrg/InputView$12$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/InputView$12;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView$12;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/netease/dwrg/InputView$12$1;->this$1:Lcom/netease/dwrg/InputView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 408
    iget-object p2, p0, Lcom/netease/dwrg/InputView$12$1;->this$1:Lcom/netease/dwrg/InputView$12;

    iget-object p2, p2, Lcom/netease/dwrg/InputView$12;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p2}, Lcom/netease/dwrg/InputView;->access$1200(Lcom/netease/dwrg/InputView;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 409
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnInputTextChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
