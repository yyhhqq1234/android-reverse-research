.class public abstract Lcom/tsf4g/apollo/ApolloPlugin;
.super Ljava/lang/Object;
.source "ApolloPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public abstract HandleCallback(Landroid/content/Intent;)V
.end method

.method public Install()Z
    .locals 2

    .prologue
    .line 15
    const-string v0, "ApolloPlugin"

    const-string v1, "Install()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-virtual {v0, p0}, Lcom/tsf4g/apollo/ApolloPluginManager;->AddPlugin(Lcom/tsf4g/apollo/ApolloPlugin;)V

    .line 17
    const-string v0, "ApolloPlugin"

    const-string v1, "Install() end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public abstract OnActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract OnDestroy(Landroid/app/Activity;)V
.end method

.method public abstract OnInitialize(Landroid/app/Activity;Ljava/lang/Object;)Z
.end method

.method public abstract OnPause()V
.end method

.method public abstract OnRestart(Landroid/app/Activity;)V
.end method

.method public abstract OnResume()V
.end method

.method public abstract OnStart(Landroid/app/Activity;)V
.end method

.method public abstract OnStop(Landroid/app/Activity;)V
.end method
