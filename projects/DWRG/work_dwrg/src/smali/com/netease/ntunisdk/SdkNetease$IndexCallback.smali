.class Lcom/netease/ntunisdk/SdkNetease$IndexCallback;
.super Ljava/lang/Object;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNetease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexCallback"
.end annotation


# instance fields
.field private dataId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNetease;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    .line 1053
    iput-object p3, p0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    .line 1054
    return-void
.end method


# virtual methods
.method public ProcessResult(Ljava/lang/String;)V
    .locals 37
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1063
    const-string v32, "UniSDK netease"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "queryIndexUrl res:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 1066
    const-string v32, "UniSDK netease"

    const-string v33, "\u83b7\u53d6index\u5931\u8d25"

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    new-instance v19, Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v32, "-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v19, "order":Lcom/netease/ntunisdk/base/OrderInfo;
    const/16 v32, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1069
    const-string v32, "\u83b7\u53d6index\u5931\u8d25"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1070
    const/16 v32, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 1209
    :goto_0
    return-void

    .line 1075
    .end local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    :cond_0
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v16, "jsonRes":Lorg/json/JSONObject;
    const-string v32, "code"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 1078
    .local v7, "code":I
    const/16 v32, 0xc8

    move/from16 v0, v32

    if-ne v0, v7, :cond_9

    .line 1079
    const-string v32, "data"

    const-string v33, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1081
    .local v9, "data":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/netease/ntunisdk/SdkNetease;->access$700([B)Ljava/lang/String;

    move-result-object v6

    .line 1082
    .local v6, "checkIndex":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 1083
    new-instance v15, Ljava/lang/String;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-static {v9, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    const-string v33, "UTF-8"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1084
    .local v15, "jsonData":Ljava/lang/String;
    const-string v32, "UniSDK netease"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "queryIndexUrl data:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v14, "json":Lorg/json/JSONObject;
    const-string v32, "uid"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1087
    .local v12, "guid":Ljava/lang/String;
    const-string v32, "UniSDK netease"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "web uid:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", mobile uid:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v34

    const-string v35, "UIN"

    invoke-interface/range {v34 .. v35}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v32

    const-string v33, "UIN"

    invoke-interface/range {v32 .. v33}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 1089
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v32

    check-cast v32, Lcom/netease/ntunisdk/base/SdkBase;

    new-instance v33, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-direct/range {v33 .. v36}, Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;-><init>(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Lcom/netease/ntunisdk/base/SdkBase;->setWebOrderByCodeScannerListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    .line 1091
    const-string v32, "count"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1092
    .local v8, "count":Ljava/lang/String;
    const-string v32, "serverid"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1093
    .local v30, "serverid":Ljava/lang/String;
    const-string v32, "roleid"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1094
    .local v26, "roleid":Ljava/lang/String;
    const-string v32, "pid"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1095
    .local v22, "pid":Ljava/lang/String;
    const-string v32, "rolename"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1096
    .local v28, "rolename":Ljava/lang/String;
    const-string v32, "vip_level"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1097
    .local v31, "vip_level":Ljava/lang/String;
    const-string v32, "rolelv"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1098
    .local v27, "rolelv":Ljava/lang/String;
    const-string v32, "aid"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, "aid":Ljava/lang/String;
    const-string v32, "UniSDK netease"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "aid:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v32, "privateparam"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1101
    .local v23, "privateparam":Ljava/lang/String;
    const-string v13, "0"

    .line 1102
    .local v13, "hostname":Ljava/lang/String;
    const-string v5, "1"

    .line 1103
    .local v5, "by_unisdk":Ljava/lang/String;
    const-string v18, "0"

    .line 1104
    .local v18, "left_money":Ljava/lang/String;
    const-string v20, "0"

    .line 1105
    .local v20, "org_name":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_5

    invoke-static/range {v23 .. v23}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 1106
    new-instance v24, Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v32

    const-string v33, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1107
    .local v24, "privateparamValue":Ljava/lang/String;
    const-string v32, "UniSDK netease"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "privateparam:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v32, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1110
    .local v21, "params":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v33, v0

    const/16 v32, 0x0

    :goto_1
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_5

    aget-object v29, v21, v32

    .line 1111
    .local v29, "s":Ljava/lang/String;
    const-string v34, "="

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1112
    .local v17, "kv":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_1

    .line 1113
    const-string v34, "hostname"

    const/16 v35, 0x0

    aget-object v35, v17, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 1114
    const/16 v34, 0x1

    aget-object v13, v17, v34

    .line 1110
    :cond_1
    :goto_2
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .line 1115
    :cond_2
    const-string v34, "by_unisdk"

    const/16 v35, 0x0

    aget-object v35, v17, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 1116
    const/16 v34, 0x1

    aget-object v5, v17, v34

    goto :goto_2

    .line 1117
    :cond_3
    const-string v34, "left_money"

    const/16 v35, 0x0

    aget-object v35, v17, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 1118
    const/16 v34, 0x1

    aget-object v18, v17, v34

    goto :goto_2

    .line 1119
    :cond_4
    const-string v34, "org_name"

    const/16 v35, 0x0

    aget-object v35, v17, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 1120
    const/16 v34, 0x1

    aget-object v20, v17, v34

    goto :goto_2

    .line 1126
    .end local v17    # "kv":[Ljava/lang/String;
    .end local v21    # "params":[Ljava/lang/String;
    .end local v24    # "privateparamValue":Ljava/lang/String;
    .end local v29    # "s":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v32

    const-string v33, "UNISDK_SERVER_PRIVATEPARAM"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v25, "qrCodeParams":Lorg/json/JSONObject;
    const-string v32, "UIN"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1131
    const-string v32, "USERINFO_HOSTID"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1132
    const-string v32, "USERINFO_HOSTNAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1133
    const-string v32, "USERINFO_BALANCE"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1134
    const-string v32, "USERINFO_ORG"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1135
    const-string v32, "USERINFO_UID"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1136
    const-string v32, "USERINFO_NAME"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1137
    const-string v32, "USERINFO_VIP"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1138
    const-string v32, "USERINFO_GRADE"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1140
    :try_start_1
    const-string v32, "USERINFO_AID"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1144
    :goto_3
    :try_start_2
    const-string v32, "GAME_UID"

    const-string v33, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    const-string v32, "UNISDK_EXT_INFO"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1147
    new-instance v19, Lcom/netease/ntunisdk/base/OrderInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 1148
    .restart local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V

    .line 1149
    invoke-virtual/range {v19 .. v19}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderDesc(Ljava/lang/String;)V

    .line 1150
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v32

    const-string v33, "currency"

    invoke-interface/range {v32 .. v33}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_6

    const-string v32, "\u4ed9\u7389"

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderCurrency(Ljava/lang/String;)V

    .line 1151
    const/16 v32, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    .line 1152
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setQrCodeParams(Ljava/lang/String;)V

    .line 1153
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1189
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "by_unisdk":Ljava/lang/String;
    .end local v6    # "checkIndex":Ljava/lang/String;
    .end local v7    # "code":I
    .end local v8    # "count":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v12    # "guid":Ljava/lang/String;
    .end local v13    # "hostname":Ljava/lang/String;
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v15    # "jsonData":Ljava/lang/String;
    .end local v16    # "jsonRes":Lorg/json/JSONObject;
    .end local v18    # "left_money":Ljava/lang/String;
    .end local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    .end local v20    # "org_name":Ljava/lang/String;
    .end local v22    # "pid":Ljava/lang/String;
    .end local v23    # "privateparam":Ljava/lang/String;
    .end local v25    # "qrCodeParams":Lorg/json/JSONObject;
    .end local v26    # "roleid":Ljava/lang/String;
    .end local v27    # "rolelv":Ljava/lang/String;
    .end local v28    # "rolename":Ljava/lang/String;
    .end local v30    # "serverid":Ljava/lang/String;
    .end local v31    # "vip_level":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1190
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 1191
    const-string v32, "UniSDK netease"

    const-string v33, "\u6570\u636ejson\u89e3\u6790\u9519\u8bef"

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    new-instance v19, Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v32, "-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 1193
    .restart local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    const/16 v32, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1194
    const-string v32, "\u6570\u636ejson\u89e3\u6790\u9519\u8bef"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1195
    const/16 v32, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    goto/16 :goto_0

    .line 1141
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    .restart local v4    # "aid":Ljava/lang/String;
    .restart local v5    # "by_unisdk":Ljava/lang/String;
    .restart local v6    # "checkIndex":Ljava/lang/String;
    .restart local v7    # "code":I
    .restart local v8    # "count":Ljava/lang/String;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v12    # "guid":Ljava/lang/String;
    .restart local v13    # "hostname":Ljava/lang/String;
    .restart local v14    # "json":Lorg/json/JSONObject;
    .restart local v15    # "jsonData":Ljava/lang/String;
    .restart local v16    # "jsonRes":Lorg/json/JSONObject;
    .restart local v18    # "left_money":Ljava/lang/String;
    .restart local v20    # "org_name":Ljava/lang/String;
    .restart local v22    # "pid":Ljava/lang/String;
    .restart local v23    # "privateparam":Ljava/lang/String;
    .restart local v25    # "qrCodeParams":Lorg/json/JSONObject;
    .restart local v26    # "roleid":Ljava/lang/String;
    .restart local v27    # "rolelv":Ljava/lang/String;
    .restart local v28    # "rolename":Ljava/lang/String;
    .restart local v30    # "serverid":Ljava/lang/String;
    .restart local v31    # "vip_level":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1142
    .local v10, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v32, "UniSDK netease"

    const-string v33, "aid parseInt exception"

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 1198
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "by_unisdk":Ljava/lang/String;
    .end local v6    # "checkIndex":Ljava/lang/String;
    .end local v7    # "code":I
    .end local v8    # "count":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "guid":Ljava/lang/String;
    .end local v13    # "hostname":Ljava/lang/String;
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v15    # "jsonData":Ljava/lang/String;
    .end local v16    # "jsonRes":Lorg/json/JSONObject;
    .end local v18    # "left_money":Ljava/lang/String;
    .end local v20    # "org_name":Ljava/lang/String;
    .end local v22    # "pid":Ljava/lang/String;
    .end local v23    # "privateparam":Ljava/lang/String;
    .end local v25    # "qrCodeParams":Lorg/json/JSONObject;
    .end local v26    # "roleid":Ljava/lang/String;
    .end local v27    # "rolelv":Ljava/lang/String;
    .end local v28    # "rolename":Ljava/lang/String;
    .end local v30    # "serverid":Ljava/lang/String;
    .end local v31    # "vip_level":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1199
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1200
    const-string v32, "UniSDK netease"

    const-string v33, "\u6570\u636e\u7f16\u7801\u9519\u8bef"

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    new-instance v19, Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v32, "-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 1202
    .restart local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    const/16 v32, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1203
    const-string v32, "\u6570\u636e\u7f16\u7801\u9519\u8bef"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1204
    const/16 v32, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    goto/16 :goto_0

    .line 1150
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "aid":Ljava/lang/String;
    .restart local v5    # "by_unisdk":Ljava/lang/String;
    .restart local v6    # "checkIndex":Ljava/lang/String;
    .restart local v7    # "code":I
    .restart local v8    # "count":Ljava/lang/String;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v12    # "guid":Ljava/lang/String;
    .restart local v13    # "hostname":Ljava/lang/String;
    .restart local v14    # "json":Lorg/json/JSONObject;
    .restart local v15    # "jsonData":Ljava/lang/String;
    .restart local v16    # "jsonRes":Lorg/json/JSONObject;
    .restart local v18    # "left_money":Ljava/lang/String;
    .restart local v20    # "org_name":Ljava/lang/String;
    .restart local v22    # "pid":Ljava/lang/String;
    .restart local v23    # "privateparam":Ljava/lang/String;
    .restart local v25    # "qrCodeParams":Lorg/json/JSONObject;
    .restart local v26    # "roleid":Ljava/lang/String;
    .restart local v27    # "rolelv":Ljava/lang/String;
    .restart local v28    # "rolename":Ljava/lang/String;
    .restart local v30    # "serverid":Ljava/lang/String;
    .restart local v31    # "vip_level":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v32

    const-string v33, "currency"

    invoke-interface/range {v32 .. v33}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_4

    .line 1156
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "by_unisdk":Ljava/lang/String;
    .end local v8    # "count":Ljava/lang/String;
    .end local v13    # "hostname":Ljava/lang/String;
    .end local v18    # "left_money":Ljava/lang/String;
    .end local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    .end local v20    # "org_name":Ljava/lang/String;
    .end local v22    # "pid":Ljava/lang/String;
    .end local v23    # "privateparam":Ljava/lang/String;
    .end local v25    # "qrCodeParams":Lorg/json/JSONObject;
    .end local v26    # "roleid":Ljava/lang/String;
    .end local v27    # "rolelv":Ljava/lang/String;
    .end local v28    # "rolename":Ljava/lang/String;
    .end local v30    # "serverid":Ljava/lang/String;
    .end local v31    # "vip_level":Ljava/lang/String;
    :cond_7
    const-string v32, "UniSDK netease"

    const-string v33, "web\u767b\u9646\u8d26\u53f7\u548c\u624b\u673a\u767b\u9646\u8d26\u53f7\u4e0d\u4e00\u81f4"

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/netease/ntunisdk/SdkNetease;->access$900(Lcom/netease/ntunisdk/SdkNetease;)Landroid/content/Context;

    move-result-object v32

    check-cast v32, Landroid/app/Activity;

    new-instance v33, Lcom/netease/ntunisdk/SdkNetease$IndexCallback$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNetease$IndexCallback$1;-><init>(Lcom/netease/ntunisdk/SdkNetease$IndexCallback;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1163
    new-instance v19, Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v32, "-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 1164
    .restart local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    const/16 v32, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1165
    const-string v32, "\u751f\u6210\u4e8c\u7ef4\u7801\u7684\u8d26\u53f7\u548c\u624b\u673a\u7aef\u767b\u9646\u8d26\u53f7\u4e0d\u4e00\u81f4"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1166
    const/16 v32, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    goto/16 :goto_0

    .line 1171
    .end local v12    # "guid":Ljava/lang/String;
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v15    # "jsonData":Ljava/lang/String;
    .end local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    :cond_8
    const-string v32, "UniSDK netease"

    const-string v33, "index\u6821\u9a8c\u4e0d\u901a\u8fc7"

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance v19, Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v32, "-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 1173
    .restart local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    const/16 v32, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1174
    const-string v32, "index\u6821\u9a8c\u4e0d\u901a\u8fc7"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1175
    const/16 v32, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    goto/16 :goto_0

    .line 1180
    .end local v6    # "checkIndex":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    :cond_9
    new-instance v19, Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v32, "-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 1181
    .restart local v19    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    const/16 v32, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1182
    const-string v32, "err"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1183
    .local v11, "err":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1184
    const/16 v32, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setIsWebPayment(Z)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->this$0:Lcom/netease/ntunisdk/SdkNetease;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->uid:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNetease$IndexCallback;->dataId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 1187
    const-string v32, "UniSDK netease"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "err:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method
