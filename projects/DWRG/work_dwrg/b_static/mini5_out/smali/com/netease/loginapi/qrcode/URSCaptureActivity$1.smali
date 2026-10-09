.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->showFrameworkBugMessageAndExit()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$300(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Lcom/netease/loginapi/qrcode/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public onSuccess(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {p2, p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$002(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    .line 2
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {p2}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->onQRRecognized()V

    .line 3
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {p2}, Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;->isConnected(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$100(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$200(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onDecoded()V

    :cond_0
    return-void
.end method
