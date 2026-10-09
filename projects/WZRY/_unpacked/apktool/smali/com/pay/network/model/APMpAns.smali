.class public Lcom/pay/network/model/APMpAns;
.super Lcom/pay/http/APBaseHttpAns;
.source "APMpAns.java"


# instance fields
.field private beginTime:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private firstsave_present_count:Ljava/lang/String;

.field private mGoodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pay/tool/APProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private mpJson:Ljava/lang/String;

.field private mpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mpPresentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mpValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pay/http/APHttpHandle;Lcom/pay/http/IAPHttpAnsObserver;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p1, "handle"    # Lcom/pay/http/APHttpHandle;
    .param p2, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pay/http/APHttpHandle;",
            "Lcom/pay/http/IAPHttpAnsObserver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pay/http/APBaseHttpReq;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "reqMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/pay/http/APBaseHttpReq;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pay/http/APBaseHttpAns;-><init>(Lcom/pay/http/APHttpHandle;Lcom/pay/http/IAPHttpAnsObserver;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->rate:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->firstsave_present_count:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->beginTime:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->endTime:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->mpJson:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->mpValueList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->mpPresentList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->mpList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pay/network/model/APMpAns;->mGoodsList:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public getBeginTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->beginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstsave_present_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->firstsave_present_count:Ljava/lang/String;

    return-object v0
.end method

.method public getMpJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->mpJson:Ljava/lang/String;

    return-object v0
.end method

.method public getMpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->mpList:Ljava/util/List;

    return-object v0
.end method

.method public getMpPresentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->mpPresentList:Ljava/util/List;

    return-object v0
.end method

.method public getMpValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->mpValueList:Ljava/util/List;

    return-object v0
.end method

.method public getProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pay/tool/APProductItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->mGoodsList:Ljava/util/List;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pay/network/model/APMpAns;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public onErrorAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 198
    return-void
.end method

.method public onFinishAns([BLcom/pay/http/APBaseHttpReq;)V
    .locals 13
    .param p1, "content"    # [B
    .param p2, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/pay/http/APBaseHttpAns;->onFinishAns([BLcom/pay/http/APBaseHttpReq;)V

    .line 52
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>([B)V

    .line 53
    .local v8, "resultData":Ljava/lang/String;
    iput-object v8, p0, Lcom/pay/network/model/APMpAns;->mpJson:Ljava/lang/String;

    .line 54
    const-string v10, "APMpAns"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resultData="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "ret"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/pay/network/model/APMpAns;->resultCode:I

    .line 108
    iget v10, p0, Lcom/pay/network/model/APMpAns;->resultCode:I

    if-nez v10, :cond_2

    .line 115
    const-string v10, "product_list"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 116
    const-string v10, "product_list"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 117
    .local v2, "goodsList":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/pay/network/model/APMpAns;->mGoodsList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 118
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 119
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 120
    .local v6, "object":Lorg/json/JSONObject;
    new-instance v1, Lcom/pay/tool/APProductItem;

    invoke-direct {v1}, Lcom/pay/tool/APProductItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v1, "goodsItem":Lcom/pay/tool/APProductItem;
    :try_start_1
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/pay/tool/APProductItem;->name:Ljava/lang/String;

    .line 123
    const-string v10, "productid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/pay/tool/APProductItem;->productId:Ljava/lang/String;

    .line 124
    const-string v10, "price"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/pay/tool/APProductItem;->price:Ljava/lang/String;

    .line 125
    const-string v10, "num"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/pay/tool/APProductItem;->num:Ljava/lang/String;

    .line 126
    iget-object v10, p0, Lcom/pay/network/model/APMpAns;->mGoodsList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "goodsItem":Lcom/pay/tool/APProductItem;
    .end local v2    # "goodsList":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    const-string v10, "rate"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pay/network/model/APMpAns;->rate:Ljava/lang/String;

    .line 134
    const-string v10, "list"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "list":Ljava/lang/String;
    iget-object v10, p0, Lcom/pay/network/model/APMpAns;->mpList:Ljava/util/List;

    invoke-static {v5, v10}, Lcom/pay/network/model/APCommMethod;->transformStrToList(Ljava/lang/String;Ljava/util/List;)V

    .line 137
    const-string v10, "firstsave_present_count"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pay/network/model/APMpAns;->firstsave_present_count:Ljava/lang/String;

    .line 138
    const-string v10, "present_level"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "present_level":Ljava/lang/String;
    iget-object v10, p0, Lcom/pay/network/model/APMpAns;->mpValueList:Ljava/util/List;

    iget-object v11, p0, Lcom/pay/network/model/APMpAns;->mpPresentList:Ljava/util/List;

    invoke-static {v7, v10, v11}, Lcom/pay/network/model/APCommMethod;->transformStrToMpInfoList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 141
    const-string v10, "begin_time"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pay/network/model/APMpAns;->beginTime:Ljava/lang/String;

    .line 142
    const-string v10, "end_time"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pay/network/model/APMpAns;->endTime:Ljava/lang/String;

    .line 153
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "list":Ljava/lang/String;
    .end local v7    # "present_level":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 144
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const-string v10, "msg"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pay/network/model/APMpAns;->resultMsg:Ljava/lang/String;

    .line 145
    const-string v10, "err_code"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "strError":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 147
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u7cfb\u7edf\u7e41\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5\n("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/pay/network/model/APMpAns;->resultMsg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 150
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "strError":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "goodsItem":Lcom/pay/tool/APProductItem;
    .restart local v2    # "goodsList":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public onReceiveAns([BIJLcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "b"    # I
    .param p3, "downsize"    # J
    .param p5, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 47
    return-void
.end method

.method public onStartAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 41
    return-void
.end method

.method public onStopAns(Lcom/pay/http/APBaseHttpReq;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/pay/http/APBaseHttpReq;

    .prologue
    .line 203
    return-void
.end method

.method public setBeginTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "beginTime"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/pay/network/model/APMpAns;->beginTime:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/pay/network/model/APMpAns;->endTime:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setFirstsave_present_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstsave_present_count"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/pay/network/model/APMpAns;->firstsave_present_count:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setMpList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "mpList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/pay/network/model/APMpAns;->mpList:Ljava/util/List;

    .line 161
    return-void
.end method

.method public setMpPresentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "mpPresentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/pay/network/model/APMpAns;->mpPresentList:Ljava/util/List;

    .line 219
    return-void
.end method

.method public setMpValueList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "mpValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/pay/network/model/APMpAns;->mpValueList:Ljava/util/List;

    .line 211
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/pay/network/model/APMpAns;->rate:Ljava/lang/String;

    .line 169
    return-void
.end method
