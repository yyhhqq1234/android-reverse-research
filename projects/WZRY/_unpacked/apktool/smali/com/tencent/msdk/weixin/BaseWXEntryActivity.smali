.class public Lcom/tencent/msdk/weixin/BaseWXEntryActivity;
.super Landroid/app/Activity;
.source "BaseWXEntryActivity.java"


# instance fields
.field wxEntry:Lcom/tencent/msdk/weixin/WXEntry;

.field wxEntryPrior:Lcom/tencent/msdk/weixin/WXEntryPrior;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->tryLoadSo()V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntry:Lcom/tencent/msdk/weixin/WXEntry;

    .line 26
    iput-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntryPrior:Lcom/tencent/msdk/weixin/WXEntryPrior;

    return-void
.end method


# virtual methods
.method public getMSDKStartActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 36
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->setmActivity(Landroid/app/Activity;)V

    .line 39
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->loadConfig()V

    .line 41
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/tencent/msdk/weixin/WXEntry;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/weixin/WXEntry;-><init>(Lcom/tencent/msdk/weixin/BaseWXEntryActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntry:Lcom/tencent/msdk/weixin/WXEntry;

    .line 45
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntry:Lcom/tencent/msdk/weixin/WXEntry;

    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/weixin/WXEntry;->handleIntent(Landroid/content/Intent;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/tencent/msdk/weixin/WXEntryPrior;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/weixin/WXEntryPrior;-><init>(Lcom/tencent/msdk/weixin/BaseWXEntryActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntryPrior:Lcom/tencent/msdk/weixin/WXEntryPrior;

    .line 48
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntryPrior:Lcom/tencent/msdk/weixin/WXEntryPrior;

    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->onCreate(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "onNewIntent"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/tencent/msdk/framework/mlog/MLog;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/tencent/msdk/weixin/WXEntry;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/weixin/WXEntry;-><init>(Lcom/tencent/msdk/weixin/BaseWXEntryActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntry:Lcom/tencent/msdk/weixin/WXEntry;

    .line 60
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntry:Lcom/tencent/msdk/weixin/WXEntry;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/WXEntry;->handleIntent(Landroid/content/Intent;)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/tencent/msdk/weixin/WXEntryPrior;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/weixin/WXEntryPrior;-><init>(Lcom/tencent/msdk/weixin/BaseWXEntryActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntryPrior:Lcom/tencent/msdk/weixin/WXEntryPrior;

    .line 63
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wxEntryPrior:Lcom/tencent/msdk/weixin/WXEntryPrior;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/WXEntryPrior;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
