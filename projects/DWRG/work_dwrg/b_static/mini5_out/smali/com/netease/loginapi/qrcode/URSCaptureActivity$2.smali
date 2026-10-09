.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/netease/loginapi/expose/Progress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity;->doVerify(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$2;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Z)V
    .locals 0

    return-void
.end method

.method public onProgress()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$2;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$200(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onVerify()V

    return-void
.end method
