.class public Lcom/netease/epay/sdk/card/model/AddCardConfig;
.super Ljava/lang/Object;
.source "AddCardConfig.java"


# instance fields
.field public isAlwaysShowNameInputSecondPage:Z

.field public isShowNameFirstPage:Z

.field public isShowStepView:Z

.field public tipsFirstPage:Ljava/lang/String;

.field public titleFirstPage:Ljava/lang/String;

.field public titleSecondPage:Ljava/lang/String;

.field public titleThirdPage:Ljava/lang/String;

.field public type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "tipsFirstPage"    # Ljava/lang/String;
    .param p3, "isShowStepView"    # Z
    .param p4, "isAlwaysShowNameInputSecondPage"    # Z

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isAlwaysShowNameInputSecondPage:Z

    .line 16
    iput-object p1, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleThirdPage:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleSecondPage:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleFirstPage:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->tipsFirstPage:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isAlwaysShowNameInputSecondPage:Z

    .line 19
    if-nez p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isShowNameFirstPage:Z

    .line 20
    iput-boolean p3, p0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isShowStepView:Z

    .line 21
    return-void
.end method

.method public static getAddCardConfigByType(I)Lcom/netease/epay/sdk/card/model/AddCardConfig;
    .locals 5
    .param p0, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 31
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;

    const-string v1, "\u8bbe\u7f6e\u652f\u4ed8\u5bc6\u7801"

    const-string v2, "\u8bf7\u6dfb\u52a0\u6301\u5361\u4eba\u672c\u4eba\u7684\u94f6\u884c\u5361\u4ee5\u8bbe\u7f6e\u5bc6\u7801"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/netease/epay/sdk/card/model/AddCardConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 42
    :goto_0
    iput p0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->type:I

    .line 43
    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    .line 34
    new-instance v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;

    const-string v1, "\u5fd8\u8bb0\u652f\u4ed8\u5bc6\u7801"

    const-string v2, "\u8bf7\u6dfb\u52a0\u6301\u5361\u4eba\u672c\u4eba\u7684\u94f6\u884c\u5361\u4ee5\u627e\u56de\u5bc6\u7801"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/netease/epay/sdk/card/model/AddCardConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 36
    new-instance v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;

    const-string v1, "\u8eab\u4efd\u9a8c\u8bc1"

    const-string v2, "\u8bf7\u6dfb\u52a0\u6301\u5361\u4eba\u672c\u4eba\u7684\u94f6\u884c\u5361\u4ee5\u9a8c\u8bc1\u8eab\u4efd\u4fe1\u606f"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/netease/epay/sdk/card/model/AddCardConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;

    const-string v1, "\u6dfb\u52a0\u94f6\u884c\u5361"

    const-string v2, "\u8bf7\u6dfb\u52a0\u6301\u5361\u4eba\u672c\u4eba\u7684\u94f6\u884c\u5361"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/card/model/AddCardConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 39
    const-string v1, "\u586b\u5199\u94f6\u884c\u5361\u4fe1\u606f"

    iput-object v1, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleSecondPage:Ljava/lang/String;

    .line 40
    const-string v1, "\u586b\u5199\u9a8c\u8bc1\u7801"

    iput-object v1, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleThirdPage:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getValidateCardConfigByType(I)Lcom/netease/epay/sdk/card/model/AddCardConfig;
    .locals 5
    .param p0, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 49
    new-instance v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;

    const-string v1, "\u8bbe\u7f6e\u652f\u4ed8\u5bc6\u7801"

    const-string v2, "\u8bf7\u91cd\u65b0\u7ed1\u5b9a\u94f6\u884c\u5361\u4ee5\u8bbe\u7f6e\u5bc6\u7801"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/card/model/AddCardConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 55
    :goto_0
    iput p0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->type:I

    .line 56
    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 51
    new-instance v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;

    const-string v1, "\u8eab\u4efd\u9a8c\u8bc1"

    const-string v2, "\u8bf7\u91cd\u65b0\u7ed1\u5b9a\u94f6\u884c\u5361\u4ee5\u9a8c\u8bc1\u672c\u4eba\u8eab\u4efd\u4fe1\u606f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/card/model/AddCardConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;

    const-string v1, "\u5fd8\u8bb0\u652f\u4ed8\u5bc6\u7801"

    const-string v2, "\u8bf7\u91cd\u65b0\u7ed1\u5b9a\u94f6\u884c\u5361\u4ee5\u627e\u56de\u5bc6\u7801"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/card/model/AddCardConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
