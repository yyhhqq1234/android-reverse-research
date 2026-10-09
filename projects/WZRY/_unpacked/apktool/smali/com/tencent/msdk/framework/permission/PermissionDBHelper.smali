.class public Lcom/tencent/msdk/framework/permission/PermissionDBHelper;
.super Ljava/lang/Object;
.source "PermissionDBHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/tencent/msdk/db/PermissionModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/PermissionModel;-><init>()V

    .line 31
    .local v0, "permissionModel":Lcom/tencent/msdk/db/PermissionModel;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Lcom/tencent/msdk/db/PermissionModel;->delete()I

    .line 34
    return-void
.end method

.method public static getPermissionJson()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/tencent/msdk/db/PermissionModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/PermissionModel;-><init>()V

    .line 15
    .local v0, "permissionModel":Lcom/tencent/msdk/db/PermissionModel;
    invoke-virtual {v0}, Lcom/tencent/msdk/db/PermissionModel;->getRecord()V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 17
    iget-object v1, v0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    return-object v1
.end method

.method public static savePermissionJson(Ljava/lang/String;)Z
    .locals 3
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/tencent/msdk/db/PermissionModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/PermissionModel;-><init>()V

    .line 23
    .local v0, "permissionModel":Lcom/tencent/msdk/db/PermissionModel;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v1, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 25
    iput-object p0, v0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/tencent/msdk/db/PermissionModel;->save()Z

    move-result v1

    return v1
.end method
