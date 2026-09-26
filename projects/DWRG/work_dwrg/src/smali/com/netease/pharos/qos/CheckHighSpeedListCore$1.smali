.class Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;
.super Ljava/lang/Object;
.source "CheckHighSpeedListCore.java"

# interfaces
.implements Lcom/netease/pharos/link/LinkCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/qos/CheckHighSpeedListCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/netease/pharos/config/CheckResult;)V
    .locals 4
    .param p1, "checkResult"    # Lcom/netease/pharos/config/CheckResult;

    .prologue
    .line 66
    const-string v0, "HighSpeedListCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckHighSpeedList UDP \u56de\u8c03\u7ed3\u679c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v0

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$0(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$1(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$2(Lcom/netease/pharos/qos/CheckHighSpeedListCore;I)V

    .line 74
    const-string v0, "HighSpeedListCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckHighSpeedList UDP mHighSpeedIpCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v2}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$3(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v2}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$1(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$3(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v0

    iget-object v1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v1}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$1(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$4(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    .line 79
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v1}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$0(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->setHighSpeedUdpResult(Ljava/util/ArrayList;)V

    .line 80
    const-string v0, "HighSpeedListCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u67e5\u8be2\u9ad8\u901f\u5217\u8868 \u6700\u7ec8\u7ed3\u679c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method
