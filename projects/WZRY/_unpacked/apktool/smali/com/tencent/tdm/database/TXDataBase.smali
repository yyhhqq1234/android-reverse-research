.class public Lcom/tencent/tdm/database/TXDataBase;
.super Ljava/lang/Object;


# static fields
.field private static final DBName:Ljava/lang/String; = "tdm.db"

.field private static final DBTable:Ljava/lang/String; = "DataMaster"

.field private static final DBVersion:I = 0x1

.field private static final KEY_Data:Ljava/lang/String; = "Data"

.field private static final KEY_EventID:Ljava/lang/String; = "EventId"

.field private static final KEY_Len:Ljava/lang/String; = "Len"

.field private static final PKEY_ID:Ljava/lang/String; = "Id"

.field private static final TAG:Ljava/lang/String; = "TXDataBase"

.field private static instance:Lcom/tencent/tdm/database/TXDataBase;

.field private static mContext:Landroid/content/Context;

.field private static mDBHelper:Lcom/tencent/tdm/database/DBHelper;


# instance fields
.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    sput-object v0, Lcom/tencent/tdm/database/TXDataBase;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/tencent/tdm/database/TXDataBase;->instance:Lcom/tencent/tdm/database/TXDataBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tdm/database/TXDataBase;->mInitialized:Z

    return-void
.end method

.method private native TXDataBaseInit()V
.end method

.method public static getInstance()Lcom/tencent/tdm/database/TXDataBase;
    .locals 1

    sget-object v0, Lcom/tencent/tdm/database/TXDataBase;->instance:Lcom/tencent/tdm/database/TXDataBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tdm/database/TXDataBase;

    invoke-direct {v0}, Lcom/tencent/tdm/database/TXDataBase;-><init>()V

    sput-object v0, Lcom/tencent/tdm/database/TXDataBase;->instance:Lcom/tencent/tdm/database/TXDataBase;

    :cond_0
    sget-object v0, Lcom/tencent/tdm/database/TXDataBase;->instance:Lcom/tencent/tdm/database/TXDataBase;

    return-object v0
.end method


# virtual methods
.method public closeDB()V
    .locals 4

    sget-object v0, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v0, :cond_0

    const-string v0, "TXDataBase"

    const-string v1, "mDBHelper is null!"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    invoke-virtual {v0}, Lcom/tencent/tdm/database/DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TXDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeDB, close Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createDB()Z
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const-string v0, "TXDataBase"

    const-string v1, "createDB, mContext is null"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tdm/database/DBHelper;

    sget-object v2, Lcom/tencent/tdm/database/TXDataBase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "tdm.db"

    const-string v4, "DataMaster"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tencent/tdm/database/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    goto :goto_0
.end method

.method public deleteEvent(J)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v2, :cond_0

    const-string v1, "TXDataBase"

    const-string v2, "mDBHelper is null, please call createDB first"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    sget-object v2, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    invoke-virtual {v2}, Lcom/tencent/tdm/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    const-string v1, "TXDataBase"

    const-string v2, "deleteEvent, db is null"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "TXDataBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteEvent, GetDB Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1

    :cond_1
    new-array v3, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    :try_start_1
    const-string v0, "DataMaster"

    const-string v4, "Id=?"

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "TXDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteEvent, delete Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public deleteTopEvent()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v1, :cond_0

    const-string v1, "TXDataBase"

    const-string v2, "mDBHelper is null, please call createDB first"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    invoke-virtual {v1}, Lcom/tencent/tdm/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "TXDataBase"

    const-string v2, "deleteTopEvent, db is null"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "TXDataBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteTopEvent, GetDB Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1

    :cond_1
    const-string v3, "select Id from DataMaster order by Id DESC limit 1"

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "DataMaster"

    const-string v6, "Id=?"

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TXDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteTopEvent, Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v1, :cond_0

    const-string v1, "TXDataBase"

    const-string v2, "mDBHelper is null, please call createDB first"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    invoke-virtual {v1}, Lcom/tencent/tdm/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "TXDataBase"

    const-string v2, "getCount, db is null"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "TXDataBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount, GetDB Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    :cond_1
    const-string v2, "select Id from DataMaster"

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TXDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount, Cursor Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEvents(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tdm/defines/DBEvent;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v1, :cond_0

    const-string v1, "TXDataBase"

    const-string v2, "mDBHelper is null, please call createDB first"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    invoke-virtual {v1}, Lcom/tencent/tdm/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "TXDataBase"

    const-string v2, "getEvents, db is null"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "TXDataBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvents, GetDB Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from DataMaster order by Id DESC limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "TXDataBase"

    const-string v2, "getEvents, db is empty"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TXDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEvents, Cursor Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ge p1, v1, :cond_4

    :goto_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    move v7, v2

    :goto_3
    if-ge v7, p1, :cond_2

    new-instance v1, Lcom/tencent/tdm/defines/DBEvent;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tdm/defines/DBEvent;-><init>(JII[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    :cond_4
    move p1, v1

    goto :goto_2
.end method

.method public getTopEvent()Lcom/tencent/tdm/defines/DBEvent;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v1, :cond_0

    const-string v1, "TXDataBase"

    const-string v2, "mDBHelper is null, please call createDB first"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    invoke-virtual {v1}, Lcom/tencent/tdm/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "TXDataBase"

    const-string v2, "getTopEvent, db is null"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TXDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopEvent, GetDB Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v2, "select * from DataMaster order by Id DESC limit 1"

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/tencent/tdm/defines/DBEvent;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tdm/defines/DBEvent;-><init>(JII[B)V

    move-object v0, v1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TXDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopEvent, rawQuery Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tdm/database/TXDataBase;->mInitialized:Z

    if-nez v0, :cond_0

    sput-object p1, Lcom/tencent/tdm/database/TXDataBase;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/tdm/database/TXDataBase;->TXDataBaseInit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tdm/database/TXDataBase;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public insertEvent(JI[BI)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    if-nez v1, :cond_0

    const-string v1, "TXDataBase"

    const-string v2, "mDBHelper is null, please call createDB first"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/tdm/database/TXDataBase;->mDBHelper:Lcom/tencent/tdm/database/DBHelper;

    invoke-virtual {v1}, Lcom/tencent/tdm/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const-string v1, "TXDataBase"

    const-string v2, "insertEvent, db is null"

    invoke-static {v1, v2}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "TXDataBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertEvent, GetDB Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "Id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "EventId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "Len"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "Data"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    const-string v2, "DataMaster"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TXDataBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertEvent, insert Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
