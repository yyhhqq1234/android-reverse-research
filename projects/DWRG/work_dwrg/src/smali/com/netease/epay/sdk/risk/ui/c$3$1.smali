.class Lcom/netease/epay/sdk/risk/ui/c$3$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "RiskGeneralFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/ui/c$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/risk/model/GeneralTokenSign;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/ui/c$3;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/ui/c$3;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/c$3$1;->a:Lcom/netease/epay/sdk/risk/ui/c$3;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/risk/model/GeneralTokenSign;)V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$3$1;->a:Lcom/netease/epay/sdk/risk/ui/c$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/risk/ui/c$3;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/epay/sdk/risk/model/GeneralTokenSign;->pid:Ljava/lang/String;

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/epay/sdk/risk/model/GeneralTokenSign;->sign:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/epay/sdk/risk/ui/c$3$1;->a:Lcom/netease/epay/sdk/risk/ui/c$3;

    iget-object v5, v5, Lcom/netease/epay/sdk/risk/ui/c$3;->a:Lcom/netease/epay/sdk/risk/ui/c;

    iget-object v5, v5, Lcom/netease/epay/sdk/risk/ui/c;->c:Lcom/netease/mkey/loginsdk/LoginCallback;

    invoke-static/range {v0 .. v5}, Lcom/netease/mkey/loginsdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mkey/loginsdk/LoginCallback;)V

    .line 185
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 3
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$3$1;->a:Lcom/netease/epay/sdk/risk/ui/c$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/risk/ui/c$3;->a:Lcom/netease/epay/sdk/risk/ui/c;

    iget-object v0, v0, Lcom/netease/epay/sdk/risk/ui/c;->c:Lcom/netease/mkey/loginsdk/LoginCallback;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/mkey/loginsdk/LoginCallback;->onError(ILjava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p2, Lcom/netease/epay/sdk/risk/model/GeneralTokenSign;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/risk/ui/c$3$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/risk/model/GeneralTokenSign;)V

    return-void
.end method
