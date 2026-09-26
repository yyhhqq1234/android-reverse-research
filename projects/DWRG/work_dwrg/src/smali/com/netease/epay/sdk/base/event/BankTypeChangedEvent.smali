.class public Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;
.super Ljava/lang/Object;
.source "BankTypeChangedEvent.java"


# instance fields
.field public card:Lcom/netease/epay/sdk/base/model/SupportBanks;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/base/model/SupportBanks;)V
    .locals 0
    .param p1, "card"    # Lcom/netease/epay/sdk/base/model/SupportBanks;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;->card:Lcom/netease/epay/sdk/base/model/SupportBanks;

    .line 14
    return-void
.end method
