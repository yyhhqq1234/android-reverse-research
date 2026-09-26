.class public Lcom/netease/ntsharesdk/platform/Weixin;
.super Lcom/netease/ntsharesdk/Platform;
.source "Weixin.java"


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/Platform;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 106
    const-string v0, ""

    .line 107
    .local v0, "err":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Weixin;->genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 108
    .local v2, "ym":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 109
    .local v1, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 110
    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->checkArgs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    const-string v0, "ShareArgs wrong!"

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "img_url"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    const-string v0, "ShareArgs wrong! Not support img_url"

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 117
    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v0}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 119
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 121
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;
    .locals 9
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    const/16 v8, 0x50

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imgPath:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "img_path"

    invoke-virtual {p1, v7}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",imgUrl:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "img_url"

    invoke-virtual {p1, v7}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",imgData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "img_data"

    invoke-virtual {p1, v7}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 32
    new-instance v5, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v5}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 33
    .local v5, "ym":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    const/4 v4, 0x0

    .line 34
    .local v4, "thumb_data":Landroid/graphics/Bitmap;
    const-string v6, "thumb_data"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 35
    const-string v6, "args.getValue(ShareArgs.THUMB_DATA) != null"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 36
    const-string v6, "thumb_data"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "thumb_data":Landroid/graphics/Bitmap;
    check-cast v4, Landroid/graphics/Bitmap;

    .line 39
    .restart local v4    # "thumb_data":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, 0x0

    .line 40
    .local v3, "md":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;
    invoke-virtual {p1}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 41
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>()V

    .line 42
    .local v2, "imd":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    const-string v6, "img_path"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 43
    const-string v6, "img_path"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->setImagePath(Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    move-object v3, v2

    .line 61
    .end local v2    # "imd":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    :goto_1
    if-eqz v4, :cond_2

    .line 62
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

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 67
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    iput-object v3, v5, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 68
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 69
    const-string v6, "text"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 70
    return-object v5

    .line 44
    .restart local v2    # "imd":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    :cond_3
    const-string v6, "img_url"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 45
    const-string v6, "do not support url image"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_4
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    .line 48
    .end local v2    # "imd":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    const-string v6, "img_data"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 47
    invoke-direct {v2, v6}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .restart local v2    # "imd":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    if-nez v4, :cond_1

    .line 50
    const-string v6, "img_data"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 51
    .local v1, "bm":Landroid/graphics/Bitmap;
    const-string v6, "scale ShareArgs.IMG_DATA to thumb"

    invoke-static {v6}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 52
    const/4 v6, 0x1

    invoke-static {v1, v8, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 56
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "imd":Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;
    :cond_5
    const-string v6, "url"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 57
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    .end local v3    # "md":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;
    const-string v6, "url"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v3    # "md":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;
    goto/16 :goto_1

    .line 59
    :cond_6
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;

    .end local v3    # "md":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;
    const-string v6, "text"

    invoke-virtual {p1, v6}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;-><init>(Ljava/lang/String;)V

    .restart local v3    # "md":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;
    goto/16 :goto_1
.end method

.method public getAPIInst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method protected getPlatformName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "Weixin"

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    return-void
.end method

.method public handleResponse(Ljava/lang/Object;)V
    .locals 6
    .param p1, "r"    # Ljava/lang/Object;

    .prologue
    .line 144
    move-object v2, p1

    check-cast v2, Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    .line 145
    .local v2, "resp":Lcom/tencent/mm/opensdk/modelbase/BaseResp;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleResponse:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",errStr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 146
    iget-object v4, v2, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/netease/ntsharesdk/platform/Weixin;->popShareTransaction(Ljava/lang/String;)Lcom/netease/ntsharesdk/ShareArgs;

    move-result-object v0

    .line 147
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v3, 0x0

    .line 151
    .local v3, "result":I
    const/4 v1, 0x0

    .line 152
    .local v1, "errMsg":Ljava/lang/String;
    iget v4, v2, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    packed-switch v4, :pswitch_data_0

    .line 167
    :pswitch_0
    const/4 v3, 0x2

    .line 168
    const-string v4, "OnShareEndListener.FAILED"

    invoke-static {v4}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 169
    const-string v1, "unknown error"

    .line 173
    :goto_1
    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/netease/ntsharesdk/platform/Weixin;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weixin;->getPlatformName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3, v0}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 154
    :pswitch_1
    const/4 v3, 0x0

    .line 155
    const-string v4, "OnShareEndListener.OK"

    invoke-static {v4}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :pswitch_2
    const/4 v3, 0x1

    .line 159
    const-string v4, "OnShareEndListener.CANCEL"

    invoke-static {v4}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :pswitch_3
    const/4 v3, 0x2

    .line 163
    const-string v4, "OnShareEndListener.FAILED, ErrCode.ERR_AUTH_DENIED"

    invoke-static {v4}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 164
    iget-object v1, v2, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    .line 165
    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initSdk()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "platform: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weixin;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " init sdk app_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lcom/netease/ntsharesdk/platform/Weixin;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->myCtx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 134
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lcom/netease/ntsharesdk/platform/Weixin;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 135
    return-void
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 6
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 75
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    const-string v3, "App not installed"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 77
    const-string v3, "app not installed"

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weixin;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weixin;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    .line 79
    const/4 v5, 0x3

    .line 78
    invoke-interface {v3, v4, v5, p1}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 102
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Weixin;->checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    const-string v3, "checkArgs(args) false"

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weixin;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weixin;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    .line 85
    const/4 v5, 0x2

    .line 84
    invoke-interface {v3, v4, v5, p1}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Weixin;->genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 90
    .local v2, "ym":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 91
    .local v0, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 93
    const-string v3, "to_blog"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    const-string v3, "to_blog"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 96
    const-string v3, "SendMessageToWX.Req.WXSceneTimeline"

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x1

    iput v3, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v3, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 100
    .local v1, "sendOut":Ljava/lang/Boolean;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "share result "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntsharesdk/platform/Weixin;->dLog(Ljava/lang/String;)V

    .line 101
    iget-object v3, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/netease/ntsharesdk/platform/Weixin;->pushShareTranscation(Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0
.end method

.method public updateApi(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->unregisterApp()V

    .line 186
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->myCtx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 187
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weixin;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 188
    return-void
.end method
