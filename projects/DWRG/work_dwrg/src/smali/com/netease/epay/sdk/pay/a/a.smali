.class public Lcom/netease/epay/sdk/pay/a/a;
.super Ljava/lang/Object;
.source "EpayQuotaDealer.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/a/a;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 147
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    const/16 v1, 0x322

    if-ne v0, v1, :cond_0

    .line 149
    const/4 v0, 0x1

    sput v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    .line 151
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/a/a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/a/a;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    const-string v2, "017109"

    iget-object v3, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    new-instance v1, Lcom/netease/epay/sdk/pay/a/a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/epay/sdk/pay/a/a$1;-><init>(Lcom/netease/epay/sdk/pay/a/a;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 139
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 140
    invoke-static {v1}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :cond_3
    const-string v2, "017110"

    iget-object v3, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "017111"

    iget-object v3, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    :cond_4
    new-instance v1, Lcom/netease/epay/sdk/pay/a/a$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/epay/sdk/pay/a/a$2;-><init>(Lcom/netease/epay/sdk/pay/a/a;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    goto :goto_1
.end method
