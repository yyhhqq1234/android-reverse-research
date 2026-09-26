.class Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "SMSVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->setResult(I)V

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->finish()V

    .line 100
    return-void
.end method
