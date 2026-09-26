.class public Lcom/netease/ntunisdk/SdkNGShare;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkNGShare.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK ngshare"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShare;->setPropInt(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method private genShareArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Lcom/netease/ntsharesdk/ShareArgs;
    .locals 3
    .param p1, "shareInfo"    # Lcom/netease/ntunisdk/base/ShareInfo;

    .prologue
    .line 163
    new-instance v0, Lcom/netease/ntsharesdk/ShareArgs;

    invoke-direct {v0}, Lcom/netease/ntsharesdk/ShareArgs;-><init>()V

    .line 164
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v1, "text"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const-string v1, "comment"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    const-string v1, "UniSDK ngshare"

    const-string v2, "!TextUtils.isEmpty(shareInfo.getImage())"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 172
    const-string v1, "img_url"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    const-string v1, "UniSDK ngshare"

    const-string v2, "!TextUtils.isEmpty(shareInfo.getLink())"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    :cond_2
    const/16 v1, 0x66

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/16 v1, 0x68

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 182
    const/16 v1, 0x6a

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 183
    :cond_3
    const-string v1, "to_blog"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    :cond_4
    const/16 v1, 0x75

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 187
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->isShowShareDialog()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 188
    const-string v1, "comment"

    const-string v2, "show"

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :goto_1
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v1, "to_blog"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_5
    const/16 v1, 0x76

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 197
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v1, "to_blog"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_6
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 201
    const-string v1, "UniSDK ngshare"

    const-string v2, "null != shareInfo.getShareThumb()"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "thumb_data"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_7
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 205
    const-string v1, "UniSDK ngshare"

    const-string v2, "null != shareInfo.getShareBitmap()"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "img_data"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    :cond_8
    return-object v0

    .line 174
    :cond_9
    const-string v1, "img_path"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    :cond_a
    const-string v1, "comment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getChannelSts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "ngshare"

    return-object v0
.end method


# virtual methods
.method public checkArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 7
    .param p1, "shareInfo"    # Lcom/netease/ntunisdk/base/ShareInfo;

    .prologue
    .line 118
    const-string v4, "UniSDK ngshare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkArgs:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "Other"

    .line 121
    .local v2, "platform":Ljava/lang/String;
    const/16 v4, 0x65

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-eq v4, v5, :cond_0

    const/16 v4, 0x66

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-eq v4, v5, :cond_0

    const/16 v4, 0x76

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 122
    :cond_0
    const-string v2, "Weixin"

    .line 130
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShare;->genShareArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Lcom/netease/ntsharesdk/ShareArgs;

    move-result-object v0

    .line 132
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v1

    .line 133
    .local v1, "pf":Lcom/netease/ntsharesdk/Platform;
    if-eqz v1, :cond_8

    .line 135
    invoke-virtual {v1, v0}, Lcom/netease/ntsharesdk/Platform;->checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 136
    .local v3, "res":Z
    invoke-virtual {v0}, Lcom/netease/ntsharesdk/ShareArgs;->getFailMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/netease/ntunisdk/base/ShareInfo;->setFailMsg(Ljava/lang/String;)V

    .line 140
    .end local v3    # "res":Z
    :goto_1
    return v3

    .line 123
    .end local v0    # "args":Lcom/netease/ntsharesdk/ShareArgs;
    .end local v1    # "pf":Lcom/netease/ntsharesdk/Platform;
    :cond_2
    const/16 v4, 0x69

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-eq v4, v5, :cond_3

    const/16 v4, 0x6a

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 124
    :cond_3
    const-string v2, "QQ"

    .line 125
    goto :goto_0

    :cond_4
    const/16 v4, 0x67

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-eq v4, v5, :cond_5

    const/16 v4, 0x68

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 126
    :cond_5
    const-string v2, "Yixin"

    .line 127
    goto :goto_0

    :cond_6
    const/16 v4, 0x64

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-eq v4, v5, :cond_7

    const/16 v4, 0x75

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 128
    :cond_7
    const-string v2, "Weibo"

    goto :goto_0

    .line 139
    .restart local v0    # "args":Lcom/netease/ntsharesdk/ShareArgs;
    .restart local v1    # "pf":Lcom/netease/ntsharesdk/Platform;
    :cond_8
    const-string v4, "unsupport this platfrom"

    invoke-virtual {p1, v4}, Lcom/netease/ntunisdk/base/ShareInfo;->setFailMsg(Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .param p1, "order"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 84
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/netease/ntunisdk/SdkNGShare;->getChannelSts()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNGShare;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "SESSION"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNGShare;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "not_login"

    goto :goto_0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNGShare;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "UIN"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNGShare;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string v0, "1.3.1"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "1.3.1"

    return-object v0
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 4
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v1, "UniSDK ngshare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call hasPlatform platform:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    move-object v0, p1

    .line 233
    .local v0, "pf":Ljava/lang/String;
    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    :cond_0
    const-string v0, "Weixin"

    .line 242
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntsharesdk/ShareMgr;->hasPlatform(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 235
    :cond_2
    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    :cond_3
    const-string v0, "Yixin"

    .line 237
    goto :goto_0

    :cond_4
    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 238
    :cond_5
    const-string v0, "QQ"

    .line 239
    goto :goto_0

    :cond_6
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_7
    const-string v0, "Weibo"

    goto :goto_0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 3
    .param p1, "initListner"    # Lcom/netease/ntunisdk/base/OnFinishInitListener;

    .prologue
    const/4 v2, 0x1

    .line 34
    const-string v0, "UniSDK ngshare"

    const-string v1, "init..."

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "INNER_MODE_NO_PAY"

    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/SdkNGShare;->setPropInt(Ljava/lang/String;I)V

    .line 36
    const-string v0, "FEATURE_HAS_SHARE"

    invoke-virtual {p0, v0, v2}, Lcom/netease/ntunisdk/SdkNGShare;->setPropInt(Ljava/lang/String;I)V

    .line 37
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShare;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->setContext(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/SdkNGShare$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNGShare$1;-><init>(Lcom/netease/ntunisdk/SdkNGShare;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntsharesdk/ShareMgr;->setShareEndListener(Lcom/netease/ntsharesdk/OnShareEndListener;)V

    .line 55
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    .line 56
    return-void
.end method

.method public login()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "UIN"

    const-string v1, "NGSshareUid"

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShare;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "SESSION"

    const-string v1, "NGSshareSession"

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShare;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShare;->setPropInt(Ljava/lang/String;I)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNGShare;->loginDone(I)V

    .line 64
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public openManager()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v0, "UniSDK ngshare"

    const-string v1, "sdkOnActivityResult..."

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntsharesdk/ShareMgr;->handleActivityResult(IILandroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 7
    .param p1, "shareInfo"    # Lcom/netease/ntunisdk/base/ShareInfo;

    .prologue
    .line 146
    const-string v2, "UniSDK ngshare"

    const-string v3, "scope:%s, shareChannle:%s, title:%s, text:%s, comment:%s, imgPath:%s, url:%s, bitmap:%s, shareThumb:%s, type:%s"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 147
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getScope()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareThumb()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 146
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "Other"

    .line 149
    .local v1, "platform":Ljava/lang/String;
    const/16 v2, 0x65

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/16 v2, 0x66

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/16 v2, 0x76

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 150
    :cond_0
    const-string v1, "Weixin"

    .line 158
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShare;->genShareArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Lcom/netease/ntsharesdk/ShareArgs;

    move-result-object v0

    .line 159
    .local v0, "args":Lcom/netease/ntsharesdk/ShareArgs;
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v3

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNGShare;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v0, v1, v2}, Lcom/netease/ntsharesdk/ShareMgr;->share(Lcom/netease/ntsharesdk/ShareArgs;Ljava/lang/String;Landroid/app/Activity;)V

    .line 160
    return-void

    .line 151
    .end local v0    # "args":Lcom/netease/ntsharesdk/ShareArgs;
    :cond_2
    const/16 v2, 0x69

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/16 v2, 0x6a

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 152
    :cond_3
    const-string v1, "QQ"

    .line 153
    goto :goto_0

    :cond_4
    const/16 v2, 0x67

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-eq v2, v3, :cond_5

    const/16 v2, 0x68

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 154
    :cond_5
    const-string v1, "Yixin"

    .line 155
    goto :goto_0

    :cond_6
    const/16 v2, 0x64

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-eq v2, v3, :cond_7

    const/16 v2, 0x75

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 156
    :cond_7
    const-string v1, "Weibo"

    goto :goto_0
.end method

.method public upLoadUserInfo()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public updateApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v1, "UniSDK ngshare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call updateApi key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",platform:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object v0, p2

    .line 216
    .local v0, "pf":Ljava/lang/String;
    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    :cond_0
    const-string v0, "Weixin"

    .line 225
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/netease/ntsharesdk/ShareMgr;->updateApi(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 218
    :cond_2
    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    :cond_3
    const-string v0, "Yixin"

    .line 220
    goto :goto_0

    :cond_4
    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 221
    :cond_5
    const-string v0, "QQ"

    .line 222
    goto :goto_0

    :cond_6
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_7
    const-string v0, "Weibo"

    goto :goto_0
.end method
