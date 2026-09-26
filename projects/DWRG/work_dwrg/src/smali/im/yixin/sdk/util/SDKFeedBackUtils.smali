.class public final Lim/yixin/sdk/util/SDKFeedBackUtils;
.super Ljava/lang/Object;
.source "SDKFeedBackUtils.java"


# static fields
.field private static FEEDBACK_ID:Ljava/lang/String; = null

.field private static FEEDBACK_TITLE:Ljava/lang/String; = null

.field private static final FEEDBACK_UPDATE_FILE_OR_PICTURE:Ljava/lang/String; = "http://fankui.163.com/ft/upCmtAttach.fb"

.field private static final FEEDBACK_UPLOAD_FILE_URL:Ljava/lang/String; = "http://fankui.163.com/ft/file.fb?op=up"

.field private static final FEEDBACK_URL:Ljava/lang/String; = "http://fankui.163.com/ft/commentInner.fb?cid"

.field private static HTTP_PRODUCT_ID:Ljava/lang/String; = null

.field private static final LINE_SPLIT:Ljava/lang/String; = "\n"

.field private static NORMAL_PRODUCT_ID:Ljava/lang/String; = null

.field private static final PART_SPLIT:Ljava/lang/String; = ", "

.field private static instance:Lim/yixin/sdk/util/SDKFeedBackUtils;

.field private static lastPostTime:J


# instance fields
.field private applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "29001"

    sput-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->NORMAL_PRODUCT_ID:Ljava/lang/String;

    .line 48
    const-string v0, "30001"

    sput-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->HTTP_PRODUCT_ID:Ljava/lang/String;

    .line 53
    const-string v0, "16025"

    sput-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->FEEDBACK_ID:Ljava/lang/String;

    .line 58
    const-string v0, "android SDK\u5206\u4eab\u5931\u8d25"

    sput-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->FEEDBACK_TITLE:Ljava/lang/String;

    .line 82
    const-wide/16 v0, 0x0

    sput-wide v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->lastPostTime:J

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$0(Lim/yixin/sdk/util/SDKFeedBackUtils;Lim/yixin/sdk/api/ExceptionInfo;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLogWorker(Lim/yixin/sdk/api/ExceptionInfo;)V

    return-void
.end method

.method private genContent(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    .line 135
    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReq()Lim/yixin/sdk/api/SendMessageToYX$Req;

    move-result-object v2

    .line 137
    .local v2, "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "os=android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v4, "device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lim/yixin/sdk/util/DevicesUtils;->collectDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v4, "sdkversion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x2712

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v0, ""

    .line 145
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lim/yixin/sdk/api/YXAPIFactory;->getInstance()Lim/yixin/sdk/api/IYXAPI;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 146
    invoke-static {}, Lim/yixin/sdk/api/YXAPIFactory;->getInstance()Lim/yixin/sdk/api/IYXAPI;

    move-result-object v4

    invoke-interface {v4}, Lim/yixin/sdk/api/IYXAPI;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    const-string v4, "app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lim/yixin/sdk/util/DevicesUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lim/yixin/sdk/util/DevicesUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v4, "appThirdPart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lim/yixin/sdk/api/ExceptionInfo;->appIdThirdpart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lim/yixin/sdk/api/ExceptionInfo;->appNameThirdpart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 152
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lim/yixin/sdk/api/ExceptionInfo;->sdkVersionThirdpart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v4, p1, Lim/yixin/sdk/api/ExceptionInfo;->operationTypeOther:Ljava/lang/String;

    invoke-static {v4}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v1, p1, Lim/yixin/sdk/api/ExceptionInfo;->operationTypeOther:Ljava/lang/String;

    .line 155
    .local v1, "operationType":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    iget-object v4, v4, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    if-eqz v4, :cond_1

    .line 156
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v4

    iget-object v5, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    iget-object v5, v5, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/yixin/sdk/util/SDKHttpUtils;->getOperationTypeByClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_1
    const-string v4, "operation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v4, "network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lim/yixin/sdk/util/SDKNetworkUtil;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 161
    iget-object v5, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lim/yixin/sdk/util/SDKNetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    if-eqz v2, :cond_5

    .line 164
    const-string v4, "data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->scene:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    iget-object v4, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    if-eqz v4, :cond_2

    .line 166
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    invoke-virtual {v5}, Lim/yixin/sdk/api/YXMessage;->toJson4Log()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_2
    iget-object v4, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    iget-object v4, v4, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    if-eqz v4, :cond_3

    .line 169
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    iget-object v5, v5, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-interface {v5}, Lim/yixin/sdk/api/YXMessage$YXMessageData;->toJson4Log()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_3
    iget-object v4, p1, Lim/yixin/sdk/api/ExceptionInfo;->dataOther:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 172
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lim/yixin/sdk/api/ExceptionInfo;->dataOther:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_4
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_5
    const-string v4, "reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    iget-object v4, p1, Lim/yixin/sdk/api/ExceptionInfo;->classError:Ljava/lang/Class;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lim/yixin/sdk/api/ExceptionInfo;->classError:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 179
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v4, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    .line 182
    iget-object v4, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    invoke-direct {p0, v4}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 154
    .end local v1    # "operationType":Ljava/lang/String;
    :cond_7
    const-string v1, "unknown"

    goto/16 :goto_0

    .line 178
    .restart local v1    # "operationType":Ljava/lang/String;
    :cond_8
    const-string v4, "NULL"

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;
    .locals 3

    .prologue
    .line 97
    const-class v1, Lim/yixin/sdk/util/SDKFeedBackUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->instance:Lim/yixin/sdk/util/SDKFeedBackUtils;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lim/yixin/sdk/util/SDKFeedBackUtils;

    invoke-direct {v0}, Lim/yixin/sdk/util/SDKFeedBackUtils;-><init>()V

    sput-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->instance:Lim/yixin/sdk/util/SDKFeedBackUtils;

    .line 101
    :cond_0
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->instance:Lim/yixin/sdk/util/SDKFeedBackUtils;

    iget-object v0, v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {}, Lim/yixin/sdk/api/YXAPIFactory;->getInstance()Lim/yixin/sdk/api/IYXAPI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->instance:Lim/yixin/sdk/util/SDKFeedBackUtils;

    invoke-static {}, Lim/yixin/sdk/api/YXAPIFactory;->getInstance()Lim/yixin/sdk/api/IYXAPI;

    move-result-object v2

    invoke-interface {v2}, Lim/yixin/sdk/api/IYXAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    .line 105
    :cond_1
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->instance:Lim/yixin/sdk/util/SDKFeedBackUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProductId(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    .line 192
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/net/SocketException;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->HTTP_PRODUCT_ID:Ljava/lang/String;

    .line 201
    :goto_0
    return-object v0

    .line 194
    :cond_0
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->HTTP_PRODUCT_ID:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_2

    .line 197
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->HTTP_PRODUCT_ID:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_2
    iget-boolean v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->isProductHttp:Z

    if-eqz v0, :cond_3

    .line 199
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->HTTP_PRODUCT_ID:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_3
    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->NORMAL_PRODUCT_ID:Ljava/lang/String;

    goto :goto_0
.end method

.method private getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 120
    .local v2, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 121
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 123
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 124
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method private parseFileidFromPostFileResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 258
    const-class v5, Lim/yixin/sdk/util/SDKFeedBackUtils;

    invoke-static {v5, p1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 259
    invoke-static {p1}, Lim/yixin/sdk/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v6

    .line 277
    :cond_0
    :goto_0
    return-object v2

    .line 262
    :cond_1
    const/4 v4, 0x0

    .line 263
    .local v4, "object":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 264
    .local v3, "isSuccess":Z
    const/4 v2, 0x0

    .line 266
    .local v2, "fileId":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 267
    if-nez v4, :cond_2

    move-object v2, v6

    .line 268
    goto :goto_0

    .line 270
    :cond_2
    const-string v5, "success"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 271
    if-eqz v3, :cond_0

    .line 272
    const-string v5, "fileId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    const-class v5, Lim/yixin/sdk/util/SDKFeedBackUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseFileidFromPostFileResponse error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postErrorLogWorker(Lim/yixin/sdk/api/ExceptionInfo;)V
    .locals 13
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lim/yixin/sdk/util/DevicesUtils;->getPermissions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ". no postErrorLog because no android.permission.INTERNET. "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "applicationContext is null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p1, v0}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 351
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->classError:Ljava/lang/Class;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    :cond_0
    :goto_1
    return-void

    .line 350
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->classError:Ljava/lang/Class;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    invoke-direct {p0, p1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getProductId(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "productId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->FEEDBACK_TITLE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->feedBackTitle:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    const-wide/16 v3, 0x2712

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v10

    const-string v11, "http://fankui.163.com/ft/commentInner.fb?cid"

    const-string v12, "application/x-www-form-urlencoded"

    .line 361
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lim/yixin/sdk/util/SDKFeedBackUtils;->createFeedBackReqeust(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 360
    invoke-virtual {v10, v11, v12, v0}, Lim/yixin/sdk/util/SDKHttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "cid":Ljava/lang/String;
    invoke-direct {p0, p1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postThumbData(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, "pictureId":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0, v9, v5}, Lim/yixin/sdk/util/SDKFeedBackUtils;->updateFeedBackFileIdOrPictureId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v8, 0x0

    .line 367
    .local v8, "fileId":Ljava/lang/String;
    const-string v0, "WIFI"

    iget-object v1, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lim/yixin/sdk/util/SDKNetworkUtil;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0, p1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postImageData(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;

    move-result-object v8

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v8, v0, v5}, Lim/yixin/sdk/util/SDKFeedBackUtils;->updateFeedBackFileIdOrPictureId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 371
    .end local v2    # "title":Ljava/lang/String;
    .end local v5    # "productId":Ljava/lang/String;
    .end local v6    # "cid":Ljava/lang/String;
    .end local v8    # "fileId":Ljava/lang/String;
    .end local v9    # "pictureId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 372
    .local v7, "e":Ljava/lang/Exception;
    const-class v0, Lim/yixin/sdk/util/SDKFeedBackUtils;

    const-string v1, "FeedBackUtils post data error"

    invoke-static {v0, v1, v7}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 358
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "productId":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lim/yixin/sdk/api/ExceptionInfo;->feedBackTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private postFileData([BLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "fileData"    # [B
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 285
    :try_start_0
    new-instance v0, Lim/yixin/sdk/http/multipart/ByteArrayPartSource;

    invoke-direct {v0, p2, p1}, Lim/yixin/sdk/http/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    .line 286
    .local v0, "byteArrayPartSource":Lim/yixin/sdk/http/multipart/ByteArrayPartSource;
    new-instance v3, Lim/yixin/sdk/http/multipart/FilePart;

    const-string v6, "Filedata"

    invoke-direct {v3, v6, v0}, Lim/yixin/sdk/http/multipart/FilePart;-><init>(Ljava/lang/String;Lim/yixin/sdk/http/multipart/PartSource;)V

    .line 287
    .local v3, "filePart":Lim/yixin/sdk/http/multipart/FilePart;
    new-instance v2, Lim/yixin/sdk/http/multipart/MultipartEntity;

    const/4 v6, 0x1

    new-array v6, v6, [Lim/yixin/sdk/http/multipart/Part;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-direct {v2, v6}, Lim/yixin/sdk/http/multipart/MultipartEntity;-><init>([Lim/yixin/sdk/http/multipart/Part;)V

    .line 289
    .local v2, "entity":Lim/yixin/sdk/http/multipart/MultipartEntity;
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v6

    const-string v7, "http://fankui.163.com/ft/file.fb?op=up"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v2}, Lim/yixin/sdk/util/SDKHttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "response":Ljava/lang/String;
    invoke-direct {p0, v4}, Lim/yixin/sdk/util/SDKFeedBackUtils;->parseFileidFromPostFileResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 293
    .end local v0    # "byteArrayPartSource":Lim/yixin/sdk/http/multipart/ByteArrayPartSource;
    .end local v2    # "entity":Lim/yixin/sdk/http/multipart/MultipartEntity;
    .end local v3    # "filePart":Lim/yixin/sdk/http/multipart/FilePart;
    .end local v4    # "response":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    const-class v6, Lim/yixin/sdk/util/SDKFeedBackUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FeedBackUtils postFileData error fileName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private postImageData(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    const/4 v4, 0x0

    .line 302
    move-object v0, v4

    check-cast v0, [B

    .line 303
    .local v0, "imageData":[B
    const/4 v1, 0x0

    .line 304
    .local v1, "imagePath":Ljava/lang/String;
    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReqMessageData()Lim/yixin/sdk/api/YXMessage$YXMessageData;

    move-result-object v2

    .line 305
    .local v2, "messageData":Lim/yixin/sdk/api/YXMessage$YXMessageData;
    if-eqz v2, :cond_0

    instance-of v5, v2, Lim/yixin/sdk/api/YXImageMessageData;

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 306
    check-cast v5, Lim/yixin/sdk/api/YXImageMessageData;

    iget-object v0, v5, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    .line 307
    check-cast v2, Lim/yixin/sdk/api/YXImageMessageData;

    .end local v2    # "messageData":Lim/yixin/sdk/api/YXMessage$YXMessageData;
    iget-object v1, v2, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    .line 310
    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    invoke-static {v1}, Lim/yixin/sdk/util/FileUtil;->fileToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 313
    :cond_1
    if-nez v0, :cond_2

    .line 314
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->imageDataOther:[B

    .line 316
    :cond_2
    if-nez v0, :cond_3

    .line 325
    :goto_0
    return-object v4

    .line 319
    :cond_3
    array-length v5, v0

    const/high16 v6, 0x100000

    if-le v5, v6, :cond_4

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postImageData not post because imageData.length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_4
    invoke-static {v0}, Lim/yixin/sdk/util/FileUtil;->zip([B)[B

    move-result-object v3

    .line 325
    .local v3, "zipData":[B
    const-string v4, "imageData"

    invoke-direct {p0, v3, v4}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postFileData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private postThumbData(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    .line 333
    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReqMessageThumbData()[B

    move-result-object v0

    .line 334
    .local v0, "thumbData":[B
    if-nez v0, :cond_0

    .line 335
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->thumbDataOther:[B

    .line 336
    :cond_0
    if-nez v0, :cond_1

    .line 337
    const/4 v1, 0x0

    .line 339
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "thumbData"

    invoke-direct {p0, v0, v1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postFileData([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public createFeedBackReqeust(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 4
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .param p4, "pictureId"    # Ljava/lang/String;
    .param p5, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "feedbackId"

    sget-object v3, Lim/yixin/sdk/util/SDKFeedBackUtils;->FEEDBACK_ID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "productId"

    invoke-direct {v1, v2, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userName"

    iget-object v3, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lim/yixin/sdk/util/DevicesUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "title"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "content"

    invoke-direct {p0, p1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->genContent(Lim/yixin/sdk/api/ExceptionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {p3}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fileId"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    invoke-static {p4}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "pictureId"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_1
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "GB2312"

    invoke-direct {v1, v0, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public postErrorHttpLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "errorInfo"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 420
    new-instance v0, Lim/yixin/sdk/api/ExceptionInfo;

    invoke-direct {v0, p1, p2, p3}, Lim/yixin/sdk/api/ExceptionInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    .local v0, "info":Lim/yixin/sdk/api/ExceptionInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lim/yixin/sdk/api/ExceptionInfo;->isProductHttp:Z

    .line 422
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    const-class v0, Lim/yixin/sdk/util/SDKFeedBackUtils;

    const-string v1, "FeedBackUtils post data is null"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-static {p2}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {p1, p2}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 387
    :cond_1
    const-class v0, Lim/yixin/sdk/util/SDKFeedBackUtils;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 390
    iget-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 391
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lim/yixin/sdk/api/ExceptionInfo;->throwable:Ljava/lang/Throwable;

    .line 394
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lim/yixin/sdk/util/SDKFeedBackUtils;->lastPostTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 395
    const-class v0, Lim/yixin/sdk/util/SDKFeedBackUtils;

    const-string v1, "postErrorLog can not post twice in 1 minutes"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lim/yixin/sdk/util/SDKFeedBackUtils;->lastPostTime:J

    .line 400
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lim/yixin/sdk/util/SDKFeedBackUtils$1;

    invoke-direct {v1, p0, p1}, Lim/yixin/sdk/util/SDKFeedBackUtils$1;-><init>(Lim/yixin/sdk/util/SDKFeedBackUtils;Lim/yixin/sdk/api/ExceptionInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 405
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "errorInfo"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 412
    new-instance v0, Lim/yixin/sdk/api/ExceptionInfo;

    invoke-direct {v0, p1, p2, p3}, Lim/yixin/sdk/api/ExceptionInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    .local v0, "info":Lim/yixin/sdk/api/ExceptionInfo;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "errorInfo"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "appIdThirdpart"    # Ljava/lang/String;
    .param p5, "appNameThirdpart"    # Ljava/lang/String;
    .param p6, "sdkVersionThirdpart"    # Ljava/lang/String;

    .prologue
    .line 437
    new-instance v0, Lim/yixin/sdk/api/ExceptionInfo;

    invoke-direct {v0, p1, p2, p3}, Lim/yixin/sdk/api/ExceptionInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    .local v0, "info":Lim/yixin/sdk/api/ExceptionInfo;
    iput-object p4, v0, Lim/yixin/sdk/api/ExceptionInfo;->appIdThirdpart:Ljava/lang/String;

    .line 439
    iput-object p5, v0, Lim/yixin/sdk/api/ExceptionInfo;->appNameThirdpart:Ljava/lang/String;

    .line 440
    iput-object p6, v0, Lim/yixin/sdk/api/ExceptionInfo;->sdkVersionThirdpart:Ljava/lang/String;

    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContextParam"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/util/SDKFeedBackUtils;->applicationContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public updateFeedBackFileIdOrPictureId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "pictureId"    # Ljava/lang/String;
    .param p4, "productId"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "cid"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "productId"

    invoke-direct {v4, v5, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {p2}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "fileId"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "fileName"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_0
    const/4 v1, 0x0

    .line 246
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "GB2312"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_1
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v4

    const-string v5, "http://fankui.163.com/ft/upCmtAttach.fb"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v5, v6, v2}, Lim/yixin/sdk/util/SDKHttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 252
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_1
    return-void

    .line 238
    :cond_1
    invoke-static {p3}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pictureId"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-class v4, Lim/yixin/sdk/util/SDKFeedBackUtils;

    const-string v5, "updateFeedBackFileId error"

    invoke-static {v4, v5, v0}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_2
.end method
