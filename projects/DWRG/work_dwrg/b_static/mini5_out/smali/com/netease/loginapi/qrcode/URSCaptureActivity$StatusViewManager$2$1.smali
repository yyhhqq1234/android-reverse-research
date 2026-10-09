.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2$1;
.super Lcom/netease/loginapi/qrcode/widget/AnimationListenerAdapter;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2$1;->this$2:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;

    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/widget/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/netease/loginapi/qrcode/widget/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2$1;->this$2:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;

    iget-object p1, p1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->access$500(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
