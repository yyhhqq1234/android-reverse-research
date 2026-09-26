.class Lcom/netease/epay/sdk/card/c/g$1$1;
.super Ljava/lang/Object;
.source "UpgradeIdentityAddCardFirstPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/g$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/c/g$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/g$1;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/g$1$1;->a:Lcom/netease/epay/sdk/card/c/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/g$1$1;->a:Lcom/netease/epay/sdk/card/c/g$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/g$1;->e:Lcom/netease/epay/sdk/card/c/g;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/c/g;->a(Lcom/netease/epay/sdk/card/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/g$1$1;->a:Lcom/netease/epay/sdk/card/c/g$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/g$1;->e:Lcom/netease/epay/sdk/card/c/g;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/g$1$1;->a:Lcom/netease/epay/sdk/card/c/g$1;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/card/c/g$1;->a:Z

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/g$1$1;->a:Lcom/netease/epay/sdk/card/c/g$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/card/c/g$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/g$1$1;->a:Lcom/netease/epay/sdk/card/c/g$1;

    iget-object v3, v3, Lcom/netease/epay/sdk/card/c/g$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/epay/sdk/card/c/g$1$1;->a:Lcom/netease/epay/sdk/card/c/g$1;

    iget-object v4, v4, Lcom/netease/epay/sdk/card/c/g$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/card/c/g;->b(Lcom/netease/epay/sdk/card/c/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
