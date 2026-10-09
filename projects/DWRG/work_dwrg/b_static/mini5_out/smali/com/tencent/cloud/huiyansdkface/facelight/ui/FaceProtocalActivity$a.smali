.class Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;


# direct methods
.method constructor <init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity$a;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity$a;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;

    invoke-static {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    const-string v0, "FaceProtocalActivity"

    if-eqz p1, :cond_0

    const-string p1, "\u5de6\u4e0a\u89d2\u8fd4\u56de\u952e\uff0c\u56de\u5230\u4e0a\u4e00\u9875"

    invoke-static {v0, p1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity$a;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;

    invoke-static {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const-string p1, "\u5de6\u4e0a\u89d2\u8fd4\u56de\u952e\uff0c\u65e0\u4e0a\u4e00\u9875\uff0c\u9000\u51fa\u6388\u6743sdk"

    invoke-static {v0, p1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity$a;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "authpage_detailpage_exit_self"

    const-string v3, "\u5de6\u4e0a\u89d2\u8fd4\u56de"

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity$a;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;

    invoke-static {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;->b(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity$a;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceProtocalActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
