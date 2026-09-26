.class Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;
.super Ljava/lang/Object;
.source "SMSVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a()V
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
    .line 85
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    sget v2, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_input_sms_code:I

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    const-string v1, "businessType"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v1, "validContent"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v1, "validate_auth_code.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    new-instance v4, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method
