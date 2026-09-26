.class public abstract Lcom/netease/neox/NeoXClient;
.super Landroid/app/NativeActivity;
.source "NeoXClient.java"


# instance fields
.field private m_plugin_mgr:Lcom/netease/neox/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/netease/neox/PluginManager;

    invoke-direct {v0}, Lcom/netease/neox/PluginManager;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    return-void
.end method


# virtual methods
.method public getExternalDataPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/neox/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;

    move-result-object v0

    return-object v0
.end method

.method protected initPlugins(Lcom/netease/neox/PluginManager;)V
    .locals 1
    .param p1, "pluginMgr"    # Lcom/netease/neox/PluginManager;

    .prologue
    .line 13
    new-instance v0, Lcom/netease/neox/PluginNeoXView;

    invoke-direct {v0}, Lcom/netease/neox/PluginNeoXView;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 14
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/neox/PluginManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/NativeActivity;->onBackPressed()V

    .line 80
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onBackPressed(Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {p0, v0}, Lcom/netease/neox/NeoXClient;->initPlugins(Lcom/netease/neox/PluginManager;)V

    .line 20
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 26
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onPause(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/NativeActivity;->onRestart()V

    .line 44
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onRestart(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onResume(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 32
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onStop(Landroid/app/Activity;)V

    .line 33
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 56
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 57
    return-void
.end method

.method public registerPlugin(Lcom/netease/neox/IPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/netease/neox/IPlugin;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 89
    return-void
.end method
