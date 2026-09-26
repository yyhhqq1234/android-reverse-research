.class Lcom/netease/epay/sdk/card/c/h$1$1;
.super Ljava/lang/Object;
.source "UpgradeIdentityAddCardSecondPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/h$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/c/h$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/h$1;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/h$1$1;->a:Lcom/netease/epay/sdk/card/c/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/h$1$1;->a:Lcom/netease/epay/sdk/card/c/h$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/c/h;->a(Lcom/netease/epay/sdk/card/c/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/h$1$1;->a:Lcom/netease/epay/sdk/card/c/h$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    const-string v1, "send_sign_authcode.htm"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/h$1$1;->a:Lcom/netease/epay/sdk/card/c/h$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    iget-object v2, v2, Lcom/netease/epay/sdk/card/c/h;->i:Lcom/netease/epay/sdk/NetCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/card/c/h;->a(Ljava/lang/String;Lcom/netease/epay/sdk/NetCallback;)V

    .line 49
    :cond_0
    return-void
.end method
