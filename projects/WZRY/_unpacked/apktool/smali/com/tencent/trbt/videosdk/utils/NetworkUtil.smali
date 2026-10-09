.class public Lcom/tencent/trbt/videosdk/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static DEV:Ljava/lang/String;

.field public static MA:Ljava/lang/String;

.field public static TEST:Ljava/lang/String;

.field private static mQua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "https://nggproxyquic.open.qq.com:443"

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->DEV:Ljava/lang/String;

    .line 29
    const-string v0, "https://nggproxytest.open.qq.com:443"

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->TEST:Ljava/lang/String;

    .line 30
    const-string v0, "https://nggproxyma.open.qq.com:443"

    sput-object v0, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->MA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCmd(Lcom/qq/taf/jce/JceStruct;)I
    .locals 4
    .param p0, "request"    # Lcom/qq/taf/jce/JceStruct;

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Request"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->convert(Ljava/lang/String;)Lcom/tencent/trbt/videosdk/wzry/JceCmd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/trbt/videosdk/wzry/JceCmd;->value()I

    move-result v1

    return v1
.end method

.method public static getQUA()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    sget-object v2, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->mQua:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    sget-object v2, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->mQua:Ljava/lang/String;

    .line 76
    .local v0, "builder":Lcom/tencent/trbt/videosdk/utils/QUABuilder;
    .local v1, "channel":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 37
    .end local v0    # "builder":Lcom/tencent/trbt/videosdk/utils/QUABuilder;
    .end local v1    # "channel":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/utils/QUABuilder;-><init>()V

    .line 38
    .restart local v0    # "builder":Lcom/tencent/trbt/videosdk/utils/QUABuilder;
    const-string v2, "V1"

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->version:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getAppName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->appName:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getVersionName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->appVersion:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getAppVersionCode()I

    move-result v2

    iput v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->appVersionCode:I

    .line 42
    const/4 v1, 0x0

    .line 43
    .restart local v1    # "channel":Ljava/lang/String;
    sget-object v2, Lcom/tencent/trbt/videosdk/utils/NetworkUtil$1;->$SwitchMap$com$tencent$trbt$videosdk$utils$Global$AppStatus:[I

    sget-object v3, Lcom/tencent/trbt/videosdk/utils/Global;->channel:Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;

    invoke-virtual {v3}, Lcom/tencent/trbt/videosdk/utils/Global$AppStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 54
    const-string v1, "DEV"

    .line 56
    :goto_1
    iput-object v1, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->channel:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getBuildNo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->buildno:Ljava/lang/String;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getLinuxCore_Ver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->platform:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->sdkVersionNameAndCode:Ljava/lang/String;

    .line 61
    iput v4, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->romRootFlag:I

    .line 62
    iput v4, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->rootState:I

    .line 63
    sget v2, Lcom/tencent/trbt/videosdk/utils/Global;->tempRoot:I

    iput v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->tempRoot:I

    .line 64
    iput v4, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->clientVmType:I

    .line 66
    iput v4, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->xResolution:I

    .line 67
    iput v4, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->yResolution:I

    .line 69
    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->fontSize:F

    .line 71
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getUA()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->phoneMessage:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/Global;->getChannelId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->channelId:Ljava/lang/String;

    .line 73
    const-string v2, "NA"

    iput-object v2, v0, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->serialNo:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Lcom/tencent/trbt/videosdk/utils/QUABuilder;->get()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->mQua:Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->mQua:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_0
    const-string v1, "DEV"

    .line 46
    goto :goto_1

    .line 48
    :pswitch_1
    const-string v1, "P"

    .line 49
    goto :goto_1

    .line 51
    :pswitch_2
    const-string v1, "F"

    .line 52
    goto :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTerminalInfoHeader()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;-><init>()V

    .line 173
    .local v0, "terminalInfoHeader":Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;
    new-instance v1, Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    invoke-direct {v1}, Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;-><init>()V

    iput-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    .line 174
    invoke-static {}, Lcom/tencent/trbt/videosdk/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestTerminalInfoHeader;->androidTerminal:Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;

    invoke-static {}, Lcom/tencent/trbt/videosdk/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/trbt/videosdk/wzry/AndroidTerminal;->androidId:Ljava/lang/String;

    .line 177
    :cond_0
    invoke-static {v0}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->jceObj2Bytes(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUserInfoHeader()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;-><init>()V

    .line 165
    .local v0, "userInfoHeader":Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->getQUA()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->qua:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestUserInfoHeader;->deviceId:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->jceObj2Bytes(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static packageRequest(ILcom/qq/taf/jce/JceStruct;)[B
    .locals 13
    .param p0, "requestId"    # I
    .param p1, "request"    # Lcom/qq/taf/jce/JceStruct;

    .prologue
    .line 87
    new-instance v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;

    invoke-direct {v6}, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;-><init>()V

    .line 88
    .local v6, "nggRequest":Lcom/tencent/trbt/videosdk/wzry/NGGRequest;
    new-instance v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    invoke-direct {v10}, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;-><init>()V

    iput-object v10, v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    .line 89
    iget-object v10, v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    iput p0, v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->requestId:I

    .line 90
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;-><init>()V

    .line 91
    .local v0, "body":Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;
    new-instance v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    invoke-direct {v10}, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;-><init>()V

    iput-object v10, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    .line 92
    iget-object v10, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    new-instance v11, Lcom/tencent/trbt/videosdk/wzry/Net;

    invoke-direct {v11}, Lcom/tencent/trbt/videosdk/wzry/Net;-><init>()V

    iput-object v11, v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->net:Lcom/tencent/trbt/videosdk/wzry/Net;

    .line 93
    iget-object v10, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    .line 94
    iget-object v10, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->bodyBase:Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;

    iget-object v10, v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    const-string/jumbo v11, "userinfo"

    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->getUserInfo()Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->jceObj2Bytes(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    .line 96
    new-instance v2, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;

    invoke-direct {v2}, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;-><init>()V

    .line 97
    .local v2, "cmdRequest":Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;
    invoke-static {p1}, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->getCmd(Lcom/qq/taf/jce/JceStruct;)I

    move-result v10

    iput v10, v2, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdId:I

    .line 98
    iput p0, v2, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->cmdRequestId:I

    .line 99
    invoke-static {p1}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->jceObj2Bytes(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v10

    iput-object v10, v2, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdRequest;->body:[B

    .line 100
    iget-object v10, v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBody;->multiCmds:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v0}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->jceObj2Bytes(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    .line 103
    iget-object v10, v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    if-eqz v10, :cond_0

    iget-object v10, v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->body:[B

    array-length v10, v10

    if-gtz v10, :cond_1

    .line 104
    :cond_0
    const/4 v4, 0x0

    .line 137
    :goto_0
    return-object v4

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 107
    .local v1, "bodyFlag":B
    const/4 v3, 0x0

    .line 117
    .local v3, "compressVer":I
    iget-object v10, v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    iput-byte v1, v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->bodyDataFlag:B

    .line 118
    iget-object v10, v6, Lcom/tencent/trbt/videosdk/wzry/NGGRequest;->header:Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;

    iput v3, v10, Lcom/tencent/trbt/videosdk/wzry/NGGRequestHeader;->compressVer:I

    .line 121
    invoke-static {v6}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->jceObj2Bytes(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v5

    .line 122
    .local v5, "headBytes":[B
    array-length v8, v5

    .line 124
    .local v8, "size":I
    add-int/lit8 v10, v8, 0xc

    new-array v4, v10, [B

    .line 125
    .local v4, "head":[B
    const/4 v10, 0x0

    const/16 v11, 0x23

    aput-byte v11, v4, v10

    .line 126
    const/4 v10, 0x1

    const/4 v11, 0x1

    aput-byte v11, v4, v10

    .line 127
    const/4 v10, 0x2

    const/4 v11, 0x6

    aput-byte v11, v4, v10

    .line 129
    invoke-static {p0}, Lcom/tencent/trbt/videosdk/utils/CommonUtil;->intToBytes(I)[B

    move-result-object v7

    .line 130
    .local v7, "reqBuffer":[B
    const/4 v10, 0x0

    const/4 v11, 0x3

    array-length v12, v7

    invoke-static {v7, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    invoke-static {v8}, Lcom/tencent/trbt/videosdk/utils/CommonUtil;->intToBytes(I)[B

    move-result-object v9

    .line 133
    .local v9, "sizeBuffer":[B
    const/4 v10, 0x0

    const/4 v11, 0x7

    array-length v12, v9

    invoke-static {v9, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const/16 v10, 0xb

    const/4 v11, 0x0

    aput-byte v11, v4, v10

    .line 136
    const/4 v10, 0x0

    const/16 v11, 0xc

    invoke-static {v5, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static unPackageResponse([B)Lcom/tencent/trbt/videosdk/wzry/NGGResponse;
    .locals 8
    .param p0, "responseBuffer"    # [B

    .prologue
    const/4 v4, 0x0

    .line 141
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v4

    .line 147
    :cond_1
    const/4 v5, 0x4

    :try_start_0
    new-array v0, v5, [B

    .line 148
    .local v0, "bodyLen":[B
    const/16 v5, 0x9

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {p0, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/tencent/trbt/videosdk/utils/CommonUtil;->bytesToInt([BI)I

    move-result v3

    .line 151
    .local v3, "length":I
    new-array v1, v3, [B

    .line 152
    .local v1, "buffer":[B
    const/16 v5, 0xe

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {p0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const-class v5, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;

    invoke-static {v1, v5}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->bytes2JceObj([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v4

    check-cast v4, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;

    .line 159
    .local v4, "response":Lcom/tencent/trbt/videosdk/wzry/NGGResponse;
    goto :goto_0

    .line 153
    .end local v0    # "bodyLen":[B
    .end local v1    # "buffer":[B
    .end local v3    # "length":I
    .end local v4    # "response":Lcom/tencent/trbt/videosdk/wzry/NGGResponse;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
