.class public Lcom/netease/loginapi/qrcode/URSQRAuthActivity$3;
.super Lcom/netease/loginapi/qrcode/widget/AnimationListenerAdapter;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->dismissStateView()V
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
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$3;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/widget/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$3;->this$0:Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->access$600(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
