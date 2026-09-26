.class public Lcom/netease/epay/sdk/card/c/g;
.super Lcom/netease/epay/sdk/card/c/b;
.source "UpgradeIdentityAddCardFirstPresenter.java"


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/card/ui/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/card/c/b;-><init>(Lcom/netease/epay/sdk/card/ui/a;)V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/card/c/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/g;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/g;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/g;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/netease/epay/sdk/card/c/g;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/epay/sdk/card/c/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/card/c/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/card/c/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/g;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {v0, v9}, Lcom/netease/epay/sdk/card/ui/a;->a(Z)V

    .line 35
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v6

    .line 36
    const-string v0, "bankId"

    invoke-static {v6, v0, p2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v7, "judge_bank_allow_Upgrade.htm"

    iget-object v8, p0, Lcom/netease/epay/sdk/card/c/g;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v0, Lcom/netease/epay/sdk/card/c/g$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/card/c/g$1;-><init>(Lcom/netease/epay/sdk/card/c/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v6, v9, v8, v0}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method
