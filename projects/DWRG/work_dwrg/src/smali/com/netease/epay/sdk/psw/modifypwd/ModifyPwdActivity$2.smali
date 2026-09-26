.class Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$2;
.super Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.source "ModifyPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$2;->a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength(Ljava/lang/String;)V
    .locals 5
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    const-string v1, "password"

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v1, "validate_pwd.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$2;->a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$2;->a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;

    invoke-static {v4}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->b(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)Lcom/netease/epay/sdk/NetCallback;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 86
    return-void
.end method
