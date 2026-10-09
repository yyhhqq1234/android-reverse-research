.class public Lcom/tsf4g/apollo/Apollo;
.super Ljava/lang/Object;
.source "Apollo.java"


# static fields
.field private static final ClassTag:Ljava/lang/String; = "class Apollo"

.field public static final Instance:Lcom/tsf4g/apollo/Apollo;

.field private static final NetTag:Ljava/lang/String; = "checkNetworkState"

.field private static m_cntxt:Landroid/content/Context; = null

.field private static final tag:Ljava/lang/String; = "Apollo"


# instance fields
.field m_statiscfg:Lcom/tsf4g/apollo/StatisConfig;

.field strJsonConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "Apollo"

    const-string v1, "static"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v0, "TegTransSdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    const-string v0, "apollo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/tsf4g/apollo/Apollo;

    invoke-direct {v0}, Lcom/tsf4g/apollo/Apollo;-><init>()V

    sput-object v0, Lcom/tsf4g/apollo/Apollo;->Instance:Lcom/tsf4g/apollo/Apollo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tsf4g/apollo/Apollo;->strJsonConfig:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/tsf4g/apollo/StatisConfig;

    invoke-direct {v0}, Lcom/tsf4g/apollo/StatisConfig;-><init>()V

    iput-object v0, p0, Lcom/tsf4g/apollo/Apollo;->m_statiscfg:Lcom/tsf4g/apollo/StatisConfig;

    .line 38
    const-string v0, "Apollo"

    const-string v1, "Apollo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static GetResID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "resName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    sget-object v2, Lcom/tsf4g/apollo/Apollo;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/tsf4g/apollo/Apollo;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, p1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Apollo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetResID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native apolloInit(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
.end method

.method private checkNetworkState()I
    .locals 10

    .prologue
    .line 80
    const/4 v6, 0x0

    .line 82
    .local v6, "ret":I
    :try_start_0
    sget-object v2, Lcom/tsf4g/apollo/Apollo;->m_cntxt:Landroid/content/Context;

    .line 84
    .local v2, "cntxt":Landroid/content/Context;
    const-string v7, "connectivity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 86
    .local v5, "obj":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v3, v0

    .line 88
    .local v3, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 90
    .local v1, "ApolloNetInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 93
    const-string v7, "checkNetworkState"

    const-string v8, "ApolloNetInfo : null. All Networks are disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v6, 0x0

    .line 128
    .end local v1    # "ApolloNetInfo":Landroid/net/NetworkInfo;
    .end local v2    # "cntxt":Landroid/content/Context;
    .end local v3    # "connManager":Landroid/net/ConnectivityManager;
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_0
    return v6

    .line 98
    .restart local v1    # "ApolloNetInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "cntxt":Landroid/content/Context;
    .restart local v3    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_0
    const-string v7, "checkNetworkState"

    const-string v8, "ApolloNetInfo : not null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 116
    const-string v7, "checkNetworkState"

    const-string v8, "Network Type : Other Network Type"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v6, 0x0

    goto :goto_0

    .line 104
    :pswitch_0
    const-string v7, "checkNetworkState"

    const-string v8, "Network Type : MOBILE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v6, 0x1

    .line 106
    goto :goto_0

    .line 110
    :pswitch_1
    const-string v7, "checkNetworkState"

    const-string v8, "Network Type : WIFI"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v6, 0x2

    .line 112
    goto :goto_0

    .line 123
    .end local v1    # "ApolloNetInfo":Landroid/net/NetworkInfo;
    .end local v2    # "cntxt":Landroid/content/Context;
    .end local v3    # "connManager":Landroid/net/ConnectivityManager;
    .end local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "Exception"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Apollo check"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public GetBaseConfig()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tsf4g/apollo/Apollo;->m_statiscfg:Lcom/tsf4g/apollo/StatisConfig;

    sget-object v1, Lcom/tsf4g/apollo/Apollo;->m_cntxt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tsf4g/apollo/StatisConfig;->GetBaseConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tsf4g/apollo/Apollo;->strJsonConfig:Ljava/lang/String;

    .line 75
    const-string v0, "Apollo.GetBaseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "strJsonConfig:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tsf4g/apollo/Apollo;->strJsonConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public HandleCallback(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    sget-object v0, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-virtual {v0, p1}, Lcom/tsf4g/apollo/ApolloPluginManager;->HandleCallback(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public Initialize(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 55
    const-string v0, "Apollo"

    const-string v1, "TX Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/tsf4g/tx/TX;->Instance:Lcom/tsf4g/tx/TX;

    invoke-virtual {v0, p1}, Lcom/tsf4g/tx/TX;->Initialize(Landroid/app/Activity;)V

    .line 59
    const-string v0, "Apollo"

    const-string v1, "TDM Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/TDataMaster;->initialize(Landroid/content/Context;)Z

    .line 63
    const-string v0, "Apollo"

    const-string v1, "Apollo Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "tomb"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/tsf4g/apollo/Apollo;->apolloInit(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tsf4g/apollo/Apollo;->m_cntxt:Landroid/content/Context;

    .line 68
    sget-object v0, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/tsf4g/apollo/ApolloPluginManager;->InitializePlugin(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 138
    const-string v1, "Apollo"

    const-string v2, "OnActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    sget-object v1, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tsf4g/apollo/ApolloPluginManager;->OnActivityResult(IILandroid/content/Intent;)V

    .line 142
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/tencent/tdm/TDataMaster;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Apollo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnActivityResult exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnDestroy(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    const-string v1, "Apollo"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    sget-object v1, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-virtual {v1, p1}, Lcom/tsf4g/apollo/ApolloPluginManager;->OnDestroy(Landroid/app/Activity;)V

    .line 184
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tdm/TDataMaster;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Apollo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnDestroy exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnPause()V
    .locals 4

    .prologue
    .line 152
    const-string v1, "Apollo"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    sget-object v1, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-virtual {v1}, Lcom/tsf4g/apollo/ApolloPluginManager;->OnPause()V

    .line 156
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tdm/TDataMaster;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Apollo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPause exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnResume()V
    .locals 4

    .prologue
    .line 166
    const-string v1, "Apollo"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    sget-object v1, Lcom/tsf4g/apollo/ApolloPluginManager;->Instance:Lcom/tsf4g/apollo/ApolloPluginManager;

    invoke-virtual {v1}, Lcom/tsf4g/apollo/ApolloPluginManager;->OnResume()V

    .line 170
    invoke-static {}, Lcom/tencent/tdm/TDataMaster;->getInstance()Lcom/tencent/tdm/TDataMaster;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tdm/TDataMaster;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Apollo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResume exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
