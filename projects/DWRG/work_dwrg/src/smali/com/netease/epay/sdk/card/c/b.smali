.class public Lcom/netease/epay/sdk/card/c/b;
.super Ljava/lang/Object;
.source "AddCardFirstPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/card/ui/a$a;


# instance fields
.field a:Lcom/netease/epay/sdk/card/ui/a;

.field b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/card/ui/a;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/b;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/card/c/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    const-string v1, "credit"

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->cardType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    const-string v1, "\u8f93\u5165\u4fe1\u7528\u5361\u5361\u53f7"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/a;->a(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    const-string v1, "\u8f93\u5165\u50a8\u84c4\u5361\u5361\u53f7"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 68
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    const-string v1, "query_bank_info.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/b$2;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/b$2;-><init>(Lcom/netease/epay/sdk/card/c/b;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/b;->d:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    const-string v1, "cardNo"

    invoke-static {v0, v1, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v1, "query_card_info.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/b$3;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/b$3;-><init>(Lcom/netease/epay/sdk/card/c/b;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 122
    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 43
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    const-string v1, "get_identity_info.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/b$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/b$1;-><init>(Lcom/netease/epay/sdk/card/c/b;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/a;->b()V

    .line 63
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/c/b;->a()V

    goto :goto_0
.end method

.method protected a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    if-eqz v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/epay/sdk/card/c/b;->c:Ljava/lang/String;

    move v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/card/ui/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/card/ui/b;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/card/ui/a;->addNextFragment2Activity(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;)V

    .line 142
    :cond_0
    return-void
.end method
