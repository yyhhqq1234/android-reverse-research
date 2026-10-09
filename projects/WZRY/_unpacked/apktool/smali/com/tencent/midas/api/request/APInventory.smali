.class public Lcom/tencent/midas/api/request/APInventory;
.super Ljava/lang/Object;
.source "APInventory.java"


# instance fields
.field public mPurchaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/api/request/APPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/midas/api/request/APPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "inv"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseList:Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0, p1}, Lcom/tencent/midas/api/request/APInventory;->parsePurchse(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private parsePurchse(Ljava/lang/String;)V
    .locals 9
    .param p1, "recInfo"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/api/request/APPurchase;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 42
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "sign"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 44
    .local v6, "sign":Ljava/lang/String;
    new-instance v5, Lcom/tencent/midas/api/request/APPurchase;

    invoke-direct {v5, v1, v6}, Lcom/tencent/midas/api/request/APPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v5, "purchase":Lcom/tencent/midas/api/request/APPurchase;
    iget-object v7, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/tencent/midas/api/request/APPurchase;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v7, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "purchase":Lcom/tencent/midas/api/request/APPurchase;
    .end local v6    # "sign":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method


# virtual methods
.method public erasePurchase(Ljava/lang/String;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method

.method getAllOwnedSkus()Ljava/util/List;
    .locals 2
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
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAllPurchases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/midas/api/request/APPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/tencent/midas/api/request/APPurchase;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/midas/api/request/APPurchase;

    return-object v0
.end method

.method public getPurchaseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/midas/api/request/APPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/midas/api/request/APInventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
