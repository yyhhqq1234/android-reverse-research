.class Lcom/netease/pharos/linkcheck/ScanProxy$2;
.super Ljava/lang/Object;
.source "ScanProxy.java"

# interfaces
.implements Lcom/netease/pharos/link/LinkCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/linkcheck/ScanProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/linkcheck/ScanProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/linkcheck/ScanProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/netease/pharos/config/CheckResult;)V
    .locals 27
    .param p1, "checkResult"    # Lcom/netease/pharos/config/CheckResult;

    .prologue
    .line 144
    :try_start_0
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u94fe\u8def\u63a2\u6d4b \u56de\u8c03\u7ed3\u679c="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    move-result v18

    .line 151
    .local v18, "protocol":I
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmExtra()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, "extra":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "dest":Ljava/lang/String;
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "extra="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    .line 156
    .local v21, "stddev":D
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getStddev()D

    move-result-wide v21

    .line 158
    const-string v23, "nap_icmp"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getStddev()D

    move-result-wide v21

    .line 160
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "icmp stddev="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    div-double v25, v21, v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 162
    .local v3, "avgRtt":D
    const/4 v15, -0x1

    .line 165
    .local v15, "loss":I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmAvgRtt()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmLoss()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 172
    :goto_1
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmNapIcmpLost(I)V

    .line 173
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmNapIcmpRtt(D)V

    .line 174
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmNapIcmpDest(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    div-double v24, v21, v24

    invoke-virtual/range {v23 .. v25}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmNapIcmpStddev(D)V

    .line 239
    .end local v3    # "avgRtt":D
    .end local v15    # "loss":I
    :cond_0
    :goto_2
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getmOnceList()Ljava/util/ArrayList;

    move-result-object v13

    .line 241
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$1(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$1(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1
    :try_start_2
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u76ee\u524d\u5df2\u5355\u6b21\u63a2\u6d4b\u91cf="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$1(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u5355\u6b21\u63a2\u6d4b\u6a21\u5757\u603b\u91cf="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 256
    :goto_3
    if-eqz v13, :cond_3

    :try_start_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$1(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 258
    const-string v23, "has report"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 259
    const-string v23, "has report"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$1(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 269
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/qos/QosProxy;->clean()V

    .line 270
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/qos/QosProxy;->init()V

    .line 271
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/qos/QosProxy;->start_qosCore()V

    .line 273
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v14

    .line 274
    .local v14, "listener":Lcom/netease/pharos/PharosListener;
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object v11

    .line 275
    .local v11, "infoJson":Lorg/json/JSONObject;
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->setmPharosResultCache(Lorg/json/JSONObject;)V

    .line 277
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u5355\u6b21\u56de\u8c03\u7ed3\u679c="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-eqz v14, :cond_b

    .line 279
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getCallBackInfo()Lorg/json/JSONObject;

    move-result-object v7

    .line 281
    .local v7, "callBackInfo":Lorg/json/JSONObject;
    if-eqz v7, :cond_a

    .line 282
    invoke-interface {v14, v7}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 299
    .end local v7    # "callBackInfo":Lorg/json/JSONObject;
    .end local v11    # "infoJson":Lorg/json/JSONObject;
    .end local v14    # "listener":Lcom/netease/pharos/PharosListener;
    :cond_3
    :goto_4
    return-void

    .line 146
    .end local v8    # "dest":Ljava/lang/String;
    .end local v10    # "extra":Ljava/lang/String;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "protocol":I
    .end local v21    # "stddev":D
    :catch_0
    move-exception v9

    .line 147
    .local v9, "e":Ljava/lang/Exception;
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "\u94fe\u8def\u63a2\u6d4b \u56de\u8c03\u7ed3\u679c Exception="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "avgRtt":D
    .restart local v8    # "dest":Ljava/lang/String;
    .restart local v10    # "extra":Ljava/lang/String;
    .restart local v15    # "loss":I
    .restart local v18    # "protocol":I
    .restart local v21    # "stddev":D
    :catch_1
    move-exception v9

    .line 169
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "LinkCheckListener callBack Exception ="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 177
    .end local v3    # "avgRtt":D
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "loss":I
    :cond_4
    const-string v23, "rap_icmp"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 178
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "icmp stddev="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    div-double v25, v21, v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 180
    .restart local v3    # "avgRtt":D
    const/4 v15, -0x1

    .line 183
    .restart local v15    # "loss":I
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmAvgRtt()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmLoss()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v15

    .line 189
    :goto_5
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapIcmpLost(I)V

    .line 190
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapIcmpRtt(D)V

    .line 191
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapIcmpDest(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    div-double v24, v21, v24

    invoke-virtual/range {v23 .. v25}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapIcmpStddev(D)V

    goto/16 :goto_2

    .line 185
    :catch_2
    move-exception v9

    .line 186
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "LinkCheckListener callBack Exception ="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 194
    .end local v3    # "avgRtt":D
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "loss":I
    :cond_5
    const-string v23, "rap_transfer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v16, v23, v25

    .line 196
    .local v16, "pLoss":D
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v5

    .line 197
    .local v5, "avgTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getAvgSpeed()J

    move-result-wide v19

    .line 198
    .local v19, "speed":J
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "pLoss="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", avgTime="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", speed="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapTransferFail(D)V

    .line 200
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapTransferRtt(J)V

    .line 201
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapTransferSpeed(J)V

    .line 202
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapTransferDest(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapTransferStddev(D)V

    goto/16 :goto_2

    .line 205
    .end local v5    # "avgTime":J
    .end local v16    # "pLoss":D
    .end local v19    # "speed":J
    :cond_6
    const-string v23, "rap_udp"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v16, v23, v25

    .line 207
    .restart local v16    # "pLoss":D
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v5

    .line 208
    .restart local v5    # "avgTime":J
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapUdpLost(D)V

    .line 209
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapUdpRtt(J)V

    .line 210
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapUdpDest(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapUdpStddev(D)V

    goto/16 :goto_2

    .line 213
    .end local v5    # "avgTime":J
    .end local v16    # "pLoss":D
    :cond_7
    const-string v23, "sap_transfer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v16, v23, v25

    .line 215
    .restart local v16    # "pLoss":D
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v5

    .line 216
    .restart local v5    # "avgTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getAvgSpeed()J

    move-result-wide v19

    .line 217
    .restart local v19    # "speed":J
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapTransferFail(D)V

    .line 218
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapTransferRtt(J)V

    .line 219
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapTransferSpeed(J)V

    .line 220
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapTransferDest(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapTransferStddev(D)V

    goto/16 :goto_2

    .line 223
    .end local v5    # "avgTime":J
    .end local v16    # "pLoss":D
    .end local v19    # "speed":J
    :cond_8
    const-string v23, "sap_udp"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v16, v23, v25

    .line 225
    .restart local v16    # "pLoss":D
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v5

    .line 226
    .restart local v5    # "avgTime":J
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapUdpLost(D)V

    .line 227
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapUdpRtt(J)V

    .line 228
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapUdpDest(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmSapUdpStddev(D)V

    goto/16 :goto_2

    .line 231
    .end local v5    # "avgTime":J
    .end local v16    # "pLoss":D
    :cond_9
    const-string v23, "resolve"

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/config/CheckResult;->getmIpList()Ljava/util/ArrayList;

    move-result-object v12

    .line 234
    .local v12, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    .line 235
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmResolveHost(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 249
    .end local v12    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_3
    move-exception v9

    .line 250
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "LinkCheckListener callBack Exception2 ="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 285
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "callBackInfo":Lorg/json/JSONObject;
    .restart local v11    # "infoJson":Lorg/json/JSONObject;
    .restart local v14    # "listener":Lcom/netease/pharos/PharosListener;
    :cond_a
    :try_start_5
    const-string v23, "ScanProxy"

    const-string v24, "infoJson is null"

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_4

    .line 295
    .end local v7    # "callBackInfo":Lorg/json/JSONObject;
    .end local v11    # "infoJson":Lorg/json/JSONObject;
    .end local v14    # "listener":Lcom/netease/pharos/PharosListener;
    :catch_4
    move-exception v9

    .line 296
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v23, "ScanProxy"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "PharosListener Exception="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 289
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "infoJson":Lorg/json/JSONObject;
    .restart local v14    # "listener":Lcom/netease/pharos/PharosListener;
    :cond_b
    :try_start_6
    const-string v23, "ScanProxy"

    const-string v24, "PharosListener is null"

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_4
.end method
