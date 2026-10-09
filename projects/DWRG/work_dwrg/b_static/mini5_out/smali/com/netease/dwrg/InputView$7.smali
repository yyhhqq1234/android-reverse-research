.class Lcom/netease/dwrg/InputView$7;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView;-><init>(Landroid/app/Activity;)V
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

    .line 250
    iput-object p1, p0, Lcom/netease/dwrg/InputView$7;->this$0:Lcom/netease/dwrg/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 254
    iget-object p1, p0, Lcom/netease/dwrg/InputView$7;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {p1}, Lcom/netease/dwrg/InputView;->access$400(Lcom/netease/dwrg/InputView;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "input_method"

    .line 255
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 256
    iget-object v0, p0, Lcom/netease/dwrg/InputView$7;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$500(Lcom/netease/dwrg/InputView;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 257
    iget-object v0, p0, Lcom/netease/dwrg/InputView$7;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v0}, Lcom/netease/dwrg/InputView;->access$100(Lcom/netease/dwrg/InputView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method
