.class Lcom/netease/ntunisdk/SdkNetease$2;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/mpay/QrCodeScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNetease;->presentQRCodeScanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNetease;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$2;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 823
    const-string v5, "UniSDK netease"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u7684\u4fe1\u606f\uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkNetease$2;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v6, ""

    invoke-static {v5, v8, v6}, Lcom/netease/ntunisdk/SdkNetease;->access$300(Lcom/netease/ntunisdk/SdkNetease;ILjava/lang/String;)V

    .line 829
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "UNISDK_JF_GAS3_URL"

    invoke-interface {v5, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "jfGas3Url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkNetease$2;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v6, "UNISDK_JF_GAS3_URL"

    invoke-virtual {v5, v6}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 835
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 837
    .local v1, "indexJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "index"

    invoke-virtual {v1, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 843
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    const-string v5, "query_index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :goto_1
    const-string v5, "UniSDK netease"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "post json index, queryIndexUrl:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;

    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease$2;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {v7, v8, p1, p2}, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wpost(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    .line 866
    .end local v1    # "indexJson":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 838
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "indexJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "UniSDK netease"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "indexJson JSONException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v5, "/query_index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 852
    .end local v1    # "indexJson":Lorg/json/JSONObject;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "CODE_SCANNER_PAY_URL"

    invoke-interface {v5, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "queryIndexUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 854
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkNetease$2;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    const-string v6, "CODE_SCANNER_PAY_URL"

    invoke-virtual {v5, v6}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 858
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 859
    const-string v5, "queryindex?index=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :goto_3
    const-string v5, "UniSDK netease"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get index,queryIndexUrl:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;

    iget-object v7, p0, Lcom/netease/ntunisdk/SdkNetease$2;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {v6, v7, p1, p2}, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    goto/16 :goto_2

    .line 861
    :cond_4
    const-string v5, "/queryindex?index=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
