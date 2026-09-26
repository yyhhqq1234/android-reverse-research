.class public Lcom/netease/epay/sdk/pay/c;
.super Ljava/lang/Object;
.source "PayData.java"


# static fields
.field public static a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

.field public static b:Lcom/netease/epay/sdk/pay/model/Deduction;

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Lcom/netease/epay/sdk/base/network/IParamsCallback;

.field public static h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;


# direct methods
.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sput-object v1, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    .line 26
    sput-object v1, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->f:Z

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->e:Z

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->d:Z

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->c:Z

    .line 28
    sput-object v1, Lcom/netease/epay/sdk/pay/c;->g:Lcom/netease/epay/sdk/base/network/IParamsCallback;

    .line 29
    sput-object v1, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    .line 30
    return-void
.end method
