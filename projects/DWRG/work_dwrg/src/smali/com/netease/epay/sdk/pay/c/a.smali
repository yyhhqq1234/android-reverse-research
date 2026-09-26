.class public Lcom/netease/epay/sdk/pay/c/a;
.super Ljava/lang/Object;
.source "EpayPayActvPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;


# instance fields
.field private a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/PayingActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/c/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 36
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/i;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 80
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->f:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->e:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->c:Z

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    const-string v1, "get_ewallet_public_key.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    new-instance v4, Lcom/netease/epay/sdk/pay/c/a$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/pay/c/a$1;-><init>(Lcom/netease/epay/sdk/pay/c/a;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0

    .line 56
    :cond_1
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 57
    sget-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/o;->c()Lcom/netease/epay/sdk/pay/ui/o;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 62
    :cond_2
    const-string v0, "NATURAL"

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/m;->c()Lcom/netease/epay/sdk/pay/ui/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/p;->c()Lcom/netease/epay/sdk/pay/ui/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 72
    :cond_4
    sget-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    if-eqz v0, :cond_5

    .line 73
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/o;->c()Lcom/netease/epay/sdk/pay/ui/o;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 76
    :cond_5
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/p;->c()Lcom/netease/epay/sdk/pay/ui/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0
.end method
