.class Lcom/netease/ntunisdk/SdkNetease$payCallback;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/PaymentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNetease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "payCallback"
.end annotation


# instance fields
.field private order:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .param p2, "oi"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    .line 180
    return-void
.end method


# virtual methods
.method public onFinish(ILcom/netease/mpay/PaymentResult;)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "result"    # Lcom/netease/mpay/PaymentResult;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 186
    const-string v0, "UniSDK netease"

    const-string v1, "netease checkOrder finish, orderId=%s, status=%d, PaymentResult code:%d, PaymentResult msg:%s"

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Lcom/netease/mpay/PaymentResult;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p2}, Lcom/netease/mpay/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-nez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v7}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 215
    return-void

    .line 191
    :cond_0
    if-ne p1, v6, :cond_1

    .line 193
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 194
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p2}, Lcom/netease/mpay/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    if-ne p1, v7, :cond_2

    .line 197
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 198
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p2}, Lcom/netease/mpay/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    if-ne p1, v5, :cond_3

    .line 201
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 202
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p2}, Lcom/netease/mpay/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/SdkNetease;->resetCommonProp()V

    .line 204
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNetease;->loginDone(I)V

    goto :goto_0

    .line 205
    :cond_3
    if-ne p1, v8, :cond_4

    .line 207
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 208
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p2}, Lcom/netease/mpay/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 211
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease$payCallback;->order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p2}, Lcom/netease/mpay/PaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    goto :goto_0
.end method
