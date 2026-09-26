.class public Lcom/netease/epay/sdk/psw/verifypwd/c;
.super Ljava/lang/Object;
.source "SdkInnerVerifyPwdBasePresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/psw/verifypwd/e$a;


# instance fields
.field public a:Lcom/netease/epay/sdk/psw/verifypwd/e;

.field protected b:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/c$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/verifypwd/c$1;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/c;->b:Lcom/netease/epay/sdk/NetCallback;

    .line 28
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/verifypwd/c;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    .line 29
    invoke-virtual {p1}, Lcom/netease/epay/sdk/psw/verifypwd/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/c;->c:Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/verifypwd/c;)Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/c;->c:Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    const-string v1, "password"

    invoke-static {v0, v1, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v1, "validate_pwd.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/psw/verifypwd/c;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/psw/verifypwd/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/psw/verifypwd/c;->b:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 37
    return-void
.end method
