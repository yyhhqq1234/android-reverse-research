.class public Lcom/netease/ntsharesdk/platform/Yixin;
.super Lcom/netease/ntsharesdk/Platform;
.source "Yixin.java"


# instance fields
.field private api:Lim/yixin/sdk/api/IYXAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/Platform;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 112
    const-string v0, ""

    .line 113
    .local v0, "err":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Yixin;->genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/yixin/sdk/api/YXMessage;

    .line 114
    .local v3, "ym":Lim/yixin/sdk/api/YXMessage;
    new-instance v2, Lim/yixin/sdk/api/SendMessageToYX$Req;

    invoke-direct {v2}, Lim/yixin/sdk/api/SendMessageToYX$Req;-><init>()V

    .line 115
    .local v2, "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    iput-object v3, v2, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    .line 116
    new-instance v1, Lim/yixin/sdk/api/ExceptionInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lim/yixin/sdk/api/ExceptionInfo;-><init>(Lim/yixin/sdk/api/BaseReq;Ljava/lang/Class;)V

    .line 117
    .local v1, "info":Lim/yixin/sdk/api/ExceptionInfo;
    invoke-virtual {v2, v1}, Lim/yixin/sdk/api/SendMessageToYX$Req;->checkArgs(Lim/yixin/sdk/api/ExceptionInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ShareArgs wrong! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "img_url"

    invoke-virtual {p1, v4}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 121
    const-string v0, "ShareArgs wrong! Not support img_url"

    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 124
    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v0}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 126
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 128
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;
    .locals 8
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    const/16 v7, 0x96

    .line 35
    new-instance v5, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v5}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    .line 36
    .local v5, "ym":Lim/yixin/sdk/api/YXMessage;
    const/4 v3, 0x0

    .line 37
    .local v3, "md":Lim/yixin/sdk/api/YXMessage$YXMessageData;
    const-string v6, "thumb_data"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 38
    .local v4, "thumb_data":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 40
    new-instance v2, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-direct {v2}, Lim/yixin/sdk/api/YXImageMessageData;-><init>()V

    .line 41
    .local v2, "imd":Lim/yixin/sdk/api/YXImageMessageData;
    const-string v6, "img_path"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 42
    const-string v6, "args.getValue(ShareArgs.IMG_PATH) != null"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 43
    const-string v6, "img_path"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    .line 56
    :cond_0
    :goto_0
    move-object v3, v2

    .line 64
    .end local v2    # "imd":Lim/yixin/sdk/api/YXImageMessageData;
    :goto_1
    if-eqz v4, :cond_1

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "thumb width:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v5, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 70
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_1
    iput-object v3, v5, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    .line 71
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    .line 72
    const-string v6, "text"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 73
    const-string v6, "comment"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 74
    const-string v6, "args.getValue(ShareArgs.COMMENT) is not empty"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 75
    const-string v6, "comment"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lim/yixin/sdk/api/YXMessage;->comment:Ljava/lang/String;

    .line 77
    :cond_2
    return-object v5

    .line 44
    .restart local v2    # "imd":Lim/yixin/sdk/api/YXImageMessageData;
    :cond_3
    const-string v6, "img_url"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 45
    const-string v6, "args.getValue(ShareArgs.IMG_URL) != null"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 46
    const-string v6, "img_url"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 48
    :cond_4
    const-string v6, "args.getValue(ShareArgs.IMG_DATA)"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 49
    new-instance v2, Lim/yixin/sdk/api/YXImageMessageData;

    .end local v2    # "imd":Lim/yixin/sdk/api/YXImageMessageData;
    const-string v6, "img_data"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Lim/yixin/sdk/api/YXImageMessageData;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .restart local v2    # "imd":Lim/yixin/sdk/api/YXImageMessageData;
    if-nez v4, :cond_0

    .line 51
    const-string v6, "scale ShareArgs.IMG_DATA to thumb"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 52
    const-string v6, "img_data"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 53
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    invoke-static {v1, v7, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 57
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "imd":Lim/yixin/sdk/api/YXImageMessageData;
    :cond_5
    const-string v6, "url"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 58
    new-instance v3, Lim/yixin/sdk/api/YXWebPageMessageData;

    .end local v3    # "md":Lim/yixin/sdk/api/YXMessage$YXMessageData;
    const-string v6, "url"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lim/yixin/sdk/api/YXWebPageMessageData;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v3    # "md":Lim/yixin/sdk/api/YXMessage$YXMessageData;
    goto/16 :goto_1

    .line 61
    :cond_6
    new-instance v3, Lim/yixin/sdk/api/YXTextMessageData;

    .end local v3    # "md":Lim/yixin/sdk/api/YXMessage$YXMessageData;
    const-string v6, "text"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lim/yixin/sdk/api/YXTextMessageData;-><init>(Ljava/lang/String;)V

    .restart local v3    # "md":Lim/yixin/sdk/api/YXMessage$YXMessageData;
    goto/16 :goto_1
.end method

.method public getAPIInst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    return-object v0
.end method

.method protected getPlatformName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "Yixin"

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    return-void
.end method

.method public handleResponse(Ljava/lang/Object;)V
    .locals 7
    .param p1, "r"    # Ljava/lang/Object;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/netease/ntsharesdk/Platform;->handleResponse(Ljava/lang/Object;)V

    move-object v2, p1

    .line 155
    check-cast v2, Lim/yixin/sdk/api/BaseResp;

    .line 156
    .local v2, "resp":Lim/yixin/sdk/api/BaseResp;
    invoke-virtual {v2}, Lim/yixin/sdk/api/BaseResp;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v3, v2

    .line 158
    check-cast v3, Lim/yixin/sdk/api/SendMessageToYX$Resp;

    .line 159
    .local v3, "resp1":Lim/yixin/sdk/api/SendMessageToYX$Resp;
    iget-object v5, v3, Lim/yixin/sdk/api/SendMessageToYX$Resp;->transaction:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/netease/ntsharesdk/platform/Yixin;->popShareTransaction(Ljava/lang/String;)Lcom/netease/ntsharesdk/ShareArgs;

    move-result-object v0

    .line 160
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    if-eqz v0, :cond_0

    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, "result":I
    const/4 v1, 0x0

    .line 165
    .local v1, "errMsg":Ljava/lang/String;
    iget v5, v3, Lim/yixin/sdk/api/SendMessageToYX$Resp;->errCode:I

    packed-switch v5, :pswitch_data_1

    .line 178
    const/4 v4, 0x2

    .line 179
    const-string v1, "\u672a\u77e5\u9519\u8bef"

    .line 182
    :goto_1
    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/netease/ntsharesdk/platform/Yixin;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Yixin;->getPlatformName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, v0}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 167
    :pswitch_1
    const/4 v4, 0x0

    .line 168
    goto :goto_1

    .line 171
    :pswitch_2
    const/4 v4, 0x2

    .line 172
    iget-object v1, v3, Lim/yixin/sdk/api/SendMessageToYX$Resp;->errStr:Ljava/lang/String;

    .line 173
    goto :goto_1

    .line 175
    :pswitch_3
    const/4 v4, 0x1

    .line 176
    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 165
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected initSdk()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "platform: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Yixin;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " init sdk app_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lcom/netease/ntsharesdk/platform/Yixin;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->myCtx:Landroid/content/Context;

    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lcom/netease/ntsharesdk/platform/Yixin;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/yixin/sdk/api/YXAPIFactory;->createYXAPI(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/IYXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    .line 144
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v0}, Lim/yixin/sdk/api/IYXAPI;->registerApp()Z

    .line 145
    return-void
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 6
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 83
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v3}, Lim/yixin/sdk/api/IYXAPI;->isYXAppInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    const-string v3, "app not installed"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 85
    const-string v3, "app not installed"

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Yixin;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Yixin;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5, p1}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 108
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Yixin;->checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    const-string v3, "checkArgs(args) false"

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Yixin;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Yixin;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5, p1}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Yixin;->genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/yixin/sdk/api/YXMessage;

    .line 96
    .local v2, "ym":Lim/yixin/sdk/api/YXMessage;
    new-instance v0, Lim/yixin/sdk/api/SendMessageToYX$Req;

    invoke-direct {v0}, Lim/yixin/sdk/api/SendMessageToYX$Req;-><init>()V

    .line 97
    .local v0, "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    iput-object v2, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->transaction:Ljava/lang/String;

    .line 100
    const-string v3, "to_blog"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "to_blog"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 101
    const-string v3, "SendMessageToYX.Req.YXSceneTimeline"

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 102
    const/4 v3, 0x1

    iput v3, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->scene:I

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v3, v0}, Lim/yixin/sdk/api/IYXAPI;->sendRequest(Lim/yixin/sdk/api/BaseReq;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 106
    .local v1, "sendOut":Ljava/lang/Boolean;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "share result "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Yixin;->dLog(Ljava/lang/String;)V

    .line 107
    iget-object v3, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->transaction:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/netease/ntsharesdk/platform/Yixin;->pushShareTranscation(Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0
.end method

.method public updateApi(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v0}, Lim/yixin/sdk/api/IYXAPI;->unRegisterApp()V

    .line 193
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lim/yixin/sdk/api/YXAPIFactory;->createYXAPI(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/IYXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    .line 194
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Yixin;->api:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v0}, Lim/yixin/sdk/api/IYXAPI;->registerApp()Z

    .line 195
    return-void
.end method
