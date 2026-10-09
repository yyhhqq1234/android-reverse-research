.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2$1;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2$1;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-static {v1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->access$500(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$2;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->restartPreviewAfterDelay(J)V

    return p1
.end method
