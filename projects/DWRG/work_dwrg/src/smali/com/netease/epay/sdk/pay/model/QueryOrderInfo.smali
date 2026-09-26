.class public Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;
.super Ljava/lang/Object;
.source "QueryOrderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;
    }
.end annotation


# instance fields
.field public order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPaySuccess()Z
    .locals 2

    .prologue
    .line 25
    const-string v0, "3"

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->order:Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;->orderStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
