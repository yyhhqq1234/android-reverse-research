.class public Lcom/tencent/msdk/db/PermissionModel;
.super Ljava/lang/Object;
.source "PermissionModel.java"

# interfaces
.implements Lcom/tencent/msdk/db/ITbl;


# static fields
.field public static final TBL_NAME:Ljava/lang/String; = "msdk_permission"

.field private static final col_permission:Ljava/lang/String; = "PERMISSIONSTR"

.field private static final col_qq_appid:Ljava/lang/String; = "QQ_APPID"

.field private static final col_wx_appid:Ljava/lang/String; = "WX_APPID"


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;

.field public permission:Ljava/lang/String;

.field public qqAppId:Ljava/lang/String;

.field public wxAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 27
    return-void
.end method

.method public static getCreateTblSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "CREATE TABLE IF NOT EXISTS msdk_permission ( QQ_APPID STRING UNIQUE NOT NULL, WX_APPID STRING, PERMISSIONSTR STRING)"

    .line 59
    .local v0, "createTblSql":Ljava/lang/String;
    return-object v0
.end method

.method public static getDropTblSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "DROP TABLE IF EXISTS msdk_permission"

    return-object v0
.end method

.method private getUsableContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "QQ_APPID"

    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const-string v1, "WX_APPID"

    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const-string v1, "PERMISSIONSTR"

    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    return-object v0
.end method


# virtual methods
.method public create()Z
    .locals 6

    .prologue
    .line 78
    iget-object v3, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    .local v1, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "msdk_permission"

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/tencent/msdk/db/PermissionModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v2, 0x1

    :try_start_1
    monitor-exit v3

    .line 87
    .end local v1    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 85
    const-string v2, "Insert into qq_login_info error"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public delete()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v6, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 166
    :try_start_0
    const-string v4, " `QQ_APPID` = ? "

    .line 167
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    aput-object v7, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 170
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "msdk_permission"

    invoke-virtual {v2, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 172
    .local v1, "howManyDeleted":I
    :try_start_2
    monitor-exit v6

    .line 178
    .end local v1    # "howManyDeleted":I
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PermissionModel delete error, selection:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 176
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    monitor-exit v6

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public deleteAll()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public find()Lcom/tencent/msdk/db/BaseUserInfo;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/db/BaseUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public firstTimeSave()Z
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->isExisted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->create()Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRecord()V
    .locals 11

    .prologue
    .line 30
    iget-object v10, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v10

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v0}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "msdk_permission"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 34
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    const-string v0, "QQ_APPID"

    .line 37
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 36
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 38
    const-string v0, "WX_APPID"

    .line 39
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 38
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 40
    const-string v0, "PERMISSIONSTR"

    .line 41
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 40
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    .line 43
    :cond_0
    if-eqz v8, :cond_1

    .line 44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v10

    .line 52
    return-void

    .line 46
    :catch_0
    move-exception v9

    .line 47
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v0}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 48
    const-string v0, "PermissionModel getRecord Exception."

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "msdk_permission"

    return-object v0
.end method

.method public isExisted()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 100
    iget-object v13, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v13

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "columns":[Ljava/lang/String;
    :try_start_0
    const-string v3, " QQ_APPID = ? "

    .line 104
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    aput-object v14, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 106
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 107
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 108
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 111
    .local v8, "limit":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "msdk_permission"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 114
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v11

    .line 125
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v1

    .line 118
    .restart local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :try_start_4
    monitor-exit v13

    move v1, v12

    goto :goto_0

    .line 121
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 122
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isExisted error, selection:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    monitor-exit v13

    move v1, v11

    goto :goto_0

    .line 127
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "groupBy":Ljava/lang/String;
    .end local v6    # "having":Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "limit":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public save()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->isExisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->update()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/db/PermissionModel;->create()Z

    move-result v0

    goto :goto_0
.end method

.method public update()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 146
    iget-object v6, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/msdk/db/PermissionModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 149
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, " `QQ_APPID` = ? "

    .line 150
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    aput-object v8, v3, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 153
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "msdk_permission"

    invoke-virtual {v2, v7, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    :try_start_2
    monitor-exit v6

    .line 157
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v5

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/tencent/msdk/db/PermissionModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PermissionModel update error, selection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 157
    monitor-exit v6

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
