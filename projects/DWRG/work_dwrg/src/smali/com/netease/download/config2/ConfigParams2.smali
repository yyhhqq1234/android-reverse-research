.class public Lcom/netease/download/config2/ConfigParams2;
.super Ljava/lang/Object;
.source "ConfigParams2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigParams"

.field private static configParams2:Lcom/netease/download/config2/ConfigParams2;


# instance fields
.field public cdnArray:[Ljava/lang/String;

.field public ipDnsPicker:Z

.field public lvsipArray:[Ljava/lang/String;

.field public pickerUrl:Ljava/lang/String;

.field public removable:Z

.field public removeSlowCDNPercent:I

.field public removeSlowCDNSpeed:I

.field public removeSlowCDNTime:I

.field public removeSlowCDNTopSpeed:I

.field public report:Z

.field public reportIpArray:[Ljava/lang/String;

.field public reportUrl:Ljava/lang/String;

.field public splitThreshold:I

.field public totalWeight:I

.field public weights:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/config2/ConfigParams2;->configParams2:Lcom/netease/download/config2/ConfigParams2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v10, 0x1

    .line 130
    .local v10, "tryParse":Z
    const/4 v5, 0x0

    .line 133
    .local v5, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v5    # "object":Lorg/json/JSONObject;
    .local v6, "object":Lorg/json/JSONObject;
    :goto_0
    if-nez v10, :cond_4

    .line 140
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11, v12}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    .line 141
    .local v3, "jsonStr":Ljava/lang/String;
    const-string v11, "ConfigParams"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "config json content="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v6    # "object":Lorg/json/JSONObject;
    .restart local v5    # "object":Lorg/json/JSONObject;
    const/4 v10, 0x1

    .line 152
    .end local v3    # "jsonStr":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_b

    .line 155
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 156
    .local v0, "cdnList":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 157
    .local v9, "tempList":Lorg/json/JSONArray;
    const-string v11, "GPHList"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 158
    const-string v11, "ConfigParams"

    const-string v12, "ConfigParams2 [ConfigParams2] has GPHList"

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v11, "GPHList"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 161
    const-string v11, "ConfigParams"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ConfigParams2 [ConfigParams2] GPHList="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_5

    .line 168
    .end local v2    # "i":I
    :cond_0
    const-string v11, "GDLList"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 169
    const-string v11, "ConfigParams"

    const-string v12, "ConfigParams2 [ConfigParams2] has GDLList"

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v11, "GDLList"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 171
    const-string v11, "ConfigParams"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ConfigParams2 [ConfigParams2] GDLList="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_6

    .line 178
    .end local v2    # "i":I
    :cond_1
    const-string v11, "CDNList"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 179
    const-string v11, "ConfigParams"

    const-string v12, "ConfigParams2 [ConfigParams2] has CDNList"

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v11, "CDNList"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 181
    const-string v11, "ConfigParams"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ConfigParams2 [ConfigParams2] CDNList="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_7

    .line 188
    .end local v2    # "i":I
    :cond_2
    const-string v11, "ConfigParams"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ConfigParams2 [ConfigParams2] cdnList="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 192
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->weights:[I

    .line 194
    const/4 v11, 0x0

    iput v11, p0, Lcom/netease/download/config2/ConfigParams2;->totalWeight:I

    .line 196
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    array-length v11, v11

    if-ne v2, v11, :cond_8

    .line 203
    const-string v11, "true"

    const-string v12, "Removable"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/netease/download/config2/ConfigParams2;->removable:Z

    .line 204
    const-string v11, "SplitThreshold"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/netease/download/config2/ConfigParams2;->splitThreshold:I

    .line 205
    const-string v11, "RemoveSlowCDNTopSpeed"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNTopSpeed:I

    .line 206
    const-string v11, "RemoveSlowCDNPercent"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNPercent:I

    .line 207
    const-string v11, "RemoveSlowCDNSpeed"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNSpeed:I

    .line 208
    const-string v11, "RemoveSlowCDNTime"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNTime:I

    .line 209
    const-string v11, "Report"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/netease/download/config2/ConfigParams2;->report:Z

    .line 210
    const-string v11, "ReportUrl"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->reportUrl:Ljava/lang/String;

    .line 211
    const-string v11, "ReportIP"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 212
    .local v8, "reportIpList":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->reportIpArray:[Ljava/lang/String;

    .line 214
    const/4 v2, 0x0

    :goto_6
    iget-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->reportIpArray:[Ljava/lang/String;

    array-length v11, v11

    if-ne v2, v11, :cond_9

    .line 219
    const-string v11, "IPDNSPicker"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/netease/download/config2/ConfigParams2;->ipDnsPicker:Z

    .line 220
    const-string v11, "PickerURL"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->pickerUrl:Ljava/lang/String;

    .line 221
    const-string v11, "ListLVSIP"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 223
    .local v4, "listLVSIP":Lorg/json/JSONArray;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 224
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->lvsipArray:[Ljava/lang/String;

    .line 225
    const/4 v2, 0x0

    :goto_7
    iget-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->lvsipArray:[Ljava/lang/String;

    array-length v11, v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-lt v2, v11, :cond_a

    .line 241
    .end local v0    # "cdnList":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "listLVSIP":Lorg/json/JSONArray;
    .end local v8    # "reportIpList":Lorg/json/JSONArray;
    .end local v9    # "tempList":Lorg/json/JSONArray;
    :cond_3
    :goto_8
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lorg/json/JSONException;
    const/4 v10, 0x0

    move-object v6, v5

    .end local v5    # "object":Lorg/json/JSONObject;
    .restart local v6    # "object":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 147
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "jsonStr":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 148
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonStr":Ljava/lang/String;
    :cond_4
    move-object v5, v6

    .end local v6    # "object":Lorg/json/JSONObject;
    .restart local v5    # "object":Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 164
    .restart local v0    # "cdnList":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v9    # "tempList":Lorg/json/JSONArray;
    :cond_5
    :try_start_3
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 174
    :cond_6
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 184
    :cond_7
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 197
    :cond_8
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "originalStr":Ljava/lang/String;
    iget-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "<"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 199
    iget-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->weights:[I

    const-string v12, "<"

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const-string v13, ">"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v2

    .line 200
    iget v11, p0, Lcom/netease/download/config2/ConfigParams2;->totalWeight:I

    iget-object v12, p0, Lcom/netease/download/config2/ConfigParams2;->weights:[I

    aget v12, v12, v2

    add-int/2addr v11, v12

    iput v11, p0, Lcom/netease/download/config2/ConfigParams2;->totalWeight:I

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 215
    .end local v7    # "originalStr":Ljava/lang/String;
    .restart local v8    # "reportIpList":Lorg/json/JSONArray;
    :cond_9
    iget-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->reportIpArray:[Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 226
    .restart local v4    # "listLVSIP":Lorg/json/JSONArray;
    :cond_a
    iget-object v11, p0, Lcom/netease/download/config2/ConfigParams2;->lvsipArray:[Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 231
    .end local v0    # "cdnList":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "listLVSIP":Lorg/json/JSONArray;
    .end local v8    # "reportIpList":Lorg/json/JSONArray;
    .end local v9    # "tempList":Lorg/json/JSONArray;
    :catch_2
    move-exception v1

    .line 232
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 234
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v11, "ConfigParams"

    const-string v12, "\u914d\u7f6e\u6587\u4ef6\u89e3\u6790\u5931\u8d25!"

    invoke-static {v11, v12}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public static getInstance()Lcom/netease/download/config2/ConfigParams2;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/netease/download/config2/ConfigParams2;->configParams2:Lcom/netease/download/config2/ConfigParams2;

    return-object v0
.end method

.method public static init(Ljava/lang/String;)Lcom/netease/download/config2/ConfigParams2;
    .locals 1
    .param p0, "configData"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/netease/download/config2/ConfigParams2;->configParams2:Lcom/netease/download/config2/ConfigParams2;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/netease/download/config2/ConfigParams2;

    invoke-direct {v0, p0}, Lcom/netease/download/config2/ConfigParams2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/download/config2/ConfigParams2;->configParams2:Lcom/netease/download/config2/ConfigParams2;

    .line 121
    :cond_0
    sget-object v0, Lcom/netease/download/config2/ConfigParams2;->configParams2:Lcom/netease/download/config2/ConfigParams2;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method


# virtual methods
.method public changeUrlWeightAtIndex(ILjava/lang/String;I)V
    .locals 2
    .param p1, "pIndex"    # I
    .param p2, "pUrl"    # Ljava/lang/String;
    .param p3, "pWeight"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget v0, p0, Lcom/netease/download/config2/ConfigParams2;->totalWeight:I

    iget-object v1, p0, Lcom/netease/download/config2/ConfigParams2;->weights:[I

    aget v1, v1, p1

    sub-int/2addr v1, p3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/download/config2/ConfigParams2;->totalWeight:I

    .line 286
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->weights:[I

    aput p3, v0, p1

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v0, "ConfigParams"

    const-string v1, "changeUrlWeightAtIndex invalid"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/config2/ConfigParams2;->configParams2:Lcom/netease/download/config2/ConfigParams2;

    .line 302
    return-void
.end method

.method public getCndArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpDnsPicker()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/netease/download/config2/ConfigParams2;->ipDnsPicker:Z

    return v0
.end method

.method public getLvsipArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->lvsipArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getPickerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->pickerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReportIpArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->reportIpArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->reportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitThreshold()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/netease/download/config2/ConfigParams2;->splitThreshold:I

    return v0
.end method

.method public getTotalWeight()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/netease/download/config2/ConfigParams2;->totalWeight:I

    return v0
.end method

.method public getWeights()[I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->weights:[I

    return-object v0
.end method

.method public hasCdnList()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReport()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/netease/download/config2/ConfigParams2;->report:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigParams{cdnArray="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/netease/download/config2/ConfigParams2;->cdnArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    const-string v1, "weights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/config2/ConfigParams2;->weights:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    const-string v1, ", removable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/download/config2/ConfigParams2;->removable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string v1, ", removeSlowCDNTopSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNTopSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    const-string v1, ", removeSlowCDNPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string v1, ", removeSlowCDNSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    const-string v1, ", removeSlowCDNTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    const-string v1, ", splitThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/config2/ConfigParams2;->splitThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/download/config2/ConfigParams2;->report:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    const-string v1, ", reportUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/config2/ConfigParams2;->reportUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    const-string v1, ", reportIpArray=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/config2/ConfigParams2;->reportIpArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    const-string v1, ", ipDnsPicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/download/config2/ConfigParams2;->ipDnsPicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    const-string v1, ", pickerURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/config2/ConfigParams2;->pickerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    const-string v1, ", lvsipArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/config2/ConfigParams2;->lvsipArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
