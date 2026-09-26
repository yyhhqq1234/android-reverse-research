.class public Lcom/netease/epay/sdk/base/model/BankPayGateInfo;
.super Ljava/lang/Object;
.source "BankPayGateInfo.java"


# instance fields
.field public payGateInfo:Lcom/netease/epay/sdk/base/model/PayGateInfo;

.field public signAgreementInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
