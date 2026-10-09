.class Lcom/tencent/apollo/qr/QRCodeAPI$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/apollo/qr/QRCodeAPI;->GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$logo:Landroid/graphics/Bitmap;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/tencent/apollo/qr/QRCodeAPI;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    iput-object p2, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->val$logo:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QR_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-static {v5}, Lcom/tencent/apollo/qr/QRCodeAPI;->access$100(Lcom/tencent/apollo/qr/QRCodeAPI;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v2, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-static {v2}, Lcom/tencent/apollo/qr/QRCodeAPI;->access$200(Lcom/tencent/apollo/qr/QRCodeAPI;)Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    move-result-object v2

    iget-object v6, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->val$content:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->val$logo:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v7}, Lcom/tencent/apollo/qr/zxing/EncodeUtil;->createQRCode(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-static {v0}, Lcom/tencent/apollo/qr/QRCodeAPI;->access$200(Lcom/tencent/apollo/qr/QRCodeAPI;)Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-static {v3}, Lcom/tencent/apollo/qr/QRCodeAPI;->access$100(Lcom/tencent/apollo/qr/QRCodeAPI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/apollo/qr/zxing/EncodeUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    new-instance v2, Lcom/tencent/apollo/qr/defines/QRResult;

    iget v3, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->val$tag:I

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/tencent/apollo/qr/defines/QRResult;-><init>(IIILjava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/apollo/qr/QRCodeAPI$2;->this$0:Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-static {v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->access$300(Lcom/tencent/apollo/qr/QRCodeAPI;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v2

    const-string v6, "QRCodeAPI"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    goto :goto_1
.end method
