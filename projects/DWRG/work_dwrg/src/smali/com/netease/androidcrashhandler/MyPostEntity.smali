.class public Lcom/netease/androidcrashhandler/MyPostEntity;
.super Ljava/lang/Object;
.source "MyPostEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;
    }
.end annotation


# instance fields
.field private URL:Ljava/lang/String;

.field private basicInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callBack:Lcom/netease/androidcrashhandler/MyPostCallBack;

.field private configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

.field private files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userDesc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "http://appdump.x.netease.com/upload"

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->URL:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    .line 25
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    .line 28
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    .line 31
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    .line 34
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->callBack:Lcom/netease/androidcrashhandler/MyPostCallBack;

    .line 37
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 2
    .param p1, "postEntity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "http://appdump.x.netease.com/upload"

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->URL:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    .line 25
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    .line 28
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    .line 31
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    .line 34
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->callBack:Lcom/netease/androidcrashhandler/MyPostCallBack;

    .line 37
    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    .line 139
    iget-object v0, p1, Lcom/netease/androidcrashhandler/MyPostEntity;->URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->URL:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getCallBack()Lcom/netease/androidcrashhandler/MyPostCallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->callBack:Lcom/netease/androidcrashhandler/MyPostCallBack;

    .line 141
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getConfigCallBack()Lcom/netease/androidcrashhandler/MyConfigCallBack;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    .line 142
    return-void
.end method


# virtual methods
.method public getBasicInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getCallBack()Lcom/netease/androidcrashhandler/MyPostCallBack;
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->callBack:Lcom/netease/androidcrashhandler/MyPostCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfigCallBack()Lcom/netease/androidcrashhandler/MyConfigCallBack;
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFiles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 348
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 349
    .local v2, "result":Ljava/lang/StringBuffer;
    const-string v3, "params----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const-string v3, "userDesc----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string v3, "basicInfo----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    const/4 v0, 0x1

    .line 353
    .local v0, "index":I
    iget-object v3, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 360
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 354
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, "key":Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDesc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    return-object v0
.end method

.method public setBasicInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setBasicInfo key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public declared-synchronized setCallBack(Lcom/netease/androidcrashhandler/MyPostCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/netease/androidcrashhandler/MyPostCallBack;

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->callBack:Lcom/netease/androidcrashhandler/MyPostCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConfigCallBack(Lcom/netease/androidcrashhandler/MyConfigCallBack;)V
    .locals 1
    .param p1, "configCallBack"    # Lcom/netease/androidcrashhandler/MyConfigCallBack;

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "uploadType"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 222
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    new-instance v1, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;

    invoke-direct {v1, p0, p1, p3}, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    return-void
.end method

.method public setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "uploadType"    # Ljava/lang/String;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 234
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/MyFileUtils;->str2File(Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    new-instance v1, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;

    invoke-direct {v1, p0, p1, p3}, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    invoke-interface {v0, p2}, Lcom/netease/androidcrashhandler/MyConfigCallBack;->setFileCallBack(Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/MyConfigCallBack;->configCallBack()V

    .line 161
    :cond_0
    return-void
.end method

.method protected setParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isWriteToJni"    # Z

    .prologue
    .line 177
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->configCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/MyConfigCallBack;->configCallBack()V

    .line 183
    :cond_0
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->URL:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setUserDesc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUserDesc key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public showInfo()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MyPostEntity] params: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->userDesc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 373
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MyPostEntity] userDesc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/MyPostEntity;->getUserDesc()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->basicInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 377
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MyPostEntity] basicInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostEntity;->files:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 381
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MyPostEntity] files: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_3
    return-void
.end method
