.class public Lcom/tsf4g/apollo/ApolloActivity;
.super Landroid/app/Activity;
.source "ApolloActivity.java"


# static fields
.field private static final tag:Ljava/lang/String; = "tagApolloActivity"


# instance fields
.field private info:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "TegTransSdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const-string v0, "apollo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    const-string/jumbo v0, "tagApolloActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const-string v2, "ApolloTag"

    const-string v3, "ApolloActivity onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v2, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    iget-object v3, p0, Lcom/tsf4g/apollo/ApolloActivity;->info:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Lcom/tsf4g/apollo/Apollo;->Initialize(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/tsf4g/apollo/ApolloActivity;->finish()V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v1, Lcom/tsf4g/tx/ConnectionChangeReceiver;

    invoke-direct {v1}, Lcom/tsf4g/tx/ConnectionChangeReceiver;-><init>()V

    .line 37
    .local v1, "mNetworkStateReceiver":Lcom/tsf4g/tx/ConnectionChangeReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/tsf4g/apollo/ApolloActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    const-string/jumbo v0, "tagApolloActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0, p0}, Lcom/tsf4g/apollo/Apollo;->OnDestroy(Landroid/app/Activity;)V

    .line 70
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    const-string v0, "ApolloActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/Apollo;->HandleCallback(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0}, Lcom/tsf4g/apollo/Apollo;->OnPause()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    sget-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    invoke-virtual {v0}, Lcom/tsf4g/apollo/Apollo;->OnResume()V

    .line 63
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string/jumbo v0, "tagApolloActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public setAppInfo(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tsf4g/apollo/ApolloActivity;->info:Ljava/lang/Object;

    .line 44
    return-void
.end method
