.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

.field public final synthetic val$scanResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->val$scanResult:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {v0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->fillIntent(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->val$scanResult:Ljava/lang/String;

    const-string v1, "EXTRAS_SCAN_RESULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$700(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "product_flag"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$700(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/loginapi/qrcode/TokenBundle;

    .line 7
    invoke-static {}, Lcom/netease/loginapi/qrcode/TokenBundle;->intentKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->getAuthActivity()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->access$800(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/netease/loginapi/qrcode/TokenBundle;->intentListKey()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v3, v3, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-static {v3}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->access$700(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    const-class v0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v3, v3, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {v3}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->getAuthActivity()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 14
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->getAccountSelectActivity()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->access$800(Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 18
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager$3;->this$1:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object p1, p1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->this$0:Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v2
.end method
