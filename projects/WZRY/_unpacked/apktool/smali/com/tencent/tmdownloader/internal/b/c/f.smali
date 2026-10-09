.class public Lcom/tencent/tmdownloader/internal/b/c/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/b/c/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static a(Lcom/tencent/tmdownloader/internal/a/d;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 231
    if-nez p0, :cond_1

    .line 232
    const/4 v0, -0x1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 236
    invoke-static {v0, p0}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 237
    const-string v2, "downloadInfo"

    const-string/jumbo v3, "taskUrl = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    if-gtz v0, :cond_0

    move v0, v1

    .line 241
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static a(Lcom/tencent/tmdownloader/internal/a/d;)V
    .locals 4

    .prologue
    .line 180
    if-eqz p0, :cond_0

    .line 182
    :try_start_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0, v0}, Lcom/tencent/tmdownloader/internal/b/c/f;->a(Lcom/tencent/tmdownloader/internal/a/d;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 185
    if-gtz v1, :cond_0

    .line 186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-static {v1, p0}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 188
    const-string v2, "downloadInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 207
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    :try_start_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const-string v1, "downloadInfo"

    const-string/jumbo v2, "taskUrl = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    .line 142
    if-eqz p0, :cond_1

    .line 143
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_1

    .line 146
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/d;

    .line 148
    invoke-static {v0, v1}, Lcom/tencent/tmdownloader/internal/b/c/f;->a(Lcom/tencent/tmdownloader/internal/a/d;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v3

    .line 149
    if-gtz v3, :cond_0

    .line 150
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 151
    invoke-static {v3, v0}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 152
    const-string v0, "downloadInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    const-string v2, "DownloadInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 171
    :cond_1
    :goto_1
    return-void

    .line 155
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 161
    :goto_3
    throw v0

    .line 163
    :catch_2
    move-exception v1

    .line 164
    const-string v2, "DownloadInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 163
    :catch_3
    move-exception v0

    .line 164
    const-string v1, "DownloadInfoTable"

    const-string v2, "exception: "

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 258
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 260
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    const-string v2, "select * from downloadInfo where taskUrl = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 265
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 275
    if-eqz v2, :cond_0

    .line 276
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_0
    return-object v0

    .line 271
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 272
    :goto_1
    :try_start_2
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_1

    .line 276
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_1
    throw v1

    :cond_2
    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 271
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 292
    const-string v1, "DownloadInfoTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryByPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 295
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    const-string v2, "select * from downloadInfo where taskPakcageName = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 300
    if-eqz v2, :cond_2

    .line 301
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 312
    if-eqz v2, :cond_0

    .line 313
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_0
    return-object v0

    .line 308
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 309
    :goto_1
    :try_start_2
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_1

    .line 313
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_1
    throw v1

    :cond_2
    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 308
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static c()Ljava/util/ArrayList;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_2

    .line 113
    :try_start_0
    const-string v3, "select * from downloadInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_2
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    :try_start_1
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_3
    throw v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_2

    .line 334
    :try_start_0
    const-string v3, "select a.taskUrl,a.status,b.clientId from downloadInfo as a left outer join clientinfo as b on a.taskUrl = b.taskUrl where b.clientId is not null and (a.status = 2 or a.status = 1)"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    const-string v1, "clientId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    const-string/jumbo v3, "taskUrl"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 340
    const-string v4, "status"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 341
    new-instance v5, Lcom/tencent/tmdownloader/internal/a/a/b;

    invoke-direct {v5, v1, v3}, Lcom/tencent/tmdownloader/internal/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iput v4, v5, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    .line 344
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 353
    :cond_1
    if-eqz v2, :cond_2

    .line 354
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_2
    return-object v0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    :try_start_1
    const-string v3, "DownloadInfoTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 354
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_3
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "downloadInfo"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 364
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 365
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 369
    :try_start_0
    const-string v0, "select * from downloadInfo"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    const-string v0, "downloadInfo"

    const-string v2, "start move data!"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 375
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/a/d;->b(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmdownloader/internal/a/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 376
    const-string v2, "downloadInfo"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :cond_1
    if-eqz v1, :cond_2

    .line 387
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 392
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 395
    :cond_3
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    :try_start_1
    const-string v2, "DownloadInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    const-string v0, "downloadInfo"

    const-string v2, "move data exception!"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_4
    throw v0
.end method

.method public a(II)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 66
    if-ne p1, v2, :cond_0

    if-ne p2, v3, :cond_0

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "alter table downloadInfo add column headerParams TEXT;"

    aput-object v1, v0, v4

    .line 88
    :goto_0
    return-object v0

    .line 70
    :cond_0
    if-ne p1, v3, :cond_1

    if-ne p2, v5, :cond_1

    .line 71
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "alter table downloadInfo add column appId INTEGER;"

    aput-object v1, v0, v4

    const-string v1, "alter table downloadInfo add column taskPakcageName TEXT;"

    aput-object v1, v0, v2

    const-string v1, "alter table downloadInfo add column taskVersioncode TEXT;"

    aput-object v1, v0, v3

    const-string v1, "alter table downloadInfo add column clientIp TEXT;"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "alter table downloadInfo add column startTime INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alter table downloadInfo add column endTime INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "alter table downloadInfo add column downloadType INTEGER;"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alter table downloadInfo add column uin INTEGER;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alter table downloadInfo add column uintype TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "alter table downloadInfo add column via TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "alter table downloadInfo add column channelId TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alter table downloadInfo add column traceId TEXT;"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "alter table downloadInfo add column extraData TEXT;"

    aput-object v2, v0, v1

    goto :goto_0

    .line 88
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "alter table downloadInfo add column netType TEXT;"

    aput-object v1, v0, v4

    const-string v1, "alter table downloadInfo add column downloadFailedErrCode INTEGER;"

    aput-object v1, v0, v2

    const-string v1, "alter table downloadInfo add column downloadFailedTime INTEGER;"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "CREATE TABLE if not exists downloadInfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, taskId INTEGER , uId TEXT, taskUrl TEXT, finalUrl TEXT, fileName TEXT, contentType TEXT, redirectCnt INTEGER, retryCnt INTEGER, totalBytes INTEGER,status INTEGER,receivedBytes INTEGER,priority INTEGER, netType TEXT,downloadFailedErrCode INTEGER,downloadFailedTime INTEGER,headerParams TEXT,appId INTEGER,taskPakcageName TEXT,taskVersioncode TEXT,clientIp TEXT,startTime INTEGER,endTime INTEGER,downloadType INTEGER,uin INTEGER,uintype TEXT,via TEXT,channelId TEXT,traceId TEXT,extraData TEXT);"

    return-object v0
.end method
