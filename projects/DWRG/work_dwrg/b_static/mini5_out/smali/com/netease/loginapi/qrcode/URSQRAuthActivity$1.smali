.class public Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/URSQRAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    const/16 v0, 0x3e8

    const-string v1, "\u65e0\u7f51\u7edc"

    invoke-static {p1, v1, v0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$000(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$100(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/loginapi/qrcode/widget/ProgressButton;->setEnabled(Z)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$400(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {p1, v0}, Lcom/netease/loginapi/URSdk;->customize(Ljava/lang/String;Lcom/netease/loginapi/expose/URSAPICallback;)Lcom/netease/loginapi/expose/URSAPIBuilder;

    move-result-object p1

    new-instance v0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1$1;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1$1;-><init>(Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/netease/loginapi/expose/URSAPIBuilder;->setProgress(Lcom/netease/loginapi/expose/Progress;)Lcom/netease/loginapi/expose/URSAPIBuilder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x1f4

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/netease/loginapi/expose/URSAPIBuilder;->setMinInterval(ILjava/util/concurrent/TimeUnit;)Lcom/netease/loginapi/expose/URSAPIBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/loginapi/expose/URSAPIBuilder;->build()Lcom/netease/loginapi/INELoginAPI;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$200(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {v1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$300(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Lcom/netease/loginapi/qrcode/TokenBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/loginapi/qrcode/TokenBundle;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/netease/loginapi/INELoginAPI;->qrAuthVerify(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
