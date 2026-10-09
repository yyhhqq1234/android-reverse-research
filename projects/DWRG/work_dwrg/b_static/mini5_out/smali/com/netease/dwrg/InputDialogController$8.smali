.class Lcom/netease/dwrg/InputDialogController$8;
.super Ljava/util/TimerTask;
.source "InputDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/InputDialogController;->finishInput(Z)V
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

    .line 216
    iput-object p1, p0, Lcom/netease/dwrg/InputDialogController$8;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/netease/dwrg/InputDialogController$8;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v0}, Lcom/netease/dwrg/InputDialogController;->access$1100(Lcom/netease/dwrg/InputDialogController;)Lcom/netease/dwrg/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/netease/dwrg/InputDialogController$8;->this$0:Lcom/netease/dwrg/InputDialogController;

    invoke-static {v1}, Lcom/netease/dwrg/InputDialogController;->access$1100(Lcom/netease/dwrg/InputDialogController;)Lcom/netease/dwrg/Client;

    move-result-object v1

    const-string v2, "input_method"

    .line 221
    invoke-virtual {v1, v2}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
