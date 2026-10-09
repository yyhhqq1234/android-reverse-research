.class public Lcom/tencent/msdk/weixin/WXEntryPrior;
.super Ljava/lang/Object;
.source "WXEntryPrior.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private messageExt:Ljava/lang/String;

.field private platformId:Ljava/lang/String;

.field private wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

.field private wx_card_list:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/msdk/weixin/BaseWXEntryActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    .line 33
    return-void
.end method

.method private TestPlatform(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    sget-object v2, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v3, "TestPlatform"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    sget-object v2, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wx intent is NULL"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 58
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 59
    sget-object v2, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wx getExtras is NULL"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v3, "intent content end"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initEntry(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    sget-object v5, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v6, "initEntry"

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    .line 87
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    const/4 v8, 0x1

    .line 86
    invoke-static {v6, v7, v8}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 88
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 90
    :try_start_0
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v5, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    move-result v1

    .line 91
    .local v1, "handled":Z
    if-nez v1, :cond_1

    .line 92
    const-string v5, "IWXAPI can not handle this Intent."

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v5}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use game\'s startActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 96
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v2, "i":Landroid/content/Intent;
    :goto_0
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v5, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v5, v2}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v5, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v5}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    .line 112
    .end local v1    # "handled":Z
    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    return-void

    .line 98
    .restart local v1    # "handled":Z
    :cond_0
    iget-object v5, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v5}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 99
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v5}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 107
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-static {p1}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    .end local v1    # "handled":Z
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setPlatformInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    sget-object v2, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v3, "setPlatformInfo"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "platformId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->platformId:Ljava/lang/String;

    .line 76
    const-string v2, "_wxobject_message_ext"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->messageExt:Ljava/lang/String;

    .line 77
    const-string v2, "_wxapi_add_card_to_wx_card_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wx_card_list:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->TestPlatform(Landroid/content/Intent;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->setPlatformInfo(Landroid/content/Intent;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->initEntry(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    sget-object v0, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->TestPlatform(Landroid/content/Intent;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->setPlatformInfo(Landroid/content/Intent;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->initEntry(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 10
    .param p1, "req"    # Lcom/tencent/mm/opensdk/modelbase/BaseReq;

    .prologue
    .line 117
    sget-object v8, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v9, "onReq"

    invoke-static {v8, v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 119
    const-string v8, "OpenID Null"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 127
    const-string v8, ""

    iput-object v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    .line 131
    :cond_0
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use game\'s startActivity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v9}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v9}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, "i":Landroid/content/Intent;
    :goto_1
    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    const/high16 v8, 0x20000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    const-string/jumbo v8, "wx_callback"

    const-string v9, "onReq"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->messageExt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 144
    instance-of v8, p1, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;

    if-eqz v8, :cond_5

    .line 145
    const-string/jumbo v8, "wx_mediaTagName"

    const-string/jumbo v9, "wgWXGameRecommend"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, p1

    .line 146
    check-cast v2, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;

    .line 147
    .local v2, "launchReq":Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;
    const-string v8, "messageExt"

    iget-object v9, v2, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;->messageExt:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v8, "country"

    iget-object v9, v2, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;->country:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v8, "lang"

    iget-object v9, v2, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;->lang:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .end local v2    # "launchReq":Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;
    :cond_1
    :goto_2
    const-string/jumbo v8, "wx_transaction"

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v8, "wx_openId"

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v8, "platformId"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->platformId:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v8, "\u6253\u5370\u6700\u7ec8\u7ed9msdk \u7684intent ---- s\n"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 169
    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/content/Intent;)V

    .line 170
    const-string/jumbo v8, "\u6253\u5370\u6700\u7ec8\u7ed9msdk \u7684intent ---- e\n"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 171
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8, v1}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    .line 173
    return-void

    .line 120
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    const-string v8, ""

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 121
    const-string v8, "OpenID is empty"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OpenID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_4
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 136
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "i":Landroid/content/Intent;
    goto/16 :goto_1

    .line 150
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    instance-of v8, p1, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;

    if-eqz v8, :cond_1

    move-object v7, p1

    .line 151
    check-cast v7, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;

    .line 152
    .local v7, "smReq":Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;
    iget-object v8, v7, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iget-object v0, v8, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    check-cast v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;

    .line 153
    .local v0, "appObj":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    iget-object v4, v0, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 154
    .local v4, "mediaTagName":Ljava/lang/String;
    const-string/jumbo v8, "wx_mediaTagName"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v3, v7, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 156
    .local v3, "mediaMsg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    const-string v8, "country"

    iget-object v9, v7, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->country:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v8, "lang"

    iget-object v9, v7, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->lang:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mediaMsg.messageExt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 159
    iget-object v8, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 160
    const-string v8, "messageExt"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->messageExt:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 162
    :cond_6
    const-string v8, "messageExt"

    iget-object v9, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 10
    .param p1, "resp"    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    .prologue
    .line 178
    sget-object v8, Lcom/tencent/msdk/weixin/WXEntryPrior;->TAG:Ljava/lang/String;

    const-string v9, "onResp"

    invoke-static {v8, v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use game\'s startActivity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v9}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 183
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v9}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v2, "i":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 190
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 191
    .local v4, "launchActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-direct {v3, v8, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    const/high16 v8, 0x20000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getComponent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getComponent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v8, "wx_callback"

    const-string v9, "onResp"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v8, "wx_errCode"

    iget v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string/jumbo v8, "wx_errStr"

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string/jumbo v8, "wx_respType"

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    const-string/jumbo v8, "wx_transaction"

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v8, "wx_openId"

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v8, "platformId"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->platformId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    instance-of v8, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    if-eqz v8, :cond_0

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    move-object v7, v0

    .line 207
    .local v7, "res":Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v8, "wx_token"

    iget-object v9, v7, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    .end local v7    # "res":Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;
    :cond_0
    const-string/jumbo v8, "wechatAddCardToWXCardPackage"

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 212
    const-string/jumbo v8, "wxapi_add_card_to_wx_card_list"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wx_card_list:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :cond_1
    const-string v8, "msdkwebpage"

    iget-object v9, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 217
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8, v3}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 219
    :cond_2
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    .line 224
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "launchActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 185
    :cond_3
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 186
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntryPrior;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v8}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "i":Landroid/content/Intent;
    goto/16 :goto_0

    .line 220
    .end local v2    # "i":Landroid/content/Intent;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
