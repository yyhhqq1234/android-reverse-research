.class public Lcom/tencent/tmdownloader/internal/b/c/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/b/c/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method private static a(Lcom/tencent/tmdownloader/internal/b/b/a;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 94
    const/4 v0, -0x1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    invoke-static {v0, p0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 99
    const-string v2, "clientinfo"

    const-string v3, "clientId = ? and taskUrl = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    if-gtz v0, :cond_0

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "ClientInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/b/b/a;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/b/a;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/b/a;-><init>()V

    .line 52
    const-string v1, "clientId"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "taskId"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->b:I

    .line 54
    const-string/jumbo v1, "taskUrl"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    .line 56
    return-object v0
.end method

.method private static a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V
    .locals 2

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    const-string v0, "clientId"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "taskId"

    iget v1, p1, Lcom/tencent/tmdownloader/internal/b/b/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    const-string/jumbo v0, "taskUrl"

    iget-object v1, p1, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/tmdownloader/internal/b/b/a;)V
    .locals 4

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, v0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Lcom/tencent/tmdownloader/internal/b/b/a;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 70
    if-gtz v1, :cond_0

    .line 71
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    invoke-static {v1, p0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 73
    const-string v2, "clientinfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "ClientInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :try_start_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const-string v1, "clientinfo"

    const-string/jumbo v2, "taskUrl = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v1, "ClientInfoTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/b/a;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/b/a;-><init>()V

    .line 86
    iput-object p0, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->a:Ljava/lang/String;

    .line 87
    iput-object p1, v0, Lcom/tencent/tmdownloader/internal/b/b/a;->c:Ljava/lang/String;

    .line 88
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 89
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "clientinfo"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 231
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 232
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 236
    :try_start_0
    const-string v0, "select * from clientinfo"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 241
    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/database/Cursor;)Lcom/tencent/tmdownloader/internal/b/b/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Landroid/content/ContentValues;Lcom/tencent/tmdownloader/internal/b/b/a;)V

    .line 242
    const-string v2, "clientinfo"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :cond_1
    if-eqz v1, :cond_2

    .line 251
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 256
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 258
    :cond_3
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :try_start_1
    const-string v2, "ClientInfoTable"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 251
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_4
    throw v0
.end method

.method public a(II)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "CREATE TABLE if not exists clientinfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, clientId TEXT , taskId INTEGER, taskUrl TEXT);"

    return-object v0
.end method
