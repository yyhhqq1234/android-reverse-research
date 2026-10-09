.class public Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;
.super Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
.source "WhiteListInfoProxyEx.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy",
        "<",
        "Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private srp_verison:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "WhiteListInfoProxyEx"

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "messageListener"    # Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;
    .param p2, "object"    # [Ljava/lang/Object;

    .prologue
    .line 40
    const-class v1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    invoke-direct {p0, p1, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;-><init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;Ljava/lang/Class;)V

    .line 41
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->srp_verison:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse srpVersion fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getCommand()I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->CMD_SYRECORDCONF:Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;

    invoke-virtual {v0}, Lcom/qt/qq/SYRecordConf/syrecordconf_cmd_types;->getValue()I

    move-result v0

    return v0
.end method

.method protected getRequestContent()[B
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 63
    new-instance v1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    invoke-direct {v1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;-><init>()V

    .line 64
    .local v1, "builder":Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->getConnectionManager()Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->pkg_name(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 65
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->os_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 66
    const/16 v3, 0xaf1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->sdk_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 67
    iget v3, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->srp_verison:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->plugin_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 68
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->phone_type(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->source(Ljava/lang/Integer;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 70
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getCpuInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->cpu_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 71
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getGpuInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->gpu_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 73
    invoke-static {}, Lcom/tencent/msdk/MSDKManager;->getInstance()Lcom/tencent/msdk/MSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/MSDKManager;->reqMsdkLoginInfo()Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;

    move-result-object v0

    .line 74
    .local v0, "bean":Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->validated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget v3, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkLoginType:I

    if-ne v3, v4, :cond_0

    .line 76
    iget-object v3, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAppID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->qqappid(Ljava/lang/Long;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 78
    :cond_0
    iget-object v3, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkOpenID:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->openid(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 79
    iget-object v3, v0, Lcom/tencent/msdk/MSDKManager$MsdkLoginBean;->msdkAcessToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->safeEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->access_token(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;

    .line 82
    :cond_1
    invoke-virtual {v1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->build()Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->toByteArray()[B

    move-result-object v2

    .line 83
    .local v2, "data":[B
    if-eqz v2, :cond_2

    .line 84
    sget-object v3, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v3, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRequestContent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2
    return-object v2
.end method

.method protected getSubcmd()I
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->SUBCMD_GET_WHITELIST_INFO:Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;

    invoke-virtual {v0}, Lcom/qt/qq/SYRecordConf/syrecordconf_subcmd_types;->getValue()I

    move-result v0

    return v0
.end method

.method protected parseRspPB(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;)V
    .locals 12
    .param p1, "getWhiteListInfoRsp"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->getWire()Lcom/squareup/wire/Wire;

    iget-object v7, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->result:Ljava/lang/Integer;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    .local v2, "status":I
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->getWire()Lcom/squareup/wire/Wire;

    iget-object v7, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->in_whitelist:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 95
    .local v1, "isWhite":Z
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->getWire()Lcom/squareup/wire/Wire;

    iget-object v7, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->_switch:Ljava/lang/Long;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 96
    .local v4, "switchs":J
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/pb/ProtoUtils;->getWire()Lcom/squareup/wire/Wire;

    iget-object v7, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;->bzid:Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 97
    .local v6, "videoBusId":I
    invoke-static {}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->getFilter()I

    move-result v0

    .line 98
    .local v0, "filter":I
    int-to-long v8, v0

    and-long/2addr v8, v4

    long-to-int v3, v8

    .line 99
    .local v3, "swithsInt":I
    sget-object v7, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->TAG:Ljava/lang/String;

    const-string v8, "status :%d,isWhite:%b,videoBusId:%d,switchsBefore:%d,switchsAfter:%d,filter:%d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 99
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v7, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    if-eqz v7, :cond_0

    .line 102
    iget-object v7, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->messageListener:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;->onSuccess([Ljava/lang/Object;)V

    .line 105
    .end local v0    # "filter":I
    .end local v1    # "isWhite":Z
    .end local v2    # "status":I
    .end local v3    # "swithsInt":I
    .end local v4    # "switchs":J
    .end local v6    # "videoBusId":I
    :cond_0
    return-void
.end method

.method protected bridge synthetic parseRspPB(Lcom/squareup/wire/Message;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;

    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->parseRspPB(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoRsp;)V

    return-void
.end method
