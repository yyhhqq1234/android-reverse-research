.class Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "SMSVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;->sendSms()V
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
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;Z)V

    .line 77
    return-void
.end method
