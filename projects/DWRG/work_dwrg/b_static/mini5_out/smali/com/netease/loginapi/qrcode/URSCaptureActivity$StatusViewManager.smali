.class public final Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatusViewManager"
.end annotation


# instance fields
.field public iconCaptureTip:Landroid/view/View;

.field public iconVerifiedView:Landroid/view/View;

.field public layoutVerify:Landroid/view/View;

.field public product:Ljava/lang/String;

.field public progressView:Landroid/view/View;

.field public textCaptureTip:Landroid/widget/TextView;

.field public textVerifyView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->product:Ljava/lang/String;

    .line 3
    sget p2, Lcom/netease/loginapi/R$id;->layout_verify_status:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->layoutVerify:Landroid/view/View;

    .line 4
    sget p2, Lcom/netease/loginapi/R$id;->circular_progressbar:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->progressView:Landroid/view/View;

    .line 5
    sget p2, Lcom/netease/loginapi/R$id;->ic_verified:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconVerifiedView:Landroid/view/View;

    .line 6
    sget p2, Lcom/netease/loginapi/R$id;->text_verifying:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textVerifyView:Landroid/widget/TextView;

    .line 7
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->layoutVerify:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    sget p2, Lcom/netease/loginapi/R$id;->text_capture_tip:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textCaptureTip:Landroid/widget/TextView;

    .line 10
    sget p2, Lcom/netease/loginapi/R$id;->qr_ic_capture_tip:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconCaptureTip:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$500(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->layoutVerify:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->product:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onDecoded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textCaptureTip:Landroid/widget/TextView;

    sget v1, Lcom/netease/loginapi/R$string;->msg_qr_decoded:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconCaptureTip:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconCaptureTip:Landroid/view/View;

    sget v1, Lcom/netease/loginapi/R$drawable;->qr_ic_round_tick:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public onError(II)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textVerifyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$600(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    sget v2, Lcom/netease/loginapi/R$string;->msg_verify_error:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->progressView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconVerifiedView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconVerifiedView:Landroid/view/View;

    sget v0, Lcom/netease/loginapi/R$drawable;->qr_ic_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    new-instance p1, Lcom/netease/loginapi/qrcode/widget/DelayTask;

    new-instance v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)V

    invoke-direct {p1, v0}, Lcom/netease/loginapi/qrcode/widget/DelayTask;-><init>(Landroid/os/Handler$Callback;)V

    const/16 v0, 0x1f5

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 21
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/netease/loginapi/qrcode/widget/DelayTask;->schedule(J)V

    return-void
.end method

.method public onNetworkStateChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->layoutVerify:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconCaptureTip:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconCaptureTip:Landroid/view/View;

    sget v0, Lcom/netease/loginapi/R$drawable;->qr_ic_warn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textCaptureTip:Landroid/widget/TextView;

    sget v0, Lcom/netease/loginapi/R$string;->msg_no_network_on_capture:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onStartCapture()V

    :goto_0
    return-void
.end method

.method public onStartCapture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textCaptureTip:Landroid/widget/TextView;

    sget v1, Lcom/netease/loginapi/R$string;->msg_capture_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconCaptureTip:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textVerifyView:Landroid/widget/TextView;

    sget v1, Lcom/netease/loginapi/R$string;->msg_verified:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconVerifiedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconVerifiedView:Landroid/view/View;

    sget v1, Lcom/netease/loginapi/R$drawable;->qr_ic_verified:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    new-instance v0, Lcom/netease/loginapi/qrcode/widget/DelayTask;

    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;

    invoke-direct {v1, p0, p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/netease/loginapi/qrcode/widget/DelayTask;-><init>(Landroid/os/Handler$Callback;)V

    const-wide/16 v1, 0x1f4

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/netease/loginapi/qrcode/widget/DelayTask;->schedule(J)V

    return-void
.end method

.method public onVerify()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->layoutVerify:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->layoutVerify:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->iconVerifiedView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->textVerifyView:Landroid/widget/TextView;

    sget v1, Lcom/netease/loginapi/R$string;->msg_verifying:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->layoutVerify:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method
