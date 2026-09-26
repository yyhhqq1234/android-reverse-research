.class public Lim/yixin/sdk/channel/YXMessageProtocol;
.super Ljava/lang/Object;
.source "YXMessageProtocol.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appPackage:Ljava/lang/String;

.field private checkSum:[B

.field private command:Ljava/lang/String;

.field private sdkVersion:J

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->uri:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appId:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->command:Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->sdkVersion:J

    .line 34
    iput-object v2, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appPackage:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->checkSum:[B

    .line 40
    return-void
.end method

.method public static final parseProtocol(Landroid/content/Intent;)Lim/yixin/sdk/channel/YXMessageProtocol;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    new-instance v0, Lim/yixin/sdk/channel/YXMessageProtocol;

    invoke-direct {v0}, Lim/yixin/sdk/channel/YXMessageProtocol;-><init>()V

    .line 85
    .local v0, "p":Lim/yixin/sdk/channel/YXMessageProtocol;
    if-eqz p0, :cond_0

    .line 86
    const-string v1, "_yxmessage_content"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/yixin/sdk/channel/YXMessageProtocol;->parseUri(Ljava/lang/String;)V

    .line 87
    const-string v1, "_yxmessage_sdkVersion"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lim/yixin/sdk/channel/YXMessageProtocol;->sdkVersion:J

    .line 88
    const-string v1, "_yxmessage_appPackage"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lim/yixin/sdk/channel/YXMessageProtocol;->appPackage:Ljava/lang/String;

    .line 89
    const-string v1, "_yxmessage_checksum"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lim/yixin/sdk/channel/YXMessageProtocol;->checkSum:[B

    .line 91
    :cond_0
    return-object v0
.end method

.method private parseUri(Ljava/lang/String;)V
    .locals 5
    .param p1, "protocolData"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yixin://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v1

    const-class v2, Lim/yixin/sdk/channel/YXMessageProtocol;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error when parseUri,protocolData="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 101
    invoke-virtual {v1, v2, v3, v4}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_1
    iput-object p1, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->uri:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "parseUri":Landroid/net/Uri;
    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appId:Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->command:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->sdkVersion:J

    return-wide v0
.end method

.method public final isValid()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 48
    new-instance v1, Lim/yixin/sdk/api/ExceptionInfo;

    const-class v3, Lim/yixin/sdk/channel/YXMessageProtocol;

    invoke-direct {v1, v7, v3}, Lim/yixin/sdk/api/ExceptionInfo;-><init>(Lim/yixin/sdk/api/BaseReq;Ljava/lang/Class;)V

    .line 49
    .local v1, "info":Lim/yixin/sdk/api/ExceptionInfo;
    iget-object v3, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appId:Ljava/lang/String;

    invoke-static {v3}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->command:Ljava/lang/String;

    invoke-static {v3}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    :cond_0
    iget-object v3, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appId:Ljava/lang/String;

    invoke-static {v3}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "appId is blank"

    :goto_0
    invoke-virtual {v1, v3}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    move v3, v4

    .line 74
    :goto_1
    return v3

    .line 50
    :cond_1
    const-string v3, "command is blank"

    goto :goto_0

    .line 55
    :cond_2
    iget-wide v5, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->sdkVersion:J

    cmp-long v3, v5, v8

    if-ltz v3, :cond_3

    iget-object v3, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appPackage:Ljava/lang/String;

    invoke-static {v3}, Lim/yixin/sdk/channel/YXMessageUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    :cond_3
    iget-wide v5, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->sdkVersion:J

    cmp-long v3, v5, v8

    if-gez v3, :cond_4

    const-string v3, "sdkVersion < 1L "

    :goto_2
    invoke-virtual {v1, v3}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    move v3, v4

    .line 58
    goto :goto_1

    .line 56
    :cond_4
    const-string v3, "appPackage is blank"

    goto :goto_2

    .line 61
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->uri:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->sdkVersion:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->appPackage:Ljava/lang/String;

    invoke-static {v3, v5}, Lim/yixin/sdk/channel/YXMessageUtil;->generateCheckSum(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 62
    .local v2, "newChecksum":[B
    if-eqz v2, :cond_6

    iget-object v3, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->checkSum:[B

    if-eqz v3, :cond_6

    array-length v3, v2

    iget-object v5, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->checkSum:[B

    array-length v5, v5

    if-eq v3, v5, :cond_7

    .line 63
    :cond_6
    const-string v3, "checkSum is error"

    invoke-virtual {v1, v3}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    move v3, v4

    .line 65
    goto :goto_1

    .line 67
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v3, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->checkSum:[B

    array-length v3, v3

    if-lt v0, v3, :cond_8

    .line 74
    const/4 v3, 0x1

    goto :goto_1

    .line 68
    :cond_8
    iget-object v3, p0, Lim/yixin/sdk/channel/YXMessageProtocol;->checkSum:[B

    aget-byte v3, v3, v0

    aget-byte v5, v2, v0

    if-eq v3, v5, :cond_9

    .line 69
    const-string v3, "check checksum fail"

    invoke-virtual {v1, v3}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Lim/yixin/sdk/api/ExceptionInfo;Ljava/lang/String;)V

    move v3, v4

    .line 71
    goto :goto_1

    .line 67
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
