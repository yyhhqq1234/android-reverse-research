.class public Lcom/tencent/tmassistant/common/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "ProtocolPackage"

    sput-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(BLjava/util/List;Ljava/lang/String;ILjava/lang/String;)Lcom/qq/taf/jce/JceStruct;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;-><init>()V

    .line 53
    iput p0, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->logType:I

    .line 54
    invoke-static {p1}, Lcom/tencent/tmassistant/common/a;->a(Ljava/util/List;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->logData:[B

    .line 55
    iput-object p2, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->hostAppPackageName:Ljava/lang/String;

    .line 56
    iput p3, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->hostAppVersion:I

    .line 57
    iput-object p4, v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;->hostUserId:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;[B)Lcom/qq/taf/jce/JceStruct;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 242
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->d(Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 251
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 253
    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 254
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exit"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 261
    goto :goto_0

    .line 265
    :cond_0
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 266
    goto :goto_0
.end method

.method public static a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 334
    if-nez p0, :cond_0

    move-object v0, v1

    .line 346
    :goto_0
    return-object v0

    .line 339
    :cond_0
    :try_start_0
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 340
    const-string/jumbo v0, "utf-8"

    invoke-virtual {v2, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 341
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    .line 342
    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 346
    goto :goto_0
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistant/common/jce/ReqHead;
    .locals 5

    .prologue
    .line 70
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-nez p0, :cond_0

    .line 73
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "null == jceRequestStruce"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/tencent/tmassistant/common/jce/ReqHead;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/ReqHead;-><init>()V

    .line 78
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getMemUUID()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->requestId:I

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Request"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/tencent/tmassistant/common/jce/JceCmd;->convert(Ljava/lang/String;)Lcom/tencent/tmassistant/common/jce/JceCmd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistant/common/jce/JceCmd;->value()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->cmdId:I

    .line 87
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mQUA:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->qua:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getPhoneGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    .line 91
    new-instance v1, Lcom/tencent/tmassistant/common/jce/Terminal;

    invoke-direct {v1}, Lcom/tencent/tmassistant/common/jce/Terminal;-><init>()V

    .line 92
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getAndroidIdInPhone()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->androidId:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getPhoneGuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->androidIdSdCard:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->imei:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getImsi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->imsi:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistant/common/jce/Terminal;->macAdress:Ljava/lang/String;

    .line 97
    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    .line 101
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getQQDownloaderAPILevel()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->assistantAPILevel:I

    .line 102
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getQQDownloaderVersionCode()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->assistantVersionCode:I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "head:  head.requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->requestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.cmdId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->cmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.qua = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->qua:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.phoneGuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->phoneGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.assistantAPILevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->assistantAPILevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; head.assistantVersionCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->assistantVersionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    if-eqz v2, :cond_1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; head.terminal : (imei = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/Terminal;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/Terminal;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; macAdress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/Terminal;->macAdress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; androidIdSdCard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/Terminal;->androidIdSdCard:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; androidId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->terminal:Lcom/tencent/tmassistant/common/jce/Terminal;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/Terminal;->androidId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->net:Lcom/tencent/tmassistant/common/jce/Net;

    if-eqz v2, :cond_2

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; head.net: (netType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->net:Lcom/tencent/tmassistant/common/jce/Net;

    iget-byte v3, v3, Lcom/tencent/tmassistant/common/jce/Net;->netType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isWap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->net:Lcom/tencent/tmassistant/common/jce/Net;

    iget-byte v3, v3, Lcom/tencent/tmassistant/common/jce/Net;->isWap:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; extNetworkOperator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->net:Lcom/tencent/tmassistant/common/jce/Net;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/Net;->extNetworkOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; extNetworkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->net:Lcom/tencent/tmassistant/common/jce/Net;

    iget v3, v3, Lcom/tencent/tmassistant/common/jce/Net;->extNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_2
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a([B)Lcom/tencent/tmassistant/common/jce/Response;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 186
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 189
    :cond_0
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "null == dataBuffer || dataBuffer.length < 4"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 230
    :goto_0
    return-object v0

    .line 195
    :cond_1
    new-instance v0, Lcom/tencent/tmassistant/common/jce/Response;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/Response;-><init>()V

    .line 199
    :try_start_0
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 200
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0, v2}, Lcom/tencent/tmassistant/common/jce/Response;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 203
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget v2, v2, Lcom/tencent/tmassistant/common/jce/RspHead;->ret:I

    if-nez v2, :cond_4

    .line 206
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget-byte v2, v2, Lcom/tencent/tmassistant/common/jce/RspHead;->encryptWithPack:B

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 208
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    const-string v3, "ji*9^&43U0X-~./("

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistant/common/a;->b([B[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    .line 209
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "decrypt process"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget-byte v2, v2, Lcom/tencent/tmassistant/common/jce/RspHead;->encryptWithPack:B

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 214
    iget-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    invoke-static {v2}, Lcom/tencent/tmassistantbase/util/ZipUtils;->unzip([B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    .line 215
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "unzip process"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_3
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget-object v3, v3, Lcom/tencent/tmassistant/common/jce/RspHead;->phoneGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->setPhoneGuid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_4
    sget-object v1, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 227
    goto :goto_0
.end method

.method public static a(Lcom/tencent/tmassistant/common/jce/Request;)[B
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-nez p0, :cond_0

    .line 152
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "null == request"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    .line 159
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    array-length v0, v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/ZipUtils;->zip([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    .line 162
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "zip process"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-object v1, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-byte v1, v1, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    const-string v1, "ji*9^&43U0X-~./("

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistant/common/a;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    .line 168
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "encrypt process"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-object v1, p0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    iget-byte v1, v1, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/tencent/tmassistant/common/jce/ReqHead;->encryptWithPack:B

    .line 170
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->c(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 357
    .line 361
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 366
    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 367
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    :goto_1
    :try_start_3
    sget-object v4, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v5, "exception: "

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 379
    if-eqz v3, :cond_0

    .line 383
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 393
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 397
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_3
    move-object v0, v1

    .line 407
    :cond_2
    :goto_4
    return-object v0

    .line 370
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 379
    if-eqz v3, :cond_4

    .line 383
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 393
    :cond_4
    :goto_5
    if-eqz v2, :cond_2

    .line 397
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 399
    :catch_1
    move-exception v1

    .line 402
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 379
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_5

    .line 383
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 393
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 397
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 379
    :cond_6
    :goto_8
    throw v0

    .line 385
    :catch_2
    move-exception v1

    .line 388
    sget-object v3, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 399
    :catch_3
    move-exception v1

    .line 402
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 385
    :catch_4
    move-exception v0

    .line 388
    sget-object v3, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v4, "exception: "

    invoke-static {v3, v4, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 399
    :catch_5
    move-exception v0

    .line 402
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 385
    :catch_6
    move-exception v1

    .line 388
    sget-object v3, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 379
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 372
    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1
.end method

.method public static a([B[B)[B
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tmassistantbase/util/Cryptor;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistant/common/jce/Request;
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-nez p0, :cond_0

    .line 128
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "null == jceRequestStruce"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/tencent/tmassistant/common/jce/Request;

    invoke-direct {v0}, Lcom/tencent/tmassistant/common/jce/Request;-><init>()V

    .line 135
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->a(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistant/common/jce/ReqHead;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/Request;->head:Lcom/tencent/tmassistant/common/jce/ReqHead;

    .line 136
    invoke-static {p0}, Lcom/tencent/tmassistant/common/a;->c(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    .line 137
    sget-object v1, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b([B[B)[B
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tmassistantbase/util/Cryptor;->decrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/qq/taf/jce/JceStruct;)[B
    .locals 2

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    .line 321
    :cond_0
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 322
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 324
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 272
    sget-object v0, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-nez p0, :cond_0

    .line 310
    :goto_0
    return-object v1

    .line 280
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Request"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    :goto_1
    sget-object v1, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 310
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 308
    goto :goto_1

    .line 297
    :catch_1
    move-exception v0

    .line 300
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 308
    goto :goto_1

    .line 303
    :catch_2
    move-exception v0

    .line 306
    sget-object v2, Lcom/tencent/tmassistant/common/a;->a:Ljava/lang/String;

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method
