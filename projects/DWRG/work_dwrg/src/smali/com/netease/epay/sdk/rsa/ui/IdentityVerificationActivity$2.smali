.class Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$2;
.super Ljava/lang/Object;
.source "IdentityVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v1, "faceDetect"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->d(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    const-class v2, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
