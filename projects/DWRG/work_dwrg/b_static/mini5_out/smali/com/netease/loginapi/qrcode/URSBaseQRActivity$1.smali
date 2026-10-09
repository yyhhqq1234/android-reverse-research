.class public Lcom/netease/loginapi/qrcode/URSBaseQRActivity$1;
.super Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/URSBaseQRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSBaseQRActivity;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSBaseQRActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSBaseQRActivity;

    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSBaseQRActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onNetworkStateChanged(Z)V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSBaseQRActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onNetworkStateChanged(Z)V

    return-void
.end method
