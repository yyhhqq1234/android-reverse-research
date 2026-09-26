.class Lcom/netease/epay/sdk/risk/a/b$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "EpayRiskVoicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/risk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/SmsCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/a/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/a/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/a/b$1;->a:Lcom/netease/epay/sdk/risk/a/b;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SmsCode;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/a/b$1;->a:Lcom/netease/epay/sdk/risk/a/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/a/b;->a(Lcom/netease/epay/sdk/risk/a/b;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    const-string v1, "6\u4f4d\u8bed\u97f3\u9a8c\u8bc1\u7801"

    const-string v2, "\u7f51\u6613\u514d\u8d39\u7535\u8bdd\u5c06\u4f1a\u62e8\u81f3\uff1a%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/epay/sdk/risk/a/b$1;->a:Lcom/netease/epay/sdk/risk/a/b;

    iget-object v4, v4, Lcom/netease/epay/sdk/risk/a/b;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/netease/epay/sdk/risk/ui/e;->a(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    .line 61
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 7
    .param p1, "resp"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/a/b$1;->a:Lcom/netease/epay/sdk/risk/a/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/a/b;->a(Lcom/netease/epay/sdk/risk/a/b;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/a/b$1;->a:Lcom/netease/epay/sdk/risk/a/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/a/b;->a(Lcom/netease/epay/sdk/risk/a/b;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    const-string v1, "6\u4f4d\u8bed\u97f3\u9a8c\u8bc1\u7801"

    const-string v2, "\u7f51\u6613\u514d\u8d39\u7535\u8bdd\u5c06\u4f1a\u62e8\u81f3\uff1a%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/epay/sdk/risk/a/b$1;->a:Lcom/netease/epay/sdk/risk/a/b;

    iget-object v4, v4, Lcom/netease/epay/sdk/risk/a/b;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/netease/epay/sdk/risk/ui/e;->a(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    .line 67
    return v6
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p2, Lcom/netease/epay/sdk/base/model/SmsCode;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/risk/a/b$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SmsCode;)V

    return-void
.end method
