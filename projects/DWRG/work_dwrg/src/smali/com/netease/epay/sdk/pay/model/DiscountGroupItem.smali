.class public Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;
.super Ljava/lang/Object;
.source "DiscountGroupItem.java"


# static fields
.field public static promotionSize:I

.field public static redpaperSize:I

.field public static voucherDisableSize:I

.field public static voucherEnableSize:I


# instance fields
.field public amount:Ljava/lang/String;

.field public deadline:Ljava/lang/String;

.field public hasChild:Z

.field public isMark:Z

.field public isNeedExpand:Z

.field public isUseable:Z

.field public msg:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isNeedExpand:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->hasChild:Z

    return-void
.end method

.method public static getGroupList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    if-nez v0, :cond_0

    move-object v0, v5

    .line 76
    :goto_0
    return-object v0

    .line 27
    :cond_0
    sput v2, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->promotionSize:I

    .line 28
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->promotionSize:I

    move v1, v2

    .line 30
    :goto_1
    sget v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->promotionSize:I

    if-ge v1, v0, :cond_2

    .line 31
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Promotion;

    .line 32
    new-instance v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    invoke-direct {v6}, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;-><init>()V

    .line 33
    iget-object v3, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionName:Ljava/lang/String;

    iput-object v3, v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->name:Ljava/lang/String;

    .line 34
    const-string v3, "RANDOM"

    iget-object v7, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionType:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\u968f\u673a\u7acb\u51cf"

    :goto_2
    iput-object v3, v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->amount:Ljava/lang/String;

    .line 35
    iget-object v3, v0, Lcom/netease/epay/sdk/base/model/Promotion;->tag:Ljava/lang/String;

    iput-object v3, v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->tag:Ljava/lang/String;

    .line 36
    iget-object v3, v0, Lcom/netease/epay/sdk/base/model/Promotion;->msg:Ljava/lang/String;

    iput-object v3, v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->msg:Ljava/lang/String;

    .line 37
    iget-object v3, v0, Lcom/netease/epay/sdk/base/model/Promotion;->deadline:Ljava/lang/String;

    iput-object v3, v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->deadline:Ljava/lang/String;

    .line 38
    iput-boolean v4, v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    .line 39
    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    iput-boolean v0, v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isMark:Z

    .line 40
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 34
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\uffe5"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionAmount:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 43
    :cond_2
    sput v2, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherEnableSize:I

    .line 44
    sput v2, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherDisableSize:I

    .line 45
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v1, v2

    .line 46
    :goto_3
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 47
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Voucher;

    .line 48
    new-instance v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    invoke-direct {v3}, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;-><init>()V

    .line 49
    iget-object v6, v0, Lcom/netease/epay/sdk/base/model/Voucher;->voucherName:Ljava/lang/String;

    iput-object v6, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->name:Ljava/lang/String;

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\uffe5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/netease/epay/sdk/base/model/Voucher;->voucherAmount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->amount:Ljava/lang/String;

    .line 51
    iput-object v8, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->tag:Ljava/lang/String;

    .line 52
    iget-object v6, v0, Lcom/netease/epay/sdk/base/model/Voucher;->msg:Ljava/lang/String;

    iput-object v6, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->msg:Ljava/lang/String;

    .line 53
    iget-object v6, v0, Lcom/netease/epay/sdk/base/model/Voucher;->deadline:Ljava/lang/String;

    iput-object v6, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->deadline:Ljava/lang/String;

    .line 54
    iget-boolean v6, v0, Lcom/netease/epay/sdk/base/model/Voucher;->isUseable:Z

    iput-boolean v6, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    .line 55
    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/Voucher;->isMark:Z

    iput-boolean v0, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isMark:Z

    .line 56
    sget v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherEnableSize:I

    iget-boolean v0, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v0, :cond_3

    move v0, v4

    :goto_4
    add-int/2addr v0, v6

    sput v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherEnableSize:I

    .line 57
    sget v6, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherDisableSize:I

    iget-boolean v0, v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_5
    add-int/2addr v0, v6

    sput v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherDisableSize:I

    .line 58
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    move v0, v2

    .line 56
    goto :goto_4

    :cond_4
    move v0, v4

    .line 57
    goto :goto_5

    .line 61
    :cond_5
    sput v2, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->redpaperSize:I

    .line 62
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 63
    sput v4, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->redpaperSize:I

    .line 64
    new-instance v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;-><init>()V

    .line 65
    sget-object v1, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaoTotalTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->name:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaoTotalAmount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->amount:Ljava/lang/String;

    .line 67
    iput-object v8, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->tag:Ljava/lang/String;

    .line 68
    sget-object v1, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaoTotalNumsDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->msg:Ljava/lang/String;

    .line 69
    iput-object v8, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->deadline:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isUseable:Z

    iput-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isUseable:Z

    .line 71
    sget-object v1, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isMark:Z

    iput-boolean v1, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isMark:Z

    .line 72
    iput-boolean v4, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->isNeedExpand:Z

    .line 73
    iput-boolean v4, v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->hasChild:Z

    .line 74
    sget v1, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->promotionSize:I

    sget v2, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherEnableSize:I

    add-int/2addr v1, v2

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    move-object v0, v5

    .line 76
    goto/16 :goto_0
.end method

.method public static setDiscountData(I)V
    .locals 5
    .param p0, "markPosition"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 80
    move v1, v2

    :goto_0
    sget v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->promotionSize:I

    if-ge v1, v0, :cond_1

    .line 81
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Promotion;

    if-ne v1, p0, :cond_0

    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 81
    goto :goto_1

    :cond_1
    move v1, v2

    .line 83
    :goto_2
    sget v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherEnableSize:I

    if-ge v1, v0, :cond_3

    .line 84
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Voucher;

    sget v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->promotionSize:I

    sub-int v3, p0, v3

    if-ne v1, v3, :cond_2

    move v3, v4

    :goto_3
    iput-boolean v3, v0, Lcom/netease/epay/sdk/base/model/Voucher;->isMark:Z

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v3, v2

    .line 84
    goto :goto_3

    .line 86
    :cond_3
    sget v0, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->redpaperSize:I

    if-lez v0, :cond_4

    .line 87
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    sget v1, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->promotionSize:I

    sget v3, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->voucherEnableSize:I

    add-int/2addr v1, v3

    if-ne p0, v1, :cond_5

    :goto_4
    iput-boolean v4, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isMark:Z

    .line 89
    :cond_4
    return-void

    :cond_5
    move v4, v2

    .line 87
    goto :goto_4
.end method
