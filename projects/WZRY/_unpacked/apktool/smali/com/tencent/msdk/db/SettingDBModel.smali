.class public Lcom/tencent/msdk/db/SettingDBModel;
.super Lcom/tencent/msdk/db/BaseDBModel;
.source "SettingDBModel.java"


# static fields
.field public static final COL_KEY:Ljava/lang/String; = "key"

.field public static final COL_VALUE:Ljava/lang/String; = "value"

.field public static final TBL_NAME:Ljava/lang/String; = "msdk_setting"


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/msdk/db/BaseDBModel;-><init>()V

    .line 22
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    return-void
.end method

.method public static getCreateTblSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    const-string v0, ""

    .line 26
    .local v0, "createTblSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE TABLE IF NOT EXISTS [msdk_setting] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[key] VARCHAR(256)  PRIMARY KEY NOT NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[value] TEXT  NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public static getDropTblSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "DROP TABLE IF EXISTS msdk_setting"

    return-object v0
.end method

.method private hasKey(Ljava/lang/String;)Z
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 100
    iget-object v13, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v13

    .line 101
    :try_start_0
    const-string v3, " `key` = ? "

    .line 102
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v4, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 105
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "msdk_setting"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 107
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v11

    .line 118
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v1

    .line 111
    .restart local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :try_start_4
    monitor-exit v13

    move v1, v12

    goto :goto_0

    .line 114
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 115
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 116
    const-string v1, "false of SettingTable error"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    monitor-exit v13

    move v1, v12

    goto :goto_0

    .line 120
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v4, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v4

    .line 39
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, "content":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 43
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "msdk_setting"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v3, 0x1

    :try_start_1
    monitor-exit v4

    .line 49
    .end local v0    # "content":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v3

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 47
    const-string v3, "Insert into SettingTable error"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 51
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private query(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v12, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v12

    .line 76
    :try_start_0
    const-string v3, " `key` = ? "

    .line 77
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v4, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "msdk_setting"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 82
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    const-string/jumbo v1, "value"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "value":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "value":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 88
    .restart local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 89
    const-string v11, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v12

    goto :goto_0

    .line 97
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 91
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 92
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v1, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 93
    const-string v1, "Query of  SettingTable error"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const-string v11, ""

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v6, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 125
    :try_start_0
    const-string v4, " `key` = ? "

    .line 126
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "msdk_setting"

    invoke-virtual {v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 130
    .local v1, "deleteNum":I
    :try_start_2
    monitor-exit v6

    .line 136
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deleteNum":I
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete error, Selection: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 134
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const/4 v1, -0x1

    monitor-exit v6

    goto :goto_0

    .line 138
    .end local v2    # "e":Ljava/lang/Exception;
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
    .locals 7

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "deleteNum":I
    iget-object v4, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v4

    .line 145
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "msdk_setting"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 153
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 154
    return v1

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 149
    const/4 v1, -0x1

    .line 150
    const-string v3, "SettingTable deleteAll error."

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Get from SettingTable error, key is empty"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 173
    const-string v0, ""

    .line 175
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/msdk/db/SettingDBModel;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Save to SettingTable error, key is empty"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/msdk/db/SettingDBModel;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/tencent/msdk/db/SettingDBModel;->insert(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/msdk/db/SettingDBModel;->update(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 55
    iget-object v7, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v7

    .line 56
    :try_start_0
    const-string v4, " `key` = ? "

    .line 57
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v3, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, "content":Landroid/content/ContentValues;
    const-string v8, "key"

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v8, "value"

    invoke-virtual {v0, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v8, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v8}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 63
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "msdk_setting"

    invoke-virtual {v1, v8, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    monitor-exit v7

    .line 69
    .end local v0    # "content":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v5

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tencent/msdk/db/SettingDBModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 67
    const-string v5, "Update of  SettingTable error"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
