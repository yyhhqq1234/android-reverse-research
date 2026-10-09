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

    .line 40
    iput-object p1, p0, Lcom/netease/dwrg/WelcomeView$UpdateHandler;->this$0:Lcom/netease/dwrg/WelcomeView;

    .line 41
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget-object p1, p0, Lcom/netease/dwrg/WelcomeView$UpdateHandler;->this$0:Lcom/netease/dwrg/WelcomeView;

    invoke-static {p1}, Lcom/netease/dwrg/WelcomeView;->access$000(Lcom/netease/dwrg/WelcomeView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetTransferAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetFileTransferred()I

    move-result p1

    .line 49
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeGetFileToTransfer()I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/netease/dwrg/WelcomeView$UpdateHandler;->this$0:Lcom/netease/dwrg/WelcomeView;

    invoke-static {v1}, Lcom/netease/dwrg/WelcomeView;->access$100(Lcom/netease/dwrg/WelcomeView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TRANSFERRED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/netease/dwrg/WelcomeView;->STR_FILE_TOTRANSFER:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
