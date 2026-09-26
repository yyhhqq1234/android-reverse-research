.class public Lcom/netease/neox/PluginApp;
.super Ljava/lang/Object;
.source "PluginApp.java"

# interfaces
.implements Lcom/netease/neox/IPlugin;


# static fields
.field public static final LANDSCAPE:I = 0x0

.field public static final PORTRAIT:I = 0x1


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_current_orient:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    return-void
.end method

.method public static native NativeOnOrientationChanged(I)V
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginApp;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/netease/neox/PluginApp;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCurrentOrientation()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v2, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 85
    .local v0, "orient":I
    if-ne v0, v1, :cond_0

    .line 88
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "app"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 52
    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 81
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    if-eq v1, v2, :cond_0

    .line 62
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    .line 63
    .local v0, "orient":I
    :goto_0
    invoke-static {v0}, Lcom/netease/neox/PluginApp;->NativeOnOrientationChanged(I)V

    .line 65
    .end local v0    # "orient":I
    :cond_0
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    .line 66
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netease/neox/PluginApp;->m_current_orient:I

    .line 29
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 34
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 47
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 42
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 38
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 57
    return-void
.end method

.method public requestOrientation(I)Z
    .locals 3
    .param p1, "orient"    # I

    .prologue
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0}, Lcom/netease/neox/PluginApp;->getCurrentOrientation()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 107
    :goto_0
    return v0

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    .line 95
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/netease/neox/PluginApp;->m_context:Landroid/app/Activity;

    new-instance v2, Lcom/netease/neox/PluginApp$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/neox/PluginApp$1;-><init>(Lcom/netease/neox/PluginApp;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
