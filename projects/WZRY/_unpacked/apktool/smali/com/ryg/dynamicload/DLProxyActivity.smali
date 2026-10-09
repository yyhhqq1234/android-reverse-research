.class public Lcom/ryg/dynamicload/DLProxyActivity;
.super Landroid/app/Activity;
.source "DLProxyActivity.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLAttachable;


# instance fields
.field private impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

.field protected mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    return-void
.end method


# virtual methods
.method public attach(Lcom/ryg/dynamicload/DLPlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V
    .locals 0
    .param p1, "remoteActivity"    # Lcom/ryg/dynamicload/DLPlugin;
    .param p2, "pluginManager"    # Lcom/ryg/dynamicload/internal/DLPluginManager;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    .line 61
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/ryg/dynamicload/DLPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onBackPressed()V

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 153
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {p0}, Lcom/ryg/dynamicload/DLProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->onCreate(Landroid/content/Intent;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onDestroy()V

    .line 124
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 125
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1, p2}, Lcom/ryg/dynamicload/DLPlugin;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 167
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 195
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onPause()V

    .line 110
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onRestart()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 97
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onResume()V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onStart()V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onStop()V

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 158
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onWindowFocusChanged(Z)V

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 182
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
