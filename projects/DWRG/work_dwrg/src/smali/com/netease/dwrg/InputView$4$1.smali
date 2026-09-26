.class Lcom/netease/dwrg/InputView$4$1;
.super Ljava/util/TimerTask;
.source "InputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputView$4;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/InputView$4;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/InputView$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/dwrg/InputView$4;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/netease/dwrg/InputView$4$1;->this$1:Lcom/netease/dwrg/InputView$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    iget-object v2, p0, Lcom/netease/dwrg/InputView$4$1;->this$1:Lcom/netease/dwrg/InputView$4;

    iget-object v2, v2, Lcom/netease/dwrg/InputView$4;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v2}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/netease/dwrg/InputView$4$1;->this$1:Lcom/netease/dwrg/InputView$4;

    iget-object v2, v2, Lcom/netease/dwrg/InputView$4;->this$0:Lcom/netease/dwrg/InputView;

    invoke-static {v2}, Lcom/netease/dwrg/InputView;->access$000(Lcom/netease/dwrg/InputView;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    .line 171
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 172
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 173
    return-void
.end method
