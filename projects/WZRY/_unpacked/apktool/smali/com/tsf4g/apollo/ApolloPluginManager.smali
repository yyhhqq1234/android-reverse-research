.class public Lcom/tsf4g/apollo/ApolloPluginManager;
.super Ljava/lang/Object;
.source "ApolloPluginManager.java"


# static fields
.field public static final Instance:Lcom/tsf4g/apollo/ApolloPluginManager;


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tsf4g/apollo/ApolloPlugin;",
            ">;"
        }
    .end annotation
.end field

.field plugin:Lcom/tsf4g/apollo/ApolloPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-direct {v0}, Lcom/tsf4g/apollo/ApolloPluginManager;-><init>()V

    sput-object v0, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->list:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    .line 18
    return-void
.end method


# virtual methods
.method public AddPlugin(Lcom/tsf4g/apollo/ApolloPlugin;)V
    .locals 3
    .param p1, "pl"    # Lcom/tsf4g/apollo/ApolloPlugin;

    .prologue
    .line 36
    const-string v1, "ApolloPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "AddPlugin():"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p1, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    .line 38
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "ApolloPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HandleCallback(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/ApolloPlugin;->HandleCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public InitializePlugin(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "InitializePlugin"

    const-string v3, "Plugin != null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    const-string v2, "InitializePlugin"

    const-string v3, "Plugin is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 59
    const-string v2, "InitializePlugin"

    const-string v3, "Plugin list is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v2, 0x0

    .line 71
    :goto_0
    return v2

    .line 63
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 71
    const/4 v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tsf4g/apollo/ApolloPlugin;

    .line 66
    .local v1, "plugin":Lcom/tsf4g/apollo/ApolloPlugin;
    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v1, p1, p2}, Lcom/tsf4g/apollo/ApolloPlugin;->OnInitialize(Landroid/app/Activity;Ljava/lang/Object;)Z

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tsf4g/apollo/ApolloPlugin;->OnActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public OnDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 105
    const-string v0, ""

    const-string v1, "Apollo onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/ApolloPlugin;->OnDestroy(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public OnPause()V
    .locals 2

    .prologue
    .line 85
    const-string v0, ""

    const-string v1, "Apollo onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0}, Lcom/tsf4g/apollo/ApolloPlugin;->OnPause()V

    goto :goto_0
.end method

.method public OnRestart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    const-string v0, ""

    const-string v1, "Apollo onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/ApolloPlugin;->OnRestart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public OnResume()V
    .locals 2

    .prologue
    .line 95
    const-string v0, ""

    const-string v1, "Apollo onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0}, Lcom/tsf4g/apollo/ApolloPlugin;->OnResume()V

    goto :goto_0
.end method

.method public OnStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    const-string v0, ""

    const-string v1, "Apollo OnStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/ApolloPlugin;->OnStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public OnStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    const-string v0, ""

    const-string v1, "Apollo OnStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/tsf4g/apollo/ApolloPluginManager;->plugin:Lcom/tsf4g/apollo/ApolloPlugin;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/ApolloPlugin;->OnStop(Landroid/app/Activity;)V

    goto :goto_0
.end method
