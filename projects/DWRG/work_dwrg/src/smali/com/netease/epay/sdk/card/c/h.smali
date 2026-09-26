.class public Lcom/netease/epay/sdk/card/c/h;
.super Lcom/netease/epay/sdk/card/c/f;
.source "UpgradeIdentityAddCardSecondPresenter.java"


# instance fields
.field private j:Z


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/card/ui/b;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/card/c/f;-><init>(Lcom/netease/epay/sdk/card/ui/b;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/h;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/h;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/h;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/netease/epay/sdk/card/c/h;->j:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 28
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 29
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v1, "judge_bank_allow_Upgrade.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/h;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/h$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/h$1;-><init>(Lcom/netease/epay/sdk/card/c/h;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 55
    return-void
.end method
