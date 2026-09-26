.class public Lcom/netease/epay/sdk/pay/model/QueryOrderInfo$Order;
.super Ljava/lang/Object;
.source "QueryOrderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Order"
.end annotation


# instance fields
.field public behavior:Ljava/lang/String;

.field public handFee:Ljava/lang/String;

.field public orderAmount:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public orderName:Ljava/lang/String;

.field public orderStatus:Ljava/lang/String;

.field public orderStatusDesc:Ljava/lang/String;

.field public orderTime:Ljava/lang/String;

.field public platformName:Ljava/lang/String;

.field public userNotes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
