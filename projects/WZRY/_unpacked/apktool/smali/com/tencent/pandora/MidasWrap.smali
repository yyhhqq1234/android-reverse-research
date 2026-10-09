.class public Lcom/tencent/pandora/MidasWrap;
.super Ljava/lang/Object;
.source "MidasWrap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launchPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "env"    # Ljava/lang/String;
    .param p2, "offerId"    # Ljava/lang/String;
    .param p3, "openId"    # Ljava/lang/String;
    .param p4, "openKey"    # Ljava/lang/String;
    .param p5, "sessionId"    # Ljava/lang/String;
    .param p6, "sessionType"    # Ljava/lang/String;
    .param p7, "zoneId"    # Ljava/lang/String;
    .param p8, "pf"    # Ljava/lang/String;
    .param p9, "pfKey"    # Ljava/lang/String;
    .param p10, "goodsTokenUrl"    # Ljava/lang/String;
    .param p11, "obj"    # Ljava/lang/String;
    .param p12, "callbackMethod"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v8, "Unity MidasWrap"

    .line 29
    .local v8, "TAG":Ljava/lang/String;
    const-string v1, "Unity MidasWrap"

    const-string v12, "MidasWrap"

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    move-object v11, p0

    .line 31
    .local v11, "theContext":Landroid/content/Context;
    move-object/from16 v2, p11

    .line 32
    .local v2, "unityObject":Ljava/lang/String;
    move-object/from16 v3, p12

    .line 34
    .local v3, "unityMethod":Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/midas/api/APMidasPayAPI;->setEnv(Ljava/lang/String;)V

    .line 35
    new-instance v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    invoke-direct {v10}, Lcom/tencent/midas/api/request/APMidasGoodsRequest;-><init>()V

    .line 36
    .local v10, "request":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    iput-object p2, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->offerId:Ljava/lang/String;

    .line 37
    move-object/from16 v0, p3

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->openId:Ljava/lang/String;

    .line 38
    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->openKey:Ljava/lang/String;

    .line 39
    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->sessionId:Ljava/lang/String;

    .line 40
    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->sessionType:Ljava/lang/String;

    .line 41
    move-object/from16 v0, p7

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->zoneId:Ljava/lang/String;

    .line 42
    move-object/from16 v0, p8

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->pf:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p9

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->pfKey:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p10

    iput-object v0, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 45
    const/4 v1, 0x1

    iput v1, v10, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    .line 47
    invoke-static {v11, v10}, Lcom/tencent/midas/api/APMidasPayAPI;->init(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "\"offerId\":\""

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const-string v12, "\"openId\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    const-string v12, "\"openKey\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string v12, "\"sessionId\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string v12, "\"sessionType\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string v12, "\"zoneId\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    const-string v12, "\"pf\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    const-string v12, "\"pfKey\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    const-string v12, "\"goodsTokenUrl\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    const-string v12, "\"tokenType\":\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "\""

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "jsonParams":Ljava/lang/String;
    const-string v1, "Unity MidasWrap"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{\"context\":{"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "},\"result\":\"success\"}"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "jsonSuccess":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{\"context\":{"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "},\"result\":\"cancel\"}"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "jsonCancel":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{\"context\":{"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "},\"result\":\"expire\"}"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "jsonExpire":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{\"context\":{"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, "},\"result\":\"fail\"}"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "jsonFail":Ljava/lang/String;
    check-cast v11, Landroid/app/Activity;

    .line 69
    .end local v11    # "theContext":Landroid/content/Context;
    new-instance v1, Lcom/tencent/pandora/MidasWrap$1;

    invoke-direct/range {v1 .. v7}, Lcom/tencent/pandora/MidasWrap$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v11, v10, v1}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 104
    return-void
.end method
