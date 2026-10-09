.class public Lcom/tencent/component/plugin/PluginFragment;
.super Lcom/tencent/component/app/BaseFragment;
.source "PluginFragment.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginFragment$InstantiationException;
    }
.end annotation


# instance fields
.field private mPlugin:Lcom/tencent/component/plugin/Plugin;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/component/app/BaseFragment;-><init>()V

    .line 21
    return-void
.end method

.method private generateIntentForFragment(Ljava/lang/Class;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p2, "args"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/component/plugin/PluginFragment;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/component/plugin/PluginFragment;>;"
    if-nez p1, :cond_0

    .line 177
    const/4 v2, 0x0

    .line 191
    :goto_0
    return-object v2

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 180
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 181
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not attached to Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_1
    instance-of v2, v0, Lcom/tencent/component/plugin/PluginShellActivity;

    if-nez v2, :cond_2

    .line 184
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not attached to correct Activity to perform this"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v0

    .line 187
    check-cast v2, Lcom/tencent/component/plugin/PluginShellActivity;

    invoke-virtual {v2}, Lcom/tencent/component/plugin/PluginShellActivity;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v1

    .line 188
    .local v1, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-nez v1, :cond_3

    .line 189
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment\'s Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not prepared"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_3
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginFragment;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v2}, Lcom/tencent/component/plugin/Plugin;->getPluginHelper()Lcom/tencent/component/plugin/PluginHelper;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3, p2}, Lcom/tencent/component/plugin/PluginHelper;->generateInnerIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method

.method public static instantiate(Lcom/tencent/component/plugin/Plugin;Landroid/os/Bundle;)Lcom/tencent/component/plugin/PluginFragment;
    .locals 1
    .param p0, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/component/plugin/PluginFragment;->instantiate(Lcom/tencent/component/plugin/Plugin;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Lcom/tencent/component/plugin/Plugin;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/component/plugin/PluginFragment;
    .locals 8
    .param p0, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    if-nez p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v3

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v4

    .line 228
    .local v4, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v4, :cond_0

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    iget-object p1, v4, Lcom/tencent/component/plugin/PluginInfo;->launchFragment:Ljava/lang/String;

    .line 234
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    const/4 v3, 0x0

    .line 239
    .local v3, "fragment":Lcom/tencent/component/plugin/PluginFragment;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 240
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/tencent/component/plugin/PluginFragment;

    move-object v3, v0

    .line 241
    iput-object p0, v3, Lcom/tencent/component/plugin/PluginFragment;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    .line 242
    if-eqz p2, :cond_0

    .line 243
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 244
    invoke-virtual {v3, p2}, Lcom/tencent/component/plugin/PluginFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 247
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lcom/tencent/component/plugin/PluginFragment$InstantiationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": make sure class name exists, is public, and has an"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " empty constructor that is public"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/tencent/component/plugin/PluginFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 250
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Lcom/tencent/component/plugin/PluginFragment$InstantiationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": make sure class name exists, is public, and has an"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " empty constructor that is public"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/tencent/component/plugin/PluginFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 253
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lcom/tencent/component/plugin/PluginFragment$InstantiationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": make sure class name exists, is public, and has an"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " empty constructor that is public"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/tencent/component/plugin/PluginFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method


# virtual methods
.method public beforeAddActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x1f4
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method protected dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getPlugin()Lcom/tencent/component/plugin/Plugin;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginFragment;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tencent/component/plugin/PluginShellActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 31
    check-cast v0, Lcom/tencent/component/plugin/PluginShellActivity;

    invoke-virtual {v0, p0}, Lcom/tencent/component/plugin/PluginShellActivity;->beforeAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/component/app/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method protected onBackPressed()Z
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/component/app/BaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 272
    return-void
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected onUserInteraction()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method protected onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/component/plugin/PluginHelper;->findIntentClass(Landroid/content/Intent;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/tencent/component/plugin/PluginFragment;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/tencent/component/plugin/PluginFragment;->startActivity(Ljava/lang/Class;Landroid/content/Intent;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/component/app/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivity(Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1
    .param p2, "args"    # Landroid/content/Intent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/component/plugin/PluginFragment;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/component/plugin/PluginFragment;>;"
    invoke-direct {p0, p1, p2}, Lcom/tencent/component/plugin/PluginFragment;->generateIntentForFragment(Ljava/lang/Class;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/component/plugin/PluginFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/component/plugin/PluginHelper;->findIntentClass(Landroid/content/Intent;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/tencent/component/plugin/PluginFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/component/plugin/PluginFragment;->startActivityForResult(Ljava/lang/Class;Landroid/content/Intent;I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/component/app/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Ljava/lang/Class;Landroid/content/Intent;I)V
    .locals 1
    .param p2, "args"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/component/plugin/PluginFragment;",
            ">;",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/component/plugin/PluginFragment;>;"
    invoke-direct {p0, p1, p2}, Lcom/tencent/component/plugin/PluginFragment;->generateIntentForFragment(Ljava/lang/Class;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/tencent/component/plugin/PluginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
