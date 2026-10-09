.class public Lcom/tencent/tmdownloader/internal/b/c/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/b/c/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)J
    .locals 6

    .prologue
    .line 82
    const-wide/16 v0, -0x1

    .line 83
    if-eqz p0, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 88
    invoke-static {v3, p0}, Lcom/tencent/tmdownloader/internal/b/c/e;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V

    .line 89
    const-string v4, "downloadChunkInfo"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 97
    :cond_0
    :goto_0
    return-wide v0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    const-string v3, "DownloadChunkInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;-><init>()V

    .line 183
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    .line 184
    const-string/jumbo v1, "taskId"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    .line 185
    const-string v1, "downUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    .line 186
    const-string v1, "jumpUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    .line 187
    const-string v1, "finalDownloadUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    .line 188
    const-string v1, "contentType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 189
    const-string v1, "netType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    .line 190
    const-string v1, "down_Size"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 191
    const-string v1, "costTime"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    .line 192
    const-string v1, "startTime"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    .line 193
    const-string v1, "endTime"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    .line 194
    const-string/jumbo v1, "taskResult"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 195
    const-string v1, "result"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 196
    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V
    .locals 6

    .prologue
    .line 164
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 165
    const-string/jumbo v0, "taskId"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "downUrl"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "jumpUrl"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "finalDownloadUrl"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "contentType"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "netType"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "down_Size"

    iget-wide v2, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v0, "startTime"

    iget-wide v2, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    .line 174
    const-string v0, "endTime"

    iget-wide v2, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string v0, "costTime"

    iget-wide v2, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    iget-wide v4, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    const-string/jumbo v0, "taskResult"

    iget v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v0, "result"

    iget-byte v1, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 179
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    const-string v1, "downloadChunkInfo"

    const-string/jumbo v2, "taskId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "DownloadChunkInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_2

    .line 138
    :try_start_0
    const-string v3, "select * from downloadChunkInfo where taskId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 139
    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    invoke-static {v3}, Lcom/tencent/tmdownloader/internal/b/c/e;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :cond_1
    if-eqz v3, :cond_2

    .line 152
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_2
    :goto_1
    return-object v0

    .line 147
    :catch_0
    move-exception v2

    move-object v3, v1

    .line 148
    :goto_2
    :try_start_2
    const-string v1, "DownloadChunkInfoTable"

    const-string v4, "exception: "

    invoke-static {v1, v4, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_3

    .line 152
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_3
    throw v0

    :cond_4
    move-object v0, v1

    .line 159
    goto :goto_1

    .line 151
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 147
    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "downloadChunkInfo"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public a(II)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "CREATE TABLE if not exists downloadChunkInfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, taskId TEXT, downUrl TEXT, jumpUrl TEXT, finalDownloadUrl TEXT, contentType TEXT, netType TEXT, down_Size INTEGER, costTime INTEGER, startTime INTEGER, endTime INTEGER, taskResult INTEGER, result INTEGER);"

    return-object v0
.end method
