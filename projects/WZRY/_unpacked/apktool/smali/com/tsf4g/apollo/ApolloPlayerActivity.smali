.class public Lcom/tsf4g/apollo/ApolloPlayerActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "ApolloPlayerActivity.java"


# static fields
.field private static final tag:Ljava/lang/String; = "tagApolloPlayerActivity"


# instance fields
.field private info:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "TegTransSdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const-string v0, "apollo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tsf4g/apollo/Apollo;->OnActivityResult(IILandroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    const-string/jumbo v0, "tagApolloPlayerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v3, "ApolloTag"

    const-string v4, "ApolloPlayerActivity onCreate1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v1, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    .line 33
    .local v1, "instance":Lcom/tsf4g/apollo/Apollo;
    iget-object v3, p0, Lcom/tsf4g/apollo/ApolloPlayerActivity;->info:Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Lcom/tsf4g/apollo/Apollo;->Initialize(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    const-string v3, "Apollo"

    const-string v4, "Warning!Reduplicate game activity was detected.Activity will finish immediately."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->finish()V

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v3, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {p0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tsf4g/apollo/Apollo;->HandleCallback(Landroid/content/Intent;)V

    .line 40
    new-instance v2, Lcom/tsf4g/tx/ConnectionChangeReceiver;

    invoke-direct {v2}, Lcom/tsf4g/tx/ConnectionChangeReceiver;-><init>()V

    .line 41
    .local v2, "mNetworkStateReceiver":Lcom/tsf4g/tx/ConnectionChangeReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v2, v0}, Lcom/tsf4g/apollo/ApolloPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 75
    const-string/jumbo v0, "tagApolloPlayerActivity"

    const-string v1, "MSDK onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0, p0}, Lcom/tsf4g/apollo/Apollo;->OnDestroy(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 54
    const-string v0, "ApolloPlayerActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/Apollo;->HandleCallback(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 62
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0}, Lcom/tsf4g/apollo/Apollo;->OnPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 69
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0}, Lcom/tsf4g/apollo/Apollo;->OnResume()V

    .line 70
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string/jumbo v0, "tagApolloPlayerActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public setAppInfo(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tsf4g/apollo/ApolloPlayerActivity;->info:Ljava/lang/Object;

    .line 49
    return-void
.end method
