.class public abstract Lcom/netease/epay/sdk/card/c/a;
.super Ljava/lang/Object;
.source "AddCard3SmsBasePresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

.field l:Lcom/netease/epay/sdk/card/ui/c;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/card/ui/c;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/a;->l:Lcom/netease/epay/sdk/card/ui/c;

    .line 26
    invoke-virtual {p1}, Lcom/netease/epay/sdk/card/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "addcard_bank_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->a:Ljava/lang/String;

    .line 34
    const-string v0, "addcard_card_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->b:Ljava/lang/String;

    .line 35
    const-string v0, "addcard_phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->c:Ljava/lang/String;

    .line 36
    const-string v0, "forget_pwdsms_certNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->g:Ljava/lang/String;

    .line 37
    const-string v0, "addcard_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->h:Ljava/lang/String;

    .line 38
    const-string v0, "addcard_creditExpire"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->i:Ljava/lang/String;

    .line 39
    const-string v0, "addcard_cvv2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->j:Ljava/lang/String;

    .line 40
    const-string v0, "addcard_quickPayId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->d:Ljava/lang/String;

    .line 41
    const-string v0, "addcard_chargeId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->e:Ljava/lang/String;

    .line 42
    const-string v0, "addcard_sms_attach"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/a;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method
