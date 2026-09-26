.class Lcom/netease/epay/sdk/risk/ui/c$3;
.super Ljava/lang/Object;
.source "RiskGeneralFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/risk/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/ui/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/ui/c;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/c$3;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 180
    const-string v1, "get_authorized_generalToken_sign.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/risk/ui/c$3;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/risk/ui/c$3$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/risk/ui/c$3$1;-><init>(Lcom/netease/epay/sdk/risk/ui/c$3;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 193
    return-void
.end method
