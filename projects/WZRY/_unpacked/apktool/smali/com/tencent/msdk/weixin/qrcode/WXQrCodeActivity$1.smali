.class Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity$1;
.super Ljava/lang/Object;
.source "WXQrCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity$1;->this$0:Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity$1;->this$0:Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->access$000(Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;Z)V

    .line 60
    iget-object v0, p0, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity$1;->this$0:Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;

    invoke-virtual {v0}, Lcom/tencent/msdk/weixin/qrcode/WXQrCodeActivity;->finish()V

    .line 61
    return-void
.end method
