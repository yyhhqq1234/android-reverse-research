.class public Lcom/tencent/trbt/videosdk/net/NetworkClient;
.super Ljava/lang/Object;
.source "NetworkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONNECT_TIME_OUT:I = 0x1770

.field private static final READ_BUFFER_SIZE:I = 0x200


# instance fields
.field private final MAX_RETRY_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/qq/taf/jce/JceStruct;

.field private requestId:I


# direct methods
.method public constructor <init>(ILcom/qq/taf/jce/JceStruct;Ljava/lang/Class;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "request"    # Lcom/qq/taf/jce/JceStruct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qq/taf/jce/JceStruct;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qq/taf/jce/JceStruct;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->MAX_RETRY_COUNT:I

    .line 31
    iput p1, p0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->requestId:I

    .line 32
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->request:Lcom/qq/taf/jce/JceStruct;

    .line 33
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->clazz:Ljava/lang/Class;

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 47
    const/16 v16, 0x0

    .line 48
    .local v16, "retryCount":I
    :goto_0
    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 49
    :try_start_0
    new-instance v17, Ljava/net/URL;

    sget-object v18, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->DEV:Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 50
    .local v6, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v17, "x-custom-header-user"

    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->getUserInfoHeader()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v17, "x-custom-header-terminal"

    invoke-static {}, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->getTerminalInfoHeader()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 54
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 55
    const/16 v17, 0x1770

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 56
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 57
    .local v12, "outputStream":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->requestId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->request:Lcom/qq/taf/jce/JceStruct;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->packageRequest(ILcom/qq/taf/jce/JceStruct;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 59
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    .line 60
    .local v5, "code":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    .line 61
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 62
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v11, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x200

    .line 64
    .local v9, "length":I
    new-array v3, v9, [B

    .line 66
    .local v3, "buffer":[B
    :goto_1
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, "readSize":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 67
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v3, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    .end local v3    # "buffer":[B
    .end local v5    # "code":I
    .end local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "length":I
    .end local v11    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .end local v13    # "readSize":I
    :catch_0
    move-exception v7

    .line 119
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    const/16 v18, -0x7d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->request:Lcom/qq/taf/jce/JceStruct;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/tencent/trbt/videosdk/net/NetworkCallback;->onResponseFail(ILcom/qq/taf/jce/JceStruct;)V

    .line 124
    :cond_1
    :goto_2
    return-void

    .line 70
    .restart local v3    # "buffer":[B
    .restart local v5    # "code":I
    .restart local v6    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "length":I
    .restart local v11    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v13    # "readSize":I
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 71
    .local v2, "bodyLen":[B
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 72
    if-eqz v2, :cond_3

    array-length v0, v2

    move/from16 v17, v0

    if-gtz v17, :cond_4

    .line 73
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    const/16 v18, -0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->request:Lcom/qq/taf/jce/JceStruct;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/tencent/trbt/videosdk/net/NetworkCallback;->onResponseFail(ILcom/qq/taf/jce/JceStruct;)V

    goto :goto_2

    .line 78
    :cond_4
    invoke-static {v2}, Lcom/tencent/trbt/videosdk/utils/NetworkUtil;->unPackageResponse([B)Lcom/tencent/trbt/videosdk/wzry/NGGResponse;

    move-result-object v10

    .line 80
    .local v10, "nggResponse":Lcom/tencent/trbt/videosdk/wzry/NGGResponse;
    iget-object v0, v10, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 81
    const/4 v15, 0x0

    .line 82
    .local v15, "responseBody":Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;
    iget-object v0, v10, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->header:Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->bodyDataFlag:B

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    const/16 v18, -0x3ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->request:Lcom/qq/taf/jce/JceStruct;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/tencent/trbt/videosdk/net/NetworkCallback;->onResponseFail(ILcom/qq/taf/jce/JceStruct;)V

    goto :goto_2

    .line 89
    :cond_5
    iget-object v0, v10, Lcom/tencent/trbt/videosdk/wzry/NGGResponse;->body:[B

    move-object/from16 v17, v0

    const-class v18, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;

    invoke-static/range {v17 .. v18}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->bytes2JceObj([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v15

    .end local v15    # "responseBody":Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;
    check-cast v15, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;

    .line 91
    .restart local v15    # "responseBody":Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;
    if-nez v15, :cond_6

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    const/16 v18, -0x3e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->request:Lcom/qq/taf/jce/JceStruct;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/tencent/trbt/videosdk/net/NetworkCallback;->onResponseFail(ILcom/qq/taf/jce/JceStruct;)V

    goto/16 :goto_2

    .line 97
    :cond_6
    iget-object v0, v15, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;->multiCmds:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/wzry/NGGSingleCmdResponse;->body:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->clazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/tencent/trbt/videosdk/utils/JceUtil;->bytes2JceObj([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v14

    .line 98
    .local v14, "response":Lcom/qq/taf/jce/JceStruct;
    instance-of v0, v14, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 99
    move-object v0, v14

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;

    move-object v4, v0

    .line 100
    .local v4, "cfgResponse":Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;
    iget v0, v4, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->ret:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 101
    iget-object v0, v4, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;->userInfo:Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/tencent/trbt/videosdk/utils/UserInfoUtil;->updateUserInfo(Lcom/tencent/trbt/videosdk/wzry/WZRYUserInfo;)V

    .line 104
    .end local v4    # "cfgResponse":Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->request:Lcom/qq/taf/jce/JceStruct;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14}, Lcom/tencent/trbt/videosdk/net/NetworkCallback;->onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    goto/16 :goto_2

    .line 111
    .end local v2    # "bodyLen":[B
    .end local v3    # "buffer":[B
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "length":I
    .end local v10    # "nggResponse":Lcom/tencent/trbt/videosdk/wzry/NGGResponse;
    .end local v11    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "readSize":I
    .end local v14    # "response":Lcom/qq/taf/jce/JceStruct;
    .end local v15    # "responseBody":Lcom/tencent/trbt/videosdk/wzry/NGGResponseBody;
    :cond_8
    add-int/lit8 v16, v16, 0x1

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run() called code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "retryCount "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public sendRequest()I
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    iget v0, p0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->requestId:I

    return v0
.end method

.method public setNetworkCallback(Lcom/tencent/trbt/videosdk/net/NetworkCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/net/NetworkClient;->callback:Lcom/tencent/trbt/videosdk/net/NetworkCallback;

    .line 38
    return-void
.end method
