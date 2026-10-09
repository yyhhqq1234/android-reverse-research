.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity;->showSuccessDialog(Lcom/google/zxing/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

.field public final synthetic val$result:Lcom/google/zxing/Result;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Lcom/google/zxing/Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;->val$result:Lcom/google/zxing/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$400(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Lcom/netease/loginapi/qrcode/CaptureInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->startCaptureAndDecode()V

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    iget-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;->val$result:Lcom/google/zxing/Result;

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$100(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Ljava/lang/String;)V

    return-void
.end method
