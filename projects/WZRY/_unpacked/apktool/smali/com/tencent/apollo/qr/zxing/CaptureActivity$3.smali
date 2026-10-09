.class Lcom/tencent/apollo/qr/zxing/CaptureActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/apollo/qr/zxing/CaptureActivity;->displayFrameworkBugMessageAndExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/apollo/qr/zxing/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity$3;->this$0:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity$3;->this$0:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->finish()V

    return-void
.end method
