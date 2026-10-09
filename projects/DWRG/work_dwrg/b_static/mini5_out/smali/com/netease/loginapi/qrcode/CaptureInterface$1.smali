.class public Lcom/netease/loginapi/qrcode/CaptureInterface$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/CaptureInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/CaptureInterface;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/CaptureInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface$1;->this$0:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface$1;->this$0:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-static {v0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->access$200(Lcom/netease/loginapi/qrcode/CaptureInterface;Landroid/os/Message;)V

    goto :goto_0

    .line 13
    :pswitch_1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface$1;->this$0:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-static {v0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->access$100(Lcom/netease/loginapi/qrcode/CaptureInterface;Landroid/os/Message;)V

    goto :goto_0

    .line 14
    :pswitch_2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface$1;->this$0:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->access$000(Lcom/netease/loginapi/qrcode/CaptureInterface;)Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    move-result-object p1

    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->SUCCESS:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    if-ne p1, v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface$1;->this$0:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->startCaptureAndDecode()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
