.class public Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;
.super Ljava/lang/Object;
.source "SupportCardTypeObj.java"


# instance fields
.field public banks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportBanks;",
            ">;"
        }
    .end annotation
.end field

.field public cardType:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public selectIndex:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "cardType"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportBanks;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "banks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SupportBanks;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->selectIndex:I

    .line 18
    iput-object p1, p0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->banks:Ljava/util/ArrayList;

    .line 19
    iput-object p2, p0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->cardType:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->description:Ljava/lang/String;

    .line 21
    return-void
.end method
