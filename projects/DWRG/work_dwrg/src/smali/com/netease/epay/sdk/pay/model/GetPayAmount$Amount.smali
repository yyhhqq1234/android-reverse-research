.class public Lcom/netease/epay/sdk/pay/model/GetPayAmount$Amount;
.super Ljava/lang/Object;
.source "GetPayAmount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/model/GetPayAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Amount"
.end annotation


# instance fields
.field public deductionDetail:Lcom/netease/epay/sdk/pay/model/Deduction;

.field public orderAmount:Ljava/lang/String;

.field public payOrderAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
