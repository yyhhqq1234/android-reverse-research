.class Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$3;
.super Ljava/lang/Object;
.source "SMSVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$3;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v1, "faceDetect"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$3;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->c(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$3;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    const-class v2, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 134
    return-void
.end method
