.class public Lcom/netease/pharos/linkcheck/ScanCore;
.super Ljava/lang/Object;
.source "ScanCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanCore"


# instance fields
.field private mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private mListener:Lcom/netease/pharos/link/LinkCheckListener;

.field private mStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 35
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 37
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 39
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 27
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 772
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "result":I
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mStyle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "nap_icmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceNapIcmp()I

    move-result v0

    .line 765
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "rap_icmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapIcmp()I

    move-result v0

    .line 746
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "rap_udp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 747
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapUdp()I

    move-result v0

    .line 749
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "rap_transfer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 750
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapTransfer()I

    move-result v0

    .line 752
    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "rap_mtr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceRapMtr()V

    goto :goto_0

    .line 755
    :cond_5
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "sap_udp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 756
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceSapUdp()I

    goto :goto_0

    .line 758
    :cond_6
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "sap_transfer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 759
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceSapTransfer()I

    move-result v0

    .line 761
    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    const-string v2, "resolve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->startOnceResolve()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/ScanCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcom/netease/pharos/link/LinkCheckListener;Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/netease/pharos/link/LinkCheckListener;
    .param p3, "cycleTaskStopListener"    # Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .param p4, "configInfoListener"    # Lcom/netease/pharos/linkcheck/ConfigInfoListener;
    .param p5, "checkOverNotifyListener"    # Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mStyle:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 44
    iput-object p3, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 45
    iput-object p4, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 46
    iput-object p5, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 47
    return-void
.end method

.method public startOnceNapIcmp()I
    .locals 28

    .prologue
    .line 50
    const-string v1, "ScanCore"

    const-string v2, "NapIcmp \u63a2\u6d4b"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/16 v27, 0xb

    .line 52
    .local v27, "result":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v23

    .line 53
    .local v23, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 55
    .local v9, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getNapIcmp()Lorg/json/JSONObject;

    move-result-object v24

    .line 56
    .local v24, "json":Lorg/json/JSONObject;
    const/16 v26, 0x0

    .line 57
    .local v26, "napIcmpEnable":Z
    const/16 v25, 0x0

    .line 61
    .local v25, "napIcmpCycle":Z
    if-eqz v24, :cond_1

    .line 63
    :try_start_0
    const-string v1, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 66
    :cond_0
    const-string v1, "cycle"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "cycle"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    .line 74
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getGateway()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "gateWay":Ljava/lang/String;
    const/16 v5, 0xa

    .line 79
    .local v5, "count":I
    const-string v1, "count"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :try_start_1
    const-string v1, "count"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 88
    :cond_2
    :goto_1
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "NapIcmp---enable="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", napIcmpEnable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", interval="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", gateWay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz v23, :cond_6

    if-eqz v26, :cond_6

    .line 91
    const/16 v1, 0xa

    if-lt v9, v1, :cond_4

    const/16 v1, 0x3c

    if-gt v9, v1, :cond_4

    if-eqz v25, :cond_4

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x1

    const-string v4, "nap_icmp"

    invoke-interface {v1, v2, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 98
    :cond_3
    const-string v1, "ScanCore"

    const-string v2, "NapIcmp \u63a2\u6d4b \u5468\u671f\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v4, -0x1

    const/16 v6, 0x320

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v12, "nap_icmp"

    invoke-virtual/range {v1 .. v12}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 100
    const/16 v27, 0x0

    .line 116
    :goto_2
    return v27

    .line 70
    .end local v3    # "gateWay":Ljava/lang/String;
    .end local v5    # "count":I
    :catch_0
    move-exception v22

    .line 71
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 83
    .end local v22    # "e":Lorg/json/JSONException;
    .restart local v3    # "gateWay":Ljava/lang/String;
    .restart local v5    # "count":I
    :catch_1
    move-exception v22

    .line 84
    .restart local v22    # "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 103
    .end local v22    # "e":Lorg/json/JSONException;
    :cond_4
    const-string v1, "ScanCore"

    const-string v2, "NapIcmp \u63a2\u6d4b \u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_5

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x0

    const-string v4, "nap_icmp"

    invoke-interface {v1, v2, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 108
    :cond_5
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v13, -0x1

    const/16 v15, 0x320

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "nap_icmp"

    move-object v12, v3

    move v14, v5

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v2, "nap_icmp"

    invoke-interface {v1, v2}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 113
    const-string v1, "ScanCore"

    const-string v2, "enable == 0, NapIcmp \u63a2\u6d4b \u4e0d\u6267\u884c"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startOnceRapIcmp()I
    .locals 29

    .prologue
    .line 120
    const-string v1, "ScanCore"

    const-string v2, "RapIcmp \u63a2\u6d4b"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/16 v27, 0xb

    .line 123
    .local v27, "result":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v23

    .line 124
    .local v23, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 126
    .local v9, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapIcmp()Lorg/json/JSONObject;

    move-result-object v24

    .line 127
    .local v24, "json":Lorg/json/JSONObject;
    const/16 v26, 0x0

    .line 128
    .local v26, "napIcmpEnable":Z
    const/16 v25, 0x0

    .line 132
    .local v25, "napIcmpCycle":Z
    if-eqz v24, :cond_1

    .line 134
    :try_start_0
    const-string v1, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 138
    :cond_0
    const-string v1, "cycle"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "cycle"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    .line 146
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 147
    .local v3, "dest":Ljava/lang/String;
    const/16 v5, 0xa

    .line 151
    .local v5, "count":I
    :try_start_1
    const-string v1, "count"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "count"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 155
    :cond_2
    const-string v1, "dest"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    const-string v1, "dest"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 162
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    move/from16 v28, v27

    .line 195
    .end local v27    # "result":I
    .local v28, "result":I
    :goto_2
    return v28

    .line 142
    .end local v3    # "dest":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v28    # "result":I
    .restart local v27    # "result":I
    :catch_0
    move-exception v22

    .line 143
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v22    # "e":Lorg/json/JSONException;
    .restart local v3    # "dest":Ljava/lang/String;
    .restart local v5    # "count":I
    :catch_1
    move-exception v22

    .line 159
    .local v22, "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "RapIcmp---enable="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", napIcmpEnable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", dest="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz v23, :cond_8

    if-eqz v26, :cond_8

    .line 170
    const/16 v1, 0xa

    if-lt v9, v1, :cond_6

    const/16 v1, 0x3c

    if-gt v9, v1, :cond_6

    if-eqz v25, :cond_6

    .line 171
    const-string v1, "ScanCore"

    const-string v2, "RapIcmp \u63a2\u6d4b \u5468\u671f\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_5

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x1

    const-string v4, "rap_icmp"

    invoke-interface {v1, v2, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 177
    :cond_5
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v4, -0x1

    const/16 v6, 0x320

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v12, "rap_icmp"

    invoke-virtual/range {v1 .. v12}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 178
    const/16 v27, 0x0

    :goto_3
    move/from16 v28, v27

    .line 195
    .end local v27    # "result":I
    .restart local v28    # "result":I
    goto/16 :goto_2

    .line 181
    .end local v28    # "result":I
    .restart local v27    # "result":I
    :cond_6
    const-string v1, "ScanCore"

    const-string v2, "RapIcmp \u63a2\u6d4b \u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_7

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x0

    const-string v4, "rap_icmp"

    invoke-interface {v1, v2, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 187
    :cond_7
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v13, -0x1

    const/16 v15, 0x320

    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rap_icmp"

    move-object v12, v3

    move v14, v5

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_3

    .line 191
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v2, "rap_icmp"

    invoke-interface {v1, v2}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 192
    const-string v1, "ScanCore"

    const-string v2, "enable == 0, RapIcmp \u63a2\u6d4b \u4e0d\u6267\u884c"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public startOnceRapMtr()V
    .locals 8

    .prologue
    .line 408
    const-string v6, "ScanCore"

    const-string v7, "RapMtr \u63a2\u6d4b"

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v1

    .line 410
    .local v1, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v2

    .line 412
    .local v2, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapMtr()Lorg/json/JSONObject;

    move-result-object v3

    .line 413
    .local v3, "json":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 414
    .local v5, "napIcmpEnable":Z
    const/4 v4, 0x0

    .line 418
    .local v4, "napIcmpCycle":Z
    if-eqz v3, :cond_1

    .line 420
    :try_start_0
    const-string v6, "enable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    const-string v6, "enable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 424
    :cond_0
    const-string v6, "cycle"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 425
    const-string v6, "cycle"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 432
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v7, "rap_mtr"

    invoke-interface {v6, v7}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 434
    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    .line 436
    const/16 v6, 0xa

    if-lt v2, v6, :cond_2

    const/16 v6, 0x3c

    if-gt v2, v6, :cond_2

    if-eqz v4, :cond_2

    .line 437
    const-string v6, "ScanCore"

    const-string v7, "\u5468\u671f\u5904\u7406"

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_1
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v6, "ScanCore"

    const-string v7, "\u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_3
    iget-object v6, p0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v7, "rap_mtr"

    invoke-interface {v6, v7}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 449
    const-string v6, "ScanCore"

    const-string v7, "enable == 0, \u4e0d\u6267\u884c"

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startOnceRapTransfer()I
    .locals 32

    .prologue
    .line 199
    const-string v1, "ScanCore"

    const-string v6, "RapTransfer \u63a2\u6d4b"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v31, 0xb

    .line 202
    .local v31, "result":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v23

    .line 203
    .local v23, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 205
    .local v9, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapTransfer()Lorg/json/JSONObject;

    move-result-object v25

    .line 206
    .local v25, "json":Lorg/json/JSONObject;
    const/16 v27, 0x0

    .line 207
    .local v27, "napIcmpEnable":Z
    const/16 v26, 0x0

    .line 211
    .local v26, "napIcmpCycle":Z
    if-eqz v25, :cond_1

    .line 213
    :try_start_0
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 217
    :cond_0
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 226
    :cond_1
    :goto_0
    const/16 v30, 0x0

    .line 227
    .local v30, "pProtocal":Ljava/lang/String;
    const/16 v5, 0xa

    .line 228
    .local v5, "pCount":I
    const/16 v29, 0x2

    .line 229
    .local v29, "pPackage":I
    const/16 v28, 0x0

    .line 230
    .local v28, "pDest":Ljava/lang/String;
    const/4 v3, 0x0

    .line 231
    .local v3, "pIp":Ljava/lang/String;
    const/4 v4, -0x1

    .line 232
    .local v4, "pPort":I
    const/4 v2, 0x1

    .line 236
    .local v2, "pStyle":I
    :try_start_1
    const-string v1, "protocol"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    const-string v1, "protocol"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 240
    :cond_2
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 244
    :cond_3
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 248
    :cond_4
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 252
    :cond_5
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 254
    const-string v1, "tcp"

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 255
    const/4 v2, 0x1

    .line 262
    :cond_6
    :goto_1
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 263
    const-string v1, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 265
    .local v24, "info":[Ljava/lang/String;
    if-eqz v24, :cond_7

    move-object/from16 v0, v24

    array-length v1, v0

    const/4 v6, 0x1

    if-le v1, v6, :cond_7

    .line 266
    const/4 v1, 0x0

    aget-object v3, v24, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 269
    const/4 v1, 0x1

    :try_start_2
    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 279
    .end local v24    # "info":[Ljava/lang/String;
    :cond_7
    :goto_2
    const-string v1, "ScanCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RapTransfer---pStyle="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",pIp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",pPort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    mul-int/lit16 v7, v0, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-eqz v23, :cond_c

    if-eqz v27, :cond_c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, -0x1

    if-eq v1, v4, :cond_c

    .line 283
    const/16 v1, 0xa

    if-lt v9, v1, :cond_a

    const/16 v1, 0x3c

    if-gt v9, v1, :cond_a

    if-eqz v26, :cond_a

    .line 284
    const-string v1, "ScanCore"

    const-string v6, "\u5468\u671f\u5904\u7406"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_8

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v6, 0x1

    const-string v7, "rap_transfer"

    invoke-interface {v1, v6, v7}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 290
    :cond_8
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/16 v6, 0x320

    move/from16 v0, v29

    mul-int/lit16 v7, v0, 0x400

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v12, "rap_transfer"

    invoke-virtual/range {v1 .. v12}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 291
    const/16 v31, 0x0

    .line 307
    :goto_3
    return v31

    .line 222
    .end local v2    # "pStyle":I
    .end local v3    # "pIp":Ljava/lang/String;
    .end local v4    # "pPort":I
    .end local v5    # "pCount":I
    .end local v28    # "pDest":Ljava/lang/String;
    .end local v29    # "pPackage":I
    .end local v30    # "pProtocal":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 223
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 257
    .end local v22    # "e":Lorg/json/JSONException;
    .restart local v2    # "pStyle":I
    .restart local v3    # "pIp":Ljava/lang/String;
    .restart local v4    # "pPort":I
    .restart local v5    # "pCount":I
    .restart local v28    # "pDest":Ljava/lang/String;
    .restart local v29    # "pPackage":I
    .restart local v30    # "pProtocal":Ljava/lang/String;
    :cond_9
    :try_start_3
    const-string v1, "kcp"

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 270
    .restart local v24    # "info":[Ljava/lang/String;
    :catch_1
    move-exception v22

    .line 271
    .local v22, "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 275
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "info":[Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 276
    .restart local v22    # "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 294
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v1, "ScanCore"

    const-string v6, "\u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_b

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v6, 0x0

    const-string v7, "rap_transfer"

    invoke-interface {v1, v6, v7}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 299
    :cond_b
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v10

    const/16 v15, 0x320

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rap_transfer"

    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_3

    .line 303
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v6, "rap_transfer"

    invoke-interface {v1, v6}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 304
    const-string v1, "ScanCore"

    const-string v6, "enable == 0, \u4e0d\u6267\u884c"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public startOnceRapUdp()I
    .locals 31

    .prologue
    .line 311
    const-string v1, "ScanCore"

    const-string v2, "RapUdp \u63a2\u6d4b"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/16 v30, 0xb

    .line 313
    .local v30, "result":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v23

    .line 314
    .local v23, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 316
    .local v9, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapUdp()Lorg/json/JSONObject;

    move-result-object v25

    .line 317
    .local v25, "json":Lorg/json/JSONObject;
    const/16 v27, 0x0

    .line 318
    .local v27, "napIcmpEnable":Z
    const/16 v26, 0x0

    .line 322
    .local v26, "napIcmpCycle":Z
    if-eqz v25, :cond_1

    .line 324
    :try_start_0
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 328
    :cond_0
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 337
    :cond_1
    :goto_0
    const/16 v5, 0xa

    .line 338
    .local v5, "pCount":I
    const/16 v29, 0x10

    .line 339
    .local v29, "pPackage":I
    const/16 v28, 0x0

    .line 340
    .local v28, "pDest":Ljava/lang/String;
    const/4 v3, 0x0

    .line 341
    .local v3, "pIp":Ljava/lang/String;
    const/4 v4, -0x1

    .line 345
    .local v4, "pPort":I
    :try_start_1
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 349
    :cond_2
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 353
    :cond_3
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 357
    :cond_4
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 358
    const-string v1, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 360
    .local v24, "info":[Ljava/lang/String;
    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 361
    const/4 v1, 0x0

    aget-object v3, v24, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 364
    const/4 v1, 0x1

    :try_start_2
    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 374
    .end local v24    # "info":[Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "RapUdp---pIp="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",pPort="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", pCount="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", pPackage="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    mul-int/lit16 v6, v0, 0x400

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-eqz v23, :cond_9

    if-eqz v27, :cond_9

    .line 378
    const/16 v1, 0xa

    if-lt v9, v1, :cond_7

    const/16 v1, 0x3c

    if-gt v9, v1, :cond_7

    if-eqz v26, :cond_7

    .line 379
    const-string v1, "ScanCore"

    const-string v2, "\u5468\u671f\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_6

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x1

    const-string v6, "rap_udp"

    invoke-interface {v1, v2, v6}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 385
    :cond_6
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v6, 0x320

    mul-int/lit8 v7, v29, 0x20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v12, "rap_udp"

    invoke-virtual/range {v1 .. v12}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 386
    const/16 v30, 0x0

    .line 403
    :goto_2
    return v30

    .line 333
    .end local v3    # "pIp":Ljava/lang/String;
    .end local v4    # "pPort":I
    .end local v5    # "pCount":I
    .end local v28    # "pDest":Ljava/lang/String;
    .end local v29    # "pPackage":I
    :catch_0
    move-exception v22

    .line 334
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 365
    .end local v22    # "e":Lorg/json/JSONException;
    .restart local v3    # "pIp":Ljava/lang/String;
    .restart local v4    # "pPort":I
    .restart local v5    # "pCount":I
    .restart local v24    # "info":[Ljava/lang/String;
    .restart local v28    # "pDest":Ljava/lang/String;
    .restart local v29    # "pPackage":I
    :catch_1
    move-exception v22

    .line 366
    .local v22, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Exception="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 370
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "info":[Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 371
    .restart local v22    # "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Exception="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 389
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v1, "ScanCore"

    const-string v2, "\u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_8

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x0

    const-string v6, "rap_udp"

    invoke-interface {v1, v2, v6}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 395
    :cond_8
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v10

    const/4 v11, 0x2

    const/16 v15, 0x320

    mul-int/lit8 v16, v29, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rap_udp"

    move-object v12, v3

    move v13, v4

    move v14, v5

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_2

    .line 399
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v2, "rap_udp"

    invoke-interface {v1, v2}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 400
    const-string v1, "ScanCore"

    const-string v2, "enable == 0, \u4e0d\u6267\u884c"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startOnceResolve()I
    .locals 30

    .prologue
    .line 662
    const-string v1, "ScanCore"

    const-string v2, "Resolve \u63a2\u6d4b"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/16 v29, 0xb

    .line 664
    .local v29, "result":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v23

    .line 665
    .local v23, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 667
    .local v9, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getResolve()Lorg/json/JSONObject;

    move-result-object v24

    .line 668
    .local v24, "json":Lorg/json/JSONObject;
    const/16 v26, 0x0

    .line 669
    .local v26, "napIcmpEnable":Z
    const/16 v25, 0x0

    .line 673
    .local v25, "napIcmpCycle":Z
    if-eqz v24, :cond_1

    .line 675
    :try_start_0
    const-string v1, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "enable"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 679
    :cond_0
    const-string v1, "cycle"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    const-string v1, "cycle"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    .line 688
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 689
    .local v3, "pDest":Ljava/lang/String;
    const/16 v27, 0x0

    .line 690
    .local v27, "pIp":Ljava/lang/String;
    const/16 v28, -0x1

    .line 694
    .local v28, "pPort":I
    :try_start_1
    const-string v1, "dest"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 695
    const-string v1, "dest"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 701
    :cond_2
    :goto_1
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Resolve---pDest="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    if-eqz v23, :cond_6

    if-eqz v26, :cond_6

    .line 705
    const/16 v1, 0xa

    if-lt v9, v1, :cond_4

    const/16 v1, 0x3c

    if-gt v9, v1, :cond_4

    if-eqz v25, :cond_4

    .line 706
    const-string v1, "ScanCore"

    const-string v2, "\u5468\u671f\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_3

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x1

    const-string v4, "resolve"

    invoke-interface {v1, v2, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 712
    :cond_3
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v12, "resolve"

    invoke-virtual/range {v1 .. v12}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 713
    const/16 v29, 0x0

    .line 730
    :goto_2
    return v29

    .line 684
    .end local v3    # "pDest":Ljava/lang/String;
    .end local v27    # "pIp":Ljava/lang/String;
    .end local v28    # "pPort":I
    :catch_0
    move-exception v22

    .line 685
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 697
    .end local v22    # "e":Lorg/json/JSONException;
    .restart local v3    # "pDest":Ljava/lang/String;
    .restart local v27    # "pIp":Ljava/lang/String;
    .restart local v28    # "pPort":I
    :catch_1
    move-exception v22

    .line 698
    .local v22, "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 716
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v1, "ScanCore"

    const-string v2, "\u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_5

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x0

    const-string v4, "resolve"

    invoke-interface {v1, v2, v4}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 722
    :cond_5
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v10

    const/4 v11, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "resolve"

    move-object v12, v3

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_2

    .line 726
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v2, "resolve"

    invoke-interface {v1, v2}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 727
    const-string v1, "ScanCore"

    const-string v2, "enable == 0, \u4e0d\u6267\u884c"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startOnceSapTransfer()I
    .locals 32

    .prologue
    .line 454
    const-string v1, "ScanCore"

    const-string v6, "SapTransfer \u63a2\u6d4b"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/16 v31, 0xb

    .line 456
    .local v31, "result":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v23

    .line 457
    .local v23, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 459
    .local v9, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getSapTransfer()Lorg/json/JSONObject;

    move-result-object v25

    .line 460
    .local v25, "json":Lorg/json/JSONObject;
    const/16 v27, 0x0

    .line 461
    .local v27, "napIcmpEnable":Z
    const/16 v26, 0x0

    .line 465
    .local v26, "napIcmpCycle":Z
    if-eqz v25, :cond_1

    .line 467
    :try_start_0
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 471
    :cond_0
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 480
    :cond_1
    :goto_0
    const/16 v30, 0x0

    .line 481
    .local v30, "pProtocal":Ljava/lang/String;
    const/16 v5, 0xa

    .line 482
    .local v5, "pCount":I
    const/16 v29, 0x2

    .line 483
    .local v29, "pPackage":I
    const/16 v28, 0x0

    .line 484
    .local v28, "pDest":Ljava/lang/String;
    const/4 v3, 0x0

    .line 485
    .local v3, "pIp":Ljava/lang/String;
    const/4 v4, -0x1

    .line 486
    .local v4, "pPort":I
    const/4 v2, 0x1

    .line 489
    .local v2, "pStyle":I
    :try_start_1
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 493
    :cond_2
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 497
    :cond_3
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 498
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 501
    :cond_4
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 503
    const-string v1, "tcp"

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 504
    const/4 v2, 0x1

    .line 511
    :cond_5
    :goto_1
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 512
    const-string v1, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 514
    .local v24, "info":[Ljava/lang/String;
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    array-length v1, v0

    const/4 v6, 0x1

    if-le v1, v6, :cond_6

    .line 515
    const/4 v1, 0x0

    aget-object v3, v24, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 518
    const/4 v1, 0x1

    :try_start_2
    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 529
    .end local v24    # "info":[Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v1, "ScanCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SapTransfer---pStyle="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",pIp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",pPort="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    mul-int/lit16 v7, v0, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-eqz v23, :cond_b

    if-eqz v27, :cond_b

    .line 533
    const/16 v1, 0xa

    if-lt v9, v1, :cond_9

    const/16 v1, 0x3c

    if-gt v9, v1, :cond_9

    if-eqz v26, :cond_9

    .line 535
    const-string v1, "ScanCore"

    const-string v6, "\u5468\u671f\u5904\u7406"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_7

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v6, 0x1

    const-string v7, "sap_transfer"

    invoke-interface {v1, v6, v7}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 541
    :cond_7
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/16 v6, 0x320

    move/from16 v0, v29

    mul-int/lit16 v7, v0, 0x400

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v12, "sap_transfer"

    invoke-virtual/range {v1 .. v12}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 542
    const/16 v31, 0x0

    .line 559
    :goto_3
    return v31

    .line 476
    .end local v2    # "pStyle":I
    .end local v3    # "pIp":Ljava/lang/String;
    .end local v4    # "pPort":I
    .end local v5    # "pCount":I
    .end local v28    # "pDest":Ljava/lang/String;
    .end local v29    # "pPackage":I
    .end local v30    # "pProtocal":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 477
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 506
    .end local v22    # "e":Lorg/json/JSONException;
    .restart local v2    # "pStyle":I
    .restart local v3    # "pIp":Ljava/lang/String;
    .restart local v4    # "pPort":I
    .restart local v5    # "pCount":I
    .restart local v28    # "pDest":Ljava/lang/String;
    .restart local v29    # "pPackage":I
    .restart local v30    # "pProtocal":Ljava/lang/String;
    :cond_8
    :try_start_3
    const-string v1, "kcp"

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 507
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 519
    .restart local v24    # "info":[Ljava/lang/String;
    :catch_1
    move-exception v22

    .line 520
    .local v22, "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 525
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "info":[Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 526
    .restart local v22    # "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 545
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v1, "ScanCore"

    const-string v6, "\u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_a

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v6, 0x0

    const-string v7, "sap_transfer"

    invoke-interface {v1, v6, v7}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 551
    :cond_a
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v10

    const/16 v15, 0x320

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "sap_transfer"

    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_3

    .line 555
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v6, "sap_transfer"

    invoke-interface {v1, v6}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 556
    const-string v1, "ScanCore"

    const-string v6, "enable == 0, \u4e0d\u6267\u884c"

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public startOnceSapUdp()I
    .locals 31

    .prologue
    .line 563
    const-string v1, "ScanCore"

    const-string v2, "SapUdp \u63a2\u6d4b"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/16 v30, 0xb

    .line 565
    .local v30, "result":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getEnable()Z

    move-result v23

    .line 566
    .local v23, "enable":Z
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInterval()I

    move-result v9

    .line 568
    .local v9, "interval":I
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getSapUdp()Lorg/json/JSONObject;

    move-result-object v25

    .line 569
    .local v25, "json":Lorg/json/JSONObject;
    const/16 v27, 0x0

    .line 570
    .local v27, "napIcmpEnable":Z
    const/16 v26, 0x0

    .line 574
    .local v26, "napIcmpCycle":Z
    if-eqz v25, :cond_1

    .line 576
    :try_start_0
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "enable"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    .line 580
    :cond_0
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    const-string v1, "cycle"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 589
    :cond_1
    :goto_0
    const/16 v5, 0xa

    .line 590
    .local v5, "pCount":I
    const/16 v29, 0x10

    .line 591
    .local v29, "pPackage":I
    const/16 v28, 0x0

    .line 592
    .local v28, "pDest":Ljava/lang/String;
    const/4 v3, 0x0

    .line 593
    .local v3, "pIp":Ljava/lang/String;
    const/4 v4, -0x1

    .line 597
    .local v4, "pPort":I
    :try_start_1
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    const-string v1, "count"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 601
    :cond_2
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 602
    const-string v1, "dest"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 605
    :cond_3
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 606
    const-string v1, "package"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 609
    :cond_4
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 610
    const-string v1, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 612
    .local v24, "info":[Ljava/lang/String;
    if-eqz v24, :cond_5

    move-object/from16 v0, v24

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 613
    const/4 v1, 0x0

    aget-object v3, v24, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 616
    const/4 v1, 0x1

    :try_start_2
    aget-object v1, v24, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 629
    .end local v24    # "info":[Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SapUdp---pIp="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",pPort="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", pCount="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", pPackage="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    mul-int/lit16 v6, v0, 0x400

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    if-eqz v23, :cond_9

    if-eqz v27, :cond_9

    .line 633
    const/16 v1, 0xa

    if-lt v9, v1, :cond_7

    const/16 v1, 0x3c

    if-gt v9, v1, :cond_7

    if-eqz v26, :cond_7

    .line 634
    const-string v1, "ScanCore"

    const-string v2, "\u5468\u671f\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_6

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x1

    const-string v6, "sap_udp"

    invoke-interface {v1, v2, v6}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 640
    :cond_6
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v6, 0x320

    mul-int/lit8 v7, v29, 0x20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v12, "sap_udp"

    invoke-virtual/range {v1 .. v12}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    .line 641
    const/16 v30, 0x0

    .line 658
    :goto_2
    return v30

    .line 585
    .end local v3    # "pIp":Ljava/lang/String;
    .end local v4    # "pPort":I
    .end local v5    # "pCount":I
    .end local v28    # "pDest":Ljava/lang/String;
    .end local v29    # "pPackage":I
    :catch_0
    move-exception v22

    .line 586
    .local v22, "e":Lorg/json/JSONException;
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 617
    .end local v22    # "e":Lorg/json/JSONException;
    .restart local v3    # "pIp":Ljava/lang/String;
    .restart local v4    # "pPort":I
    .restart local v5    # "pCount":I
    .restart local v24    # "info":[Ljava/lang/String;
    .restart local v28    # "pDest":Ljava/lang/String;
    .restart local v29    # "pPackage":I
    :catch_1
    move-exception v22

    .line 618
    .local v22, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Exception="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 623
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "info":[Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 624
    .restart local v22    # "e":Ljava/lang/Exception;
    const-string v1, "ScanCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Exception="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v1, "ScanCore"

    const-string v2, "\u4e00\u6b21\u6027\u5904\u7406"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    if-eqz v1, :cond_8

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    const/4 v2, 0x0

    const-string v6, "sap_udp"

    invoke-interface {v1, v2, v6}, Lcom/netease/pharos/linkcheck/ConfigInfoListener;->callBack(ZLjava/lang/String;)V

    .line 650
    :cond_8
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v10

    const/4 v11, 0x2

    const/16 v15, 0x320

    mul-int/lit8 v16, v29, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "sap_udp"

    move-object v12, v3

    move v13, v4

    move v14, v5

    invoke-virtual/range {v10 .. v21}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto :goto_2

    .line 654
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/pharos/linkcheck/ScanCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    const-string v2, "sap_udp"

    invoke-interface {v1, v2}, Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;->callBack(Ljava/lang/String;)V

    .line 655
    const-string v1, "ScanCore"

    const-string v2, "enable == 0, \u4e0d\u6267\u884c"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
