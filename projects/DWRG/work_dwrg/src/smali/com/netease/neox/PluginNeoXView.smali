.class public Lcom/netease/neox/PluginNeoXView;
.super Ljava/lang/Object;
.source "PluginNeoXView.java"

# interfaces
.implements Lcom/netease/neox/IPlugin;


# instance fields
.field private m_view:Lcom/netease/neox/NeoXView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginNeoXView;)Lcom/netease/neox/NeoXView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/neox/PluginNeoXView;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "NeoXView"

    return-object v0
.end method

.method public getView()Lcom/netease/neox/NeoXView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 69
    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 101
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 83
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    new-instance v1, Lcom/netease/neox/NeoXView;

    invoke-direct {v1, p1}, Lcom/netease/neox/NeoXView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    .line 27
    iget-object v1, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "activityRootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netease/neox/PluginNeoXView$1;

    invoke-direct {v2, p0}, Lcom/netease/neox/PluginNeoXView$1;-><init>(Lcom/netease/neox/PluginNeoXView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 37
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 43
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 63
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 49
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 74
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView;->m_view:Lcom/netease/neox/NeoXView;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    .line 77
    :cond_0
    return-void
.end method
