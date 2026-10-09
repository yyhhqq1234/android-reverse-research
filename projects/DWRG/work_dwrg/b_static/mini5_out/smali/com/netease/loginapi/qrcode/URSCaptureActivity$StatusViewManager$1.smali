.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onVerify()V
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
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1$1;

    invoke-direct {v2, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1$1;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-static {v2}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->access$500(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$1;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-static {v1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->access$500(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v0
.end method
