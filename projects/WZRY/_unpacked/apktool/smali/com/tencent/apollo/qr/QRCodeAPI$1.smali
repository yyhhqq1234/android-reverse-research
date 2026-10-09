.class Lcom/tencent/apollo/qr/QRCodeAPI$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/qr/QRCodeAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/apollo/qr/QRCodeAPI;


# direct methods
.method constructor <init>(Lcom/tencent/apollo/qr/QRCodeAPI;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/apollo/qr/QRCodeAPI$1;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/apollo/qr/defines/QRResult;

    iget-object v1, p0, Lcom/tencent/apollo/qr/QRCodeAPI$1;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/defines/QRResult;->getTag()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/defines/QRResult;->getRetCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/defines/QRResult;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/apollo/qr/QRCodeAPI;->access$000(Lcom/tencent/apollo/qr/QRCodeAPI;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "QRCodeAPI"

    const-string v1, "Message is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
