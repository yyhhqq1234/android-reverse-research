.class Lcom/netease/dwrg/WelcomeView$UpdateHandler;
.super Landroid/os/Handler;
.source "WelcomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/WelcomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/WelcomeView;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/WelcomeView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/WelcomeView;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/netease/dwrg/WelcomeView$UpdateHandler;->this$0:Lcom/netease/dwrg/WelcomeView;

    .line 41
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget-object v2, p0, Lcom/netease/dwrg/WelcomeView$UpdateHandler;->this$0:Lcom/netease/dwrg/WelcomeView;

    invoke-static {v2}, Lcom/netease/dwrg/WelcomeView;->access$000(Lcom/netease/dwrg/WelcomeView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetTransferAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetFileTransferred()I

    move-result v0

    .line 49
    .local v0, "a":I
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetFileToTransfer()I

    move-result v1

    .line 50
    .local v1, "b":I
    iget-object v2, p0, Lcom/netease/dwrg/WelcomeView$UpdateHandler;->this$0:Lcom/netease/dwrg/WelcomeView;

    invoke-static {v2}, Lcom/netease/dwrg/WelcomeView;->access$100(Lcom/netease/dwrg/WelcomeView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TRANSFERRED:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TOTRANSFER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
