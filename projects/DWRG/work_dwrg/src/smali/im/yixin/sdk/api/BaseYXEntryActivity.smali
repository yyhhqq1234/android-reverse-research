.class public abstract Lim/yixin/sdk/api/BaseYXEntryActivity;
.super Landroid/app/Activity;
.source "BaseYXEntryActivity.java"

# interfaces
.implements Lim/yixin/sdk/api/IYXAPICallbackEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 5

    .prologue
    .line 61
    const-class v1, Lim/yixin/sdk/api/BaseYXEntryActivity;

    const-string v2, "handleIntent()"

    invoke-static {v1, v2}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lim/yixin/sdk/api/BaseYXEntryActivity;->getIYXAPI()Lim/yixin/sdk/api/IYXAPI;

    move-result-object v0

    .line 63
    .local v0, "api":Lim/yixin/sdk/api/IYXAPI;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lim/yixin/sdk/api/BaseYXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lim/yixin/sdk/api/IYXAPI;->handleIntent(Landroid/content/Intent;Lim/yixin/sdk/api/IYXAPICallbackEventHandler;)Z

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v1

    const-class v2, Lim/yixin/sdk/api/BaseYXEntryActivity;

    .line 67
    const-string v3, "please don\'t return null by calling getIYXAPI()"

    const/4 v4, 0x0

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getIYXAPI()Lim/yixin/sdk/api/IYXAPI;
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const-class v0, Lim/yixin/sdk/api/BaseYXEntryActivity;

    const-string v1, "onCreate(Bundle bundle)"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseYXEntryActivity;->handleIntent()V

    .line 41
    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-class v0, Lim/yixin/sdk/api/BaseYXEntryActivity;

    const-string v1, "onNewIntent(Intent intent)"

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0, p1}, Lim/yixin/sdk/api/BaseYXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 54
    invoke-direct {p0}, Lim/yixin/sdk/api/BaseYXEntryActivity;->handleIntent()V

    .line 55
    return-void
.end method
