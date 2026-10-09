.class public Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/netease/loginapi/expose/Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1$1;->this$1:Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 0

    return-void
.end method

.method public onProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1$1;->this$1:Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$100(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/loginapi/qrcode/widget/ProgressButton;->setProgressVisible(Z)V

    return-void
.end method
