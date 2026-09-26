.class public Lcom/netease/epay/sdk/base/model/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netease/epay/sdk/base/model/IPayChooser;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netease/epay/sdk/base/model/Card;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bankAccountName:Ljava/lang/String;

.field public bankId:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public bankStyleColor:Ljava/lang/String;

.field public bankStyleId:Ljava/lang/String;

.field private cardComplete:Z

.field private cardId:Ljava/lang/String;

.field public cardLimit:Ljava/lang/String;

.field public cardNoTail:Ljava/lang/String;

.field public cardNumber:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public finishTimeDesc:Ljava/lang/String;

.field private isBankSend:Z

.field public isCardInfoAndUserInfoFit:Z

.field private limitPerDay:Ljava/lang/String;

.field private limitPerDeal:Ljava/lang/String;

.field private mobilePhone:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private quickPayId:Ljava/lang/String;

.field public useable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/netease/epay/sdk/base/model/Card$1;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/model/Card$1;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base/model/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankId:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankStyleId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankName:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardNoTail:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardType:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->quickPayId:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->useable:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->mobilePhone:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/model/Card;->isBankSend:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->msg:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDeal:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDay:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->finishTimeDesc:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/model/Card;->cardComplete:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardId:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardNumber:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankAccountName:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankStyleColor:Ljava/lang/String;

    .line 216
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v1, v2

    .line 211
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netease/epay/sdk/base/model/Card$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/netease/epay/sdk/base/model/Card$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/model/Card;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static cardsLength()I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static checkIndexInvalid(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 69
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/netease/epay/sdk/base/model/Card;->cardsLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBankCardDesp(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardBankName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardTail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCardDesFromCardType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cardType"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "debit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "\u50a8\u84c4\u5361"

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-string v0, "credit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "\u4fe1\u7528\u5361"

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSelectedCard(I)Lcom/netease/epay/sdk/base/model/Card;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 166
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    goto :goto_0
.end method

.method public static getSelectedCardBankName(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 119
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, ""

    .line 122
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->bankName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSelectedCardBankQuickPayId(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 62
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, ""

    .line 65
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSelectedCardBankStyleId(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 73
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "null"

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->bankStyleId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSelectedCardFinishDesp(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 137
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, ""

    .line 140
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->finishTimeDesc:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSelectedCardLimitDay(I)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDay:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDay:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getSelectedCardLimitDeal(I)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 96
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDeal:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDeal:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getSelectedCardLimitDesp(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5355\u7b14\u9650\u989d \u00a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardLimitDeal(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1b\u5355\u65e5\u9650\u989d \u00a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardLimitDay(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedCardMobile(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 159
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, ""

    .line 162
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->mobilePhone:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSelectedCardMsg(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 144
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, ""

    .line 147
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSelectedCardTail(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 126
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "(\u5c3e\u53f7)"

    .line 129
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\u5c3e\u53f7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->cardNoTail:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSelectedCardType(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 80
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "\u50a8\u84c4\u5361"

    .line 83
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->cardType:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getCardDesFromCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasCards()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/netease/epay/sdk/base/model/Card;->cardsLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasUsableCards()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {}, Lcom/netease/epay/sdk/base/model/Card;->cardsLength()I

    move-result v0

    if-gtz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 46
    :goto_1
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 47
    const-string v3, "USEABLE"

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->useable:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static isSelectedCardBankSend(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 151
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/Card;->isBankSend:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSelectedCardInfoCompleted(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 155
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/Card;->cardComplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSelectedCardUsable(I)Z
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 133
    invoke-static {p0}, Lcom/netease/epay/sdk/base/model/Card;->checkIndexInvalid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "USEABLE"

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Card;->useable:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getBankId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankStyleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBankQuickPayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->quickPayId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->quickPayId:Ljava/lang/String;

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDesp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/epay/sdk/base/model/Card;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/model/Card;->cardType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/model/Card;->getCardDesFromCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u5c3e\u53f7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/model/Card;->cardNoTail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsable()Z
    .locals 2

    .prologue
    .line 237
    const-string v0, "USEABLE"

    iget-object v1, p0, Lcom/netease/epay/sdk/base/model/Card;->useable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankStyleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardNoTail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->quickPayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->useable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->mobilePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/model/Card;->isBankSend:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDeal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->limitPerDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->finishTimeDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardComplete:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 191
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/netease/epay/sdk/base/model/Card;->bankStyleColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return-void

    :cond_0
    move v0, v2

    .line 185
    goto :goto_0

    :cond_1
    move v1, v2

    .line 190
    goto :goto_1
.end method
