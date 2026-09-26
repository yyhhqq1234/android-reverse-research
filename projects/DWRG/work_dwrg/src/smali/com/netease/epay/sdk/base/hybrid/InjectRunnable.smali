.class Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;
.super Ljava/lang/Object;
.source "InjectRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final KEY_BRIDGE_READY:Ljava/lang/String; = "__bridge__ready__"

.field private static final MAX_REPEAT_COUNT:I = 0x5

.field private static final NOTIFY_H5_BRIDGE_IS_READY:Ljava/lang/String; = "javascript:window._webViewEPNBReady=true;var readyEvent = document.createEvent(\'Events\'),eventName = \'EPNBReady\';readyEvent.initEvent(eventName);document.dispatchEvent(readyEvent);window.prompt(\'{}\', \'__bridge__ready__\');"


# instance fields
.field private mainHandler:Landroid/os/Handler;

.field private postDelayed:I

.field private repeatCount:I

.field private webViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xc8

    iput v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->postDelayed:I

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->mainHandler:Landroid/os/Handler;

    .line 31
    invoke-static {}, Lcom/netease/epay/sdk/base/util/AppUtils;->isMiuiPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->postDelayed:I

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " repeatCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->repeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->repeatCount:I

    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 39
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->repeatCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->reset()V

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 45
    const-string v1, "javascript:window._webViewEPNBReady=true;var readyEvent = document.createEvent(\'Events\'),eventName = \'EPNBReady\';readyEvent.initEvent(eventName);document.dispatchEvent(readyEvent);window.prompt(\'{}\', \'__bridge__ready__\');"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 49
    :goto_1
    iget v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->repeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->repeatCount:I

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->mainHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->postDelayed:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "javascript:window._webViewEPNBReady=true;var readyEvent = document.createEvent(\'Events\'),eventName = \'EPNBReady\';readyEvent.initEvent(eventName);document.dispatchEvent(readyEvent);window.prompt(\'{}\', \'__bridge__ready__\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->reset()V

    .line 55
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/InjectRunnable;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method
