.class Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "IdentityVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;->success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v1, "IdentityVerificationActivity_bindMobile"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->c(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "IdentityVerificationActivity_businessType"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->b(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "faceDetect"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->d(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    const-class v2, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 89
    return-void
.end method
