.class public Lcom/netease/epay/sdk/pay/ui/q;
.super Lcom/netease/epay/sdk/base/ui/WebViewFragment;
.source "WebPayFullFragment.java"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;-><init>()V

    return-void
.end method

.method public static a(ZLjava/lang/String;)Lcom/netease/epay/sdk/pay/ui/q;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/q;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/q;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v2, "WebView_postUrl"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "WebView_isNeedTitle"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/q;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/q;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/q;->a:Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/q;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/q;->a:Lorg/json/JSONObject;

    .line 44
    const-string v0, "query_order_info.htm"

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/q;->a:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/pay/ui/q$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/pay/ui/q$1;-><init>(Lcom/netease/epay/sdk/pay/ui/q;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method
