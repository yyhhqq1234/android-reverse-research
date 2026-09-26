.class Lcom/netease/epay/sdk/risk/ui/c$4;
.super Ljava/lang/Object;
.source "RiskGeneralFragment.java"

# interfaces
.implements Lcom/netease/mkey/loginsdk/LoginCallback;


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
    .line 196
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u81ea\u52a8\u6821\u9a8c"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v2

    .line 204
    const-string v3, "isEnterAssistPwd"

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/ui/c;->a(Lcom/netease/epay/sdk/risk/ui/c;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/ui/c;->a(Lcom/netease/epay/sdk/risk/ui/c;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v0, "authorized_validate_generalToken.htm"

    iget-object v3, p0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/risk/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/risk/ui/c$4$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/risk/ui/c$4$1;-><init>(Lcom/netease/epay/sdk/risk/ui/c$4;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 204
    goto :goto_1
.end method
