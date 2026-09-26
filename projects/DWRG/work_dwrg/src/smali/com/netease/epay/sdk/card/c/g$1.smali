.class Lcom/netease/epay/sdk/card/c/g$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "UpgradeIdentityAddCardFirstPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/epay/sdk/card/c/g;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/g$1;->e:Lcom/netease/epay/sdk/card/c/g;

    iput-boolean p2, p0, Lcom/netease/epay/sdk/card/c/g$1;->a:Z

    iput-object p3, p0, Lcom/netease/epay/sdk/card/c/g$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/epay/sdk/card/c/g$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/epay/sdk/card/c/g$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;)V
    .locals 5

    .prologue
    .line 46
    iget-boolean v0, p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;->isAllowUpgrade:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/g$1;->e:Lcom/netease/epay/sdk/card/c/g;

    iget-boolean v1, p0, Lcom/netease/epay/sdk/card/c/g$1;->a:Z

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/g$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/g$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/epay/sdk/card/c/g$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/card/c/g;->a(Lcom/netease/epay/sdk/card/c/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/g$1;->e:Lcom/netease/epay/sdk/card/c/g;

    iget-boolean v1, p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;->isAllowSign:Z

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/card/c/g;->a(Lcom/netease/epay/sdk/card/c/g;Z)Z

    .line 50
    const-string v0, "code"

    iget-object v1, p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;->unSupportDesc:Ljava/lang/String;

    new-instance v2, Lcom/netease/epay/sdk/card/c/g$1$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/card/c/g$1$1;-><init>(Lcom/netease/epay/sdk/card/c/g$1;)V

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/g$1;->e:Lcom/netease/epay/sdk/card/c/g;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/g;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "WarningFragment"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/g$1;->e:Lcom/netease/epay/sdk/card/c/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/g;->a:Lcom/netease/epay/sdk/card/ui/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/a;->a(Z)V

    .line 42
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/c/g$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;)V

    return-void
.end method
