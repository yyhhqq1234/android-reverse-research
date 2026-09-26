.class public Lcom/netease/ntsharesdk/platform/QQ;
.super Lcom/netease/ntsharesdk/Platform;
.source "QQ.java"


# instance fields
.field private api:Lcom/tencent/tauth/Tencent;

.field qqShareListener:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netease/ntsharesdk/Platform;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/netease/ntsharesdk/platform/QQ$1;

    invoke-direct {v0, p0}, Lcom/netease/ntsharesdk/platform/QQ$1;-><init>(Lcom/netease/ntsharesdk/platform/QQ;)V

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/QQ;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/netease/ntsharesdk/platform/QQ;)Lcom/netease/ntsharesdk/OnShareEndListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/QQ;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    return-object v0
.end method


# virtual methods
.method public checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 108
    const-string v0, ""

    .line 109
    .local v0, "err":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v0}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "summary"

    const-string v3, "text"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const-string v2, "targetUrl"

    const-string v3, "url"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntsharesdk/ShareArgs;->hasImage()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "img_path"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 59
    const-string v2, "args.getValue(ShareArgs.IMG_PATH) != null"

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 60
    const-string v2, "imageLocalUrl"

    const-string v3, "img_path"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    :goto_0
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    const-string v2, "QQShare.SHARE_TO_QQ_TYPE_IMAGE"

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 68
    const-string v2, "req_type"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    :goto_1
    const-string v2, "to_blog"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "to_blog"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 74
    const-string v2, "args.getValue(ShareArgs.TO_BLOG) is not empty"

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "mExtarFlag":I
    or-int/lit8 v1, v1, 0x1

    .line 78
    const-string v2, "cflag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .end local v1    # "mExtarFlag":I
    :cond_2
    return-object v0

    .line 61
    :cond_3
    const-string v2, "img_url"

    invoke-virtual {p1, v2}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "args.getValue(ShareArgs.IMG_URL) != null"

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 63
    const-string v2, "imageUrl"

    const-string v3, "img_url"

    invoke-virtual {p1, v3}, Lcom/netease/ntsharesdk/ShareArgs;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    const-string v2, "QQShare.SHARE_TO_QQ_TYPE_DEFAULT"

    invoke-static {v2}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 71
    const-string v2, "req_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public getAPIInst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/QQ;->api:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method protected getPlatformName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "QQ"

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 126
    const-string v0, "QQ handleActivityResult"

    invoke-static {v0}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/netease/ntsharesdk/Platform;->handleActivityResult(IILandroid/content/Intent;)V

    .line 129
    const/16 v0, 0x2777

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/QQ;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    .line 132
    :cond_0
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    return-void
.end method

.method public handleResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 154
    return-void
.end method

.method protected initSdk()V
    .locals 2

    .prologue
    .line 141
    const-string v1, "app_id"

    invoke-virtual {p0, v1}, Lcom/netease/ntsharesdk/platform/QQ;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ;->myCtx:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ;->api:Lcom/tencent/tauth/Tencent;

    .line 143
    return-void
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;)V
    .locals 1
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntsharesdk/platform/QQ;->share(Lcom/netease/ntsharesdk/ShareArgs;Landroid/app/Activity;)V

    .line 104
    return-void
.end method

.method public share(Lcom/netease/ntsharesdk/ShareArgs;Landroid/app/Activity;)V
    .locals 4
    .param p1, "args"    # Lcom/netease/ntsharesdk/ShareArgs;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x2

    .line 86
    if-nez p2, :cond_0

    .line 87
    const-string v1, "Activity null!"

    invoke-virtual {p1, v1}, Lcom/netease/ntsharesdk/ShareArgs;->setFailMsg(Ljava/lang/String;)V

    .line 88
    const-string v1, "Activity null!"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/QQ;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3, p1}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/QQ;->checkArgs(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    const-string v1, "checkArgs(args) false"

    invoke-static {v1}, Lcom/netease/ntsharesdk/platform/QQ;->dLog(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ;->shareEndListener:Lcom/netease/ntsharesdk/OnShareEndListener;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/QQ;->getPlatformName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3, p1}, Lcom/netease/ntsharesdk/OnShareEndListener;->onShareEnd(Ljava/lang/String;ILcom/netease/ntsharesdk/ShareArgs;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/QQ;->genMessage(Lcom/netease/ntsharesdk/ShareArgs;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 98
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/QQ;->api:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/netease/ntsharesdk/platform/QQ;->qqShareListener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v1, p2, v0, v2}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0
.end method

.method public updateApi(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/QQ;->myCtx:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntsharesdk/platform/QQ;->api:Lcom/tencent/tauth/Tencent;

    .line 159
    return-void
.end method
