.class public Lcom/netease/androidcrashhandler/MyConfigController;
.super Ljava/lang/Object;
.source "MyConfigController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntity(Z)Lcom/netease/androidcrashhandler/MyPostEntity;
    .locals 4
    .param p0, "onlyUseJavaCfg"    # Z

    .prologue
    .line 26
    const-string v2, "trace"

    const-string v3, "[MyConfigController] [getEntity]"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x0

    .line 30
    .local v1, "myPostEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    if-nez v1, :cond_0

    if-nez p0, :cond_0

    .line 31
    const-string v2, "trace"

    const-string v3, "[getEntityFromFile] get entity from jnicfg"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, ".jnicfg"

    invoke-static {v2}, Lcom/netease/androidcrashhandler/MyConfigController;->getEntityFromCfg(Ljava/lang/String;)Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v1

    .line 35
    :cond_0
    if-nez v1, :cond_1

    .line 36
    const-string v2, "trace"

    const-string v3, "[getEntityFromFile] get entity from javacfg"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, ".javacfg"

    invoke-static {v2}, Lcom/netease/androidcrashhandler/MyConfigController;->getEntityFromCfg(Ljava/lang/String;)Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v1

    .line 40
    :cond_1
    if-nez v1, :cond_2

    if-nez p0, :cond_2

    .line 41
    const-string v2, "trace"

    const-string v3, "[getEntityFromFile] get entity from current param"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v0

    .line 44
    .local v0, "myNetworkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v1

    .line 49
    .end local v0    # "myNetworkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    const-string v2, "trace"

    const-string v3, "[getEntityFromFile] final entity content:"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/MyPostEntity;->showInfo()V

    .line 55
    :cond_3
    return-object v1
.end method

.method public static getEntityFromCfg(Ljava/lang/String;)Lcom/netease/androidcrashhandler/MyPostEntity;
    .locals 9
    .param p0, "suffixName"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[getEntityFromCfg] suffixName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string v4, "trace"

    const-string v5, "[getEntityFromCfg] param error"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v3, 0x0

    .line 94
    :cond_0
    return-object v3

    .line 70
    :cond_1
    const/4 v3, 0x0

    .line 71
    .local v3, "myPostEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getFileUtils()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v2

    .line 73
    .local v2, "myFileUtils":Lcom/netease/androidcrashhandler/MyFileUtils;
    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v2, p0}, Lcom/netease/androidcrashhandler/MyFileUtils;->getFilesBySuffix(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "CfgFileNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 78
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 79
    .local v0, "CfgFileName":Ljava/lang/String;
    const-string v6, "trace"

    const-string v7, "---------------------------------------------------------"

    invoke-static {v6, v7}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getEntityFromJnicfg jnicfg file name:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v6, ""

    invoke-virtual {v2, v0, v6}, Lcom/netease/androidcrashhandler/MyFileUtils;->getPostEntityByFile(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->showInfo()V

    .line 78
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_2
    const-string v6, "trace"

    const-string v7, "content is null"

    invoke-static {v6, v7}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
