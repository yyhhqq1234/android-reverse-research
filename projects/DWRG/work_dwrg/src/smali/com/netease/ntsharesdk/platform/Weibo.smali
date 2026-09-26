.class public Lcom/netease/ntsharesdk/platform/Weibo;
.super Lcom/netease/ntsharesdk/Platform;
.source "Weibo.java"


# static fields
.field private static final TYPE_ATTENTION:I = 0x2

.field private static final TYPE_SHARE:I = 0x1


# instance fields
.field private api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

.field private authorize:Z

.field private isFirstAuthorizeSuccess:Z

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private mKey:Ljava/lang/String;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/Platform;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->authorize:Z

    .line 41
    iput-boolean v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->isFirstAuthorizeSuccess:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/netease/ntsharesdk/OnShareEndListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/ntsharesdk/platform/Weibo;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/netease/ntsharesdk/platform/Weibo;->isFirstAuthorizeSuccess:Z

    return-void
.end method

.method static synthetic access$2(Lcom/netease/ntsharesdk/platform/Weibo;Lcom/netease/ntsharesdk/ShareArgs;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/netease/ntsharesdk/platform/Weibo;->appShare(Lcom/netease/ntsharesdk/ShareArgs;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    return-void
.end method

.method static synthetic access$3(Lcom/netease/ntsharesdk/platform/Weibo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/netease/ntsharesdk/platform/Weibo;Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntsharesdk/platform/Weibo;->pushShareTranscation(Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V

    return-void
.end method

.method static synthetic access$5(Lcom/netease/ntsharesdk/platform/Weibo;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    return-object v0
.end method

.method static synthetic access$6(Lcom/netease/ntsharesdk/platform/Weibo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method private appShare(Lcom/netease/ntsharesdk/ShareArgs;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 8
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;
    .param p2, "mAccessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 194
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 195
    .local v6, "msg":Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
    new-instance v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;-><init>()V

    .line 196
    .local v2, "req":Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    .line 197
    iput-object v6, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 198
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/ntsharesdk/platform/Weibo$3;

    invoke-direct {v5, p0}, Lcom/netease/ntsharesdk/platform/Weibo$3;-><init>(Lcom/netease/ntsharesdk/platform/Weibo;)V

    invoke-interface/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;Lcom/sina/weibo/sdk/auth/AuthInfo;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 220
    .local v7, "sendOut":Ljava/lang/Boolean;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 221
    iget-object v0, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->pushShareTranscation(Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V

    .line 222
    return-void
.end method

.method private doAttention(Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 10
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    const/4 v0, 0x1

    .line 381
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 382
    .local v4, "uid":Ljava/lang/String;
    const-string v2, "comment"

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v7}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    .line 383
    .local v1, "viaApi":Z
    :goto_0
    new-instance v5, Lcom/netease/ntsharesdk/platform/Weibo$4;

    invoke-direct {v5, p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo$4;-><init>(Lcom/netease/ntsharesdk/platform/Weibo;Lcom/netease/ntsharesdk/ShareArgs;)V

    .line 393
    .local v5, "callback":Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v2

    const-string v7, "Weibo"

    invoke-virtual {v2, v7}, Lcom/netease/ntsharesdk/ShareMgr;->hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    iput-boolean v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->authorize:Z

    .line 395
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v2, Lcom/netease/ntsharesdk/platform/Weibo$5;

    invoke-direct {v2, p0, v1, v4, v5}, Lcom/netease/ntsharesdk/platform/Weibo$5;-><init>(Lcom/netease/ntsharesdk/platform/Weibo;ZLjava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V

    invoke-virtual {v0, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 432
    :goto_1
    return-void

    .line 382
    .end local v1    # "viaApi":Z
    .end local v5    # "callback":Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 422
    .restart local v1    # "viaApi":Z
    .restart local v5    # "callback":Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;
    :cond_1
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 423
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v6

    .line 424
    .local v6, "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    const-string v3, ""

    .line 425
    .local v3, "token":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    invoke-virtual {v6}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 430
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weibo;->getCtx()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mKey:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/netease/ntsharesdk/platform/WeiboAttention;->attention(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntsharesdk/platform/WeiboAttention$AttentionCallback;)V

    goto :goto_1

    .line 427
    :cond_3
    if-eqz v1, :cond_2

    .line 428
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    new-instance v8, Lcom/netease/ntsharesdk/ShareArgs;

    const-string v9, "cached token invalid"

    invoke-direct {v8, v9}, Lcom/netease/ntsharesdk/ShareArgs;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v7, v8}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_2
.end method

.method private doShare(Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 9
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 104
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    const-string v1, "Weibo"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v6

    .line 107
    .local v6, "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->isFirstAuthorizeSuccess:Z

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->authorize:Z

    .line 109
    const-string v0, "authorize success, direct share"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, v6}, Lcom/netease/ntsharesdk/platform/Weibo;->appShare(Lcom/netease/ntsharesdk/ShareArgs;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 188
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->authorize:Z

    .line 114
    const-string v0, "mSsoHandler.authorize"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lcom/netease/ntsharesdk/platform/Weibo$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo$1;-><init>(Lcom/netease/ntsharesdk/platform/Weibo;Lcom/netease/ntsharesdk/ShareArgs;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto :goto_0

    .line 147
    .end local v6    # "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    :cond_1
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 149
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v6

    .line 150
    .restart local v6    # "accessToken":Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    const-string v4, ""

    .line 151
    .local v4, "token":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v6}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 157
    .local v7, "msg":Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
    new-instance v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;-><init>()V

    .line 158
    .local v2, "req":Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    .line 159
    iput-object v7, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    .line 160
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    new-instance v5, Lcom/netease/ntsharesdk/platform/Weibo$2;

    invoke-direct {v5, p0}, Lcom/netease/ntsharesdk/platform/Weibo$2;-><init>(Lcom/netease/ntsharesdk/platform/Weibo;)V

    invoke-interface/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;Lcom/sina/weibo/sdk/auth/AuthInfo;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 185
    .local v8, "sendOut":Ljava/lang/Boolean;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 186
    iget-object v0, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->pushShareTranscation(Ljava/lang/String;Lcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0
.end method

.method private getImageObj(Lcom/netease/ntsharesdk/ShareArgs;)Lcom/sina/weibo/sdk/api/ImageObject;
    .locals 2
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 242
    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 243
    .local v0, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    const-string v1, "img_path"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 244
    const-string v1, "img_path"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    .line 248
    :cond_0
    :goto_0
    const-string v1, "thumb_data"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "thumb_data"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 252
    :cond_1
    return-object v0

    .line 245
    :cond_2
    const-string v1, "img_data"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "img_data"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private getShareType(Lcom/netease/ntsharesdk/ShareArgs;)I
    .locals 2
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 80
    const-string v0, "to_blog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getTextObj(Lcom/netease/ntsharesdk/ShareArgs;)Lcom/sina/weibo/sdk/api/TextObject;
    .locals 2
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 230
    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    .line 232
    .local v0, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    .line 233
    return-object v0
.end method

.method private getWebpageObj(Lcom/netease/ntsharesdk/ShareArgs;)Lcom/sina/weibo/sdk/api/WebpageObject;
    .locals 2
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 261
    new-instance v0, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 262
    .local v0, "mediaObject":Lcom/sina/weibo/sdk/api/WebpageObject;
    invoke-static {}, Lcom/sina/weibo/sdk/utils/Utility;->generateGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    .line 263
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    .line 264
    const-string v1, "comment"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 265
    const-string v1, "args.getValue(ShareArgs.COMMENT) not null"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 266
    const-string v1, "comment"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    .line 271
    :goto_0
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    .line 275
    :cond_0
    const-string v1, "thumb_data"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    const-string v1, "thumb_data"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 279
    :cond_1
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    .line 280
    return-object v0

    .line 268
    :cond_2
    const-string v1, "args.getValue(ShareArgs.COMMENT) null, please set value"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 285
    const-string v0, ""

    .line 286
    .local v0, "err":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->getShareType(Lcom/netease/ntsharesdk/ShareArgs;)I

    move-result v1

    .line 287
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 301
    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, v0}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 303
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 306
    :goto_1
    return-object v2

    .line 289
    :pswitch_0
    invoke-virtual {p1}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "img_url"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v2

    const-string v3, "Weibo"

    invoke-virtual {v2, v3}, Lcom/netease/ntsharesdk/ShareMgr;->hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const-string v0, "ShareArgs wrong! Weibo app share doesn`t support img_url"

    .line 292
    goto :goto_0

    .line 295
    :pswitch_1
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string v0, "ShareArgs wrong! WeiboAttention should has title(userId)"

    goto :goto_0

    .line 306
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 66
    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    .line 67
    .local v0, "msg":Lcom/sina/weibo/sdk/api/WeiboMultiMessage;
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->getTextObj(Lcom/netease/ntsharesdk/ShareArgs;)Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 68
    invoke-virtual {p1}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "args.hasImage() true"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->getImageObj(Lcom/netease/ntsharesdk/ShareArgs;)Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 72
    :cond_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "args.getValue(ShareArgs.URL) not null"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->getWebpageObj(Lcom/netease/ntsharesdk/ShareArgs;)Lcom/sina/weibo/sdk/api/WebpageObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 76
    :cond_1
    return-object v0
.end method

.method public getAPIInst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    return-object v0
.end method

.method public getCtx()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    return-object v0
.end method

.method protected getPlatformName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    const-string v0, "Weibo"

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weibo handleActivityResult, requestCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 351
    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntsharesdk/Platform;->handleActivityResult(IILandroid/content/Intent;)V

    .line 353
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->authorize:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "mSsoHandler.authorizeCallBack"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 357
    :cond_0
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 344
    const-string v0, "handleIntent"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public handleResponse(Ljava/lang/Object;)V
    .locals 6
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 311
    move-object v2, p1

    check-cast v2, Lcom/sina/weibo/sdk/api/share/BaseResponse;

    .line 312
    .local v2, "resp":Lcom/sina/weibo/sdk/api/share/BaseResponse;
    iget-object v4, v2, Lcom/sina/weibo/sdk/api/share/BaseResponse;->transaction:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/netease/ntsharesdk/platform/Weibo;->popShareTransaction(Ljava/lang/String;)Lcom/netease/ntsharesdk/ShareArgs;

    move-result-object v0

    .line 313
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v4

    const-string v5, "Weibo"

    invoke-virtual {v4, v5}, Lcom/netease/ntsharesdk/ShareMgr;->hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v1, 0x0

    .line 318
    .local v1, "errMsg":Ljava/lang/String;
    iget v4, v2, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v4, :pswitch_data_0

    .line 330
    const/4 v3, 0x2

    .line 331
    .local v3, "result":I
    const-string v1, "NtShareSdk\u672a\u77e5\u9519\u8bef"

    .line 334
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "weibo app result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_3

    const-string v4, "no"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 336
    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 339
    :cond_2
    iget-object v4, p0, Lcom/netease/ntsharesdk/platform/Weibo;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3, v0}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 320
    .end local v3    # "result":I
    :pswitch_0
    const/4 v3, 0x0

    .line 321
    .restart local v3    # "result":I
    goto :goto_1

    .line 323
    .end local v3    # "result":I
    :pswitch_1
    const/4 v3, 0x1

    .line 324
    .restart local v3    # "result":I
    goto :goto_1

    .line 326
    .end local v3    # "result":I
    :pswitch_2
    const/4 v3, 0x2

    .line 327
    .restart local v3    # "result":I
    iget-object v1, v2, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errMsg:Ljava/lang/String;

    .line 328
    goto :goto_1

    :cond_3
    move-object v4, v1

    .line 334
    goto :goto_2

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initSdk()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "platform: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " init sdk app_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lcom/netease/ntsharesdk/platform/Weibo;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 50
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    const-string v2, "app_id"

    invoke-virtual {p0, v2}, Lcom/netease/ntsharesdk/platform/Weibo;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_url"

    const-string v4, "http://www.sina.com"

    invoke-virtual {p0, v3, v4}, Lcom/netease/ntsharesdk/platform/Weibo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    .line 51
    new-instance v1, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mAuthInfo:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v1, v0, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 52
    const-string v0, "app_id"

    invoke-virtual {p0, v0}, Lcom/netease/ntsharesdk/platform/Weibo;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->mKey:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    const-string v1, "Weibo"

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 58
    :cond_0
    return-void
.end method

.method public setHttpShare(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    return-void
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 4
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "checkArgs(args) false"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/Weibo;->dLog(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/Weibo;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/Weibo;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, p1}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 101
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->getShareType(Lcom/netease/ntsharesdk/ShareArgs;)I

    move-result v0

    .line 92
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->doShare(Lcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/platform/Weibo;->doAttention(Lcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateApi(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    .line 372
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/Weibo;->api:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    .line 373
    return-void
.end method
