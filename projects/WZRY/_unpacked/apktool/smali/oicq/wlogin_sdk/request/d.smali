.class public Loicq/wlogin_sdk/request/d;
.super Ljava/lang/Object;
.source "account_sig_info_map.java"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/lang/Object;

.field private static h:Loicq/wlogin_sdk/request/b;

.field private static i:Loicq/wlogin_sdk/request/b;


# instance fields
.field a:Landroid/content/Context;

.field b:Loicq/wlogin_sdk/request/WloginLastLoginInfo;

.field c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Loicq/wlogin_sdk/request/WloginAllSigInfo;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Loicq/wlogin_sdk/request/UinInfo;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/d;->g:Ljava/lang/Object;

    .line 41
    sput-object v1, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    .line 42
    sput-object v1, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WloginLastLoginInfo;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/d;->b:Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    .line 53
    iput-object p1, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string v1, "name_file"

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    .line 56
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    .line 59
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 937
    .line 940
    const-string v0, ""

    .line 945
    :try_start_0
    const-string/jumbo v0, "tk_file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 946
    sget-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    if-nez v0, :cond_0

    .line 947
    new-instance v0, Loicq/wlogin_sdk/request/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Loicq/wlogin_sdk/request/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    .line 948
    :cond_0
    sget-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 955
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/request/d;->c(Ljava/lang/String;)V

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (ID INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BLOB);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 962
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ID"

    aput-object v3, v2, v1

    .line 963
    const-string v3, "ID=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 965
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 966
    if-nez v1, :cond_1

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert into "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (ID, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") values (?,?);"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 969
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [B

    aput-object v5, v3, v4

    .line 970
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " =? where ID=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 975
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 976
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 988
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 989
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-ne v10, v1, :cond_3

    .line 991
    const-string/jumbo v1, "write_to_db db closed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    move v0, v8

    .line 996
    :cond_4
    :goto_1
    return v0

    .line 950
    :cond_5
    :try_start_3
    sget-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;

    if-nez v0, :cond_6

    .line 951
    new-instance v0, Loicq/wlogin_sdk/request/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Loicq/wlogin_sdk/request/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;

    .line 952
    :cond_6
    sget-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto/16 :goto_0

    .line 977
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move-object v3, v9

    .line 978
    :goto_2
    :try_start_4
    const-string/jumbo v0, "tk_file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 979
    const/4 v0, 0x0

    sput-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    .line 984
    :goto_3
    const-string v0, ""

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 985
    const-string v0, "save ticket to file failed"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 986
    const/16 v0, -0x3fe

    .line 988
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 989
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_7
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-ne v10, v1, :cond_4

    .line 991
    const-string/jumbo v1, "write_to_db db closed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 981
    :cond_8
    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 988
    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_4
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 989
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-ne v10, v0, :cond_a

    .line 991
    const-string/jumbo v0, "write_to_db db closed"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v1

    .line 988
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move-object v3, v9

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v9

    move-object v3, v0

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v3, v0

    goto :goto_4

    .line 977
    :catch_1
    move-exception v1

    move-object v2, v9

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v3, v0

    goto :goto_2
.end method

.method public static a([BI[B)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 628
    move v0, p1

    :goto_0
    array-length v1, p0

    array-length v3, p2

    sub-int/2addr v1, v3

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 629
    const/4 v3, 0x1

    move v1, v2

    .line 630
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_3

    .line 631
    add-int v4, v0, v1

    aget-byte v4, p0, v4

    aget-byte v5, p2, v1

    if-eq v4, v5, :cond_0

    move v1, v2

    .line 636
    :goto_2
    if-eqz v1, :cond_1

    .line 640
    :goto_3
    return v0

    .line 630
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 628
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_2
    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 6

    .prologue
    .line 645
    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadTKTreeMap sigfile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/d;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 651
    if-eqz v0, :cond_6

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTKTreeMap len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Loicq/wlogin_sdk/request/u;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const/4 v1, 0x0

    :try_start_0
    array-length v2, v0

    sget-object v3, Loicq/wlogin_sdk/request/u;->B:[B

    invoke-static {v0, v1, v2, v3}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v1

    .line 659
    if-eqz v1, :cond_5

    .line 660
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 661
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 662
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 663
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 664
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 665
    if-eqz v0, :cond_4

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTKTreeMap tree size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v1, "tk_file"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 669
    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " allsig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 711
    :cond_0
    :goto_1
    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/d;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    :cond_1
    :goto_2
    return-object v0

    .line 673
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 674
    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loicq/wlogin_sdk/request/UinInfo;

    .line 675
    if-eqz v1, :cond_3

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is uin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Loicq/wlogin_sdk/request/UinInfo;->_uin:Ljava/lang/Long;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 682
    :cond_4
    const-string/jumbo v0, "tree is null"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v0, 0x0

    goto :goto_2

    .line 689
    :cond_5
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    const-string v3, "DESede"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 691
    const-string v2, "DESede"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 693
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 695
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 696
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 697
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 698
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 699
    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 701
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 708
    :cond_6
    const-string v0, "dbdata is null"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1001
    .line 1004
    const-string v0, ""

    .line 1007
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1010
    :try_start_0
    const-string/jumbo v0, "tk_file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1011
    sget-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    if-nez v0, :cond_0

    .line 1012
    new-instance v0, Loicq/wlogin_sdk/request/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, p1, v2, v3}, Loicq/wlogin_sdk/request/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    .line 1013
    :cond_0
    sget-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1020
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/request/d;->c(Ljava/lang/String;)V

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(*) from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1023
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v9

    .line 1024
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1026
    if-lez v2, :cond_1

    .line 1027
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1030
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1031
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1034
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v1

    if-nez v1, :cond_7

    .line 1062
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1063
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-ne v10, v1, :cond_4

    .line 1065
    const-string v1, "get_from_db db closed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    move-object v0, v8

    .line 1060
    :goto_1
    return-object v0

    .line 1015
    :cond_5
    :try_start_3
    sget-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;

    if-nez v0, :cond_6

    .line 1016
    new-instance v0, Loicq/wlogin_sdk/request/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, p1, v2, v3}, Loicq/wlogin_sdk/request/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;

    .line 1017
    :cond_6
    sget-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_7
    const/4 v1, 0x1

    :try_start_4
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    .line 1039
    const-string v3, "ID=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    .line 1041
    if-nez v2, :cond_a

    .line 1062
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-ne v10, v1, :cond_9

    .line 1065
    const-string v1, "get_from_db db closed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    move-object v0, v8

    .line 1042
    goto :goto_1

    .line 1044
    :cond_a
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1045
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1046
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1062
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-ne v10, v2, :cond_c

    .line 1065
    const-string v2, "get_from_db db closed"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    move-object v0, v1

    .line 1047
    goto :goto_1

    .line 1049
    :cond_d
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1062
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-ne v10, v1, :cond_f

    .line 1065
    const-string v1, "get_from_db db closed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f
    move-object v0, v8

    .line 1050
    goto/16 :goto_1

    .line 1052
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v3, v8

    .line 1053
    :goto_2
    :try_start_7
    const-string/jumbo v0, "tk_file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1054
    const/4 v0, 0x0

    sput-object v0, Loicq/wlogin_sdk/request/d;->h:Loicq/wlogin_sdk/request/b;

    .line 1059
    :goto_3
    const-string v0, ""

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1062
    if-eqz v2, :cond_10

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_10
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-ne v10, v0, :cond_11

    .line 1065
    const-string v0, "get_from_db db closed"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_11
    move-object v0, v8

    .line 1060
    goto/16 :goto_1

    .line 1056
    :cond_12
    const/4 v0, 0x0

    :try_start_8
    sput-object v0, Loicq/wlogin_sdk/request/d;->i:Loicq/wlogin_sdk/request/b;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1062
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v2

    :goto_4
    if-eqz v9, :cond_13

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1063
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-ne v10, v0, :cond_14

    .line 1065
    const-string v0, "get_from_db db closed"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    throw v1

    .line 1062
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v9, v8

    move-object v3, v8

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v9, v8

    move-object v3, v0

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v3, v0

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v9, v2

    move-object v3, v0

    goto :goto_4

    .line 1052
    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v9

    move-object v3, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v0

    goto :goto_2
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 715
    .line 723
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    const-string v3, "DESede"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 726
    const-string v2, "DESede"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 728
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 730
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 731
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 732
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    .line 916
    :goto_0
    if-nez v0, :cond_11

    move-object v1, v0

    .line 926
    :goto_1
    return-object v1

    .line 734
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 735
    :goto_2
    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_0

    .line 737
    const/16 v0, 0x100

    :try_start_2
    new-array v0, v0, [B

    .line 739
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 740
    :goto_3
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_1

    .line 741
    invoke-static {v0, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_string([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 744
    :catch_1
    move-exception v0

    .line 752
    :cond_0
    :goto_4
    :try_start_3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    new-instance v3, Ljava/lang/String;

    const-string v5, "%4;7t>;28<fc.5*6"

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v5, "DESede"

    invoke-direct {v0, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 755
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 757
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 759
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 760
    new-instance v5, Ljavax/crypto/CipherInputStream;

    invoke-direct {v5, v0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 761
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 762
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    move-object v2, v3

    .line 914
    goto :goto_0

    .line 743
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 763
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 768
    :goto_5
    const/16 v2, 0x100

    :try_start_6
    new-array v3, v2, [B

    .line 769
    const/16 v5, 0x28

    array-length v2, v3

    sub-int v6, v2, v5

    .line 771
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    .line 772
    const-string/jumbo v2, "tmp_tk_file"

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 774
    :cond_2
    :goto_6
    invoke-virtual {v7, v3, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    if-lez v9, :cond_10

    .line 776
    add-int v2, v5, v9

    :goto_7
    array-length v10, v3

    if-ge v2, v10, :cond_3

    .line 778
    const/4 v10, 0x0

    aput-byte v10, v3, v2

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3
    move v2, v4

    .line 785
    :cond_4
    :goto_8
    if-ltz v2, :cond_5

    .line 787
    new-instance v10, Ljava/lang/String;

    const-string v11, "WloginAllSigInfo"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 788
    invoke-static {v3, v2, v10}, Loicq/wlogin_sdk/request/d;->a([BI[B)I

    move-result v2

    .line 789
    if-gez v2, :cond_c

    :cond_5
    move v2, v4

    .line 814
    :cond_6
    :goto_9
    if-ltz v2, :cond_7

    .line 816
    new-instance v10, Ljava/lang/String;

    const-string v11, "WloginSigInfo"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 817
    invoke-static {v3, v2, v10}, Loicq/wlogin_sdk/request/d;->a([BI[B)I

    move-result v2

    .line 818
    if-gez v2, :cond_d

    :cond_7
    move v2, v4

    .line 843
    :cond_8
    :goto_a
    if-ltz v2, :cond_9

    .line 845
    new-instance v10, Ljava/lang/String;

    const-string v11, "WloginSimpleInfo"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 846
    invoke-static {v3, v2, v10}, Loicq/wlogin_sdk/request/d;->a([BI[B)I

    move-result v2

    .line 847
    if-gez v2, :cond_e

    :cond_9
    move v2, v4

    .line 872
    :cond_a
    :goto_b
    if-ltz v2, :cond_b

    .line 874
    new-instance v10, Ljava/lang/String;

    const-string v11, "UinInfo"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 875
    invoke-static {v3, v2, v10}, Loicq/wlogin_sdk/request/d;->a([BI[B)I

    move-result v2

    .line 876
    if-gez v2, :cond_f

    .line 900
    :cond_b
    invoke-virtual {v8, v3, v5, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 901
    if-le v9, v5, :cond_2

    .line 902
    const/4 v2, 0x0

    invoke-static {v3, v9, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 910
    :catch_3
    move-exception v2

    move-object v2, v0

    :goto_c
    move-object v0, v1

    .line 913
    :goto_d
    const-string/jumbo v3, "tmp_tk_file"

    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 790
    :cond_c
    :try_start_7
    array-length v10, v10

    add-int/2addr v2, v10

    .line 791
    add-int/lit8 v10, v2, 0x8

    array-length v11, v3

    if-gt v10, v11, :cond_4

    add-int/lit8 v10, v2, 0x0

    aget-byte v10, v3, v10

    const/16 v11, -0x7f

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v3, v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, v3, v10

    if-ne v10, v12, :cond_4

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, v3, v10

    const/16 v11, 0x6f

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, v3, v10

    const/16 v11, -0x6f

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v2, 0x5

    aget-byte v10, v3, v10

    const/16 v11, -0x2c

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v2, 0x6

    aget-byte v10, v3, v10

    const/16 v11, 0x1a

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v2, 0x7

    aget-byte v10, v3, v10

    const/16 v11, -0x65

    if-ne v10, v11, :cond_4

    .line 801
    add-int/lit8 v10, v2, 0x0

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 802
    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 803
    add-int/lit8 v10, v2, 0x2

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 804
    add-int/lit8 v10, v2, 0x3

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 805
    add-int/lit8 v10, v2, 0x4

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 806
    add-int/lit8 v10, v2, 0x5

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 807
    add-int/lit8 v10, v2, 0x6

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 808
    add-int/lit8 v10, v2, 0x7

    const/4 v11, 0x1

    aput-byte v11, v3, v10

    goto/16 :goto_8

    .line 819
    :cond_d
    array-length v10, v10

    add-int/2addr v2, v10

    .line 820
    add-int/lit8 v10, v2, 0x8

    array-length v11, v3

    if-gt v10, v11, :cond_6

    add-int/lit8 v10, v2, 0x0

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v2, 0x5

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v2, 0x6

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v2, 0x7

    aget-byte v10, v3, v10

    if-nez v10, :cond_6

    .line 830
    add-int/lit8 v10, v2, 0x0

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 831
    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 832
    add-int/lit8 v10, v2, 0x2

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 833
    add-int/lit8 v10, v2, 0x3

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 834
    add-int/lit8 v10, v2, 0x4

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 835
    add-int/lit8 v10, v2, 0x5

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 836
    add-int/lit8 v10, v2, 0x6

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 837
    add-int/lit8 v10, v2, 0x7

    const/4 v11, 0x1

    aput-byte v11, v3, v10

    goto/16 :goto_9

    .line 848
    :cond_e
    array-length v10, v10

    add-int/2addr v2, v10

    .line 849
    add-int/lit8 v10, v2, 0x8

    array-length v11, v3

    if-gt v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x0

    aget-byte v10, v3, v10

    const/16 v11, 0x39

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v3, v10

    const/16 v11, -0x45

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, v3, v10

    const/16 v11, -0x54

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, v3, v10

    const/16 v11, 0x6e

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, v3, v10

    const/16 v11, -0x2e

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x5

    aget-byte v10, v3, v10

    const/16 v11, 0x62

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x6

    aget-byte v10, v3, v10

    const/16 v11, -0x1f

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, 0x7

    aget-byte v10, v3, v10

    const/16 v11, -0x71

    if-ne v10, v11, :cond_8

    .line 859
    add-int/lit8 v10, v2, 0x0

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 860
    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 861
    add-int/lit8 v10, v2, 0x2

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 862
    add-int/lit8 v10, v2, 0x3

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 863
    add-int/lit8 v10, v2, 0x4

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 864
    add-int/lit8 v10, v2, 0x5

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 865
    add-int/lit8 v10, v2, 0x6

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 866
    add-int/lit8 v10, v2, 0x7

    const/4 v11, 0x1

    aput-byte v11, v3, v10

    goto/16 :goto_a

    .line 877
    :cond_f
    array-length v10, v10

    add-int/2addr v2, v10

    .line 878
    add-int/lit8 v10, v2, 0x8

    array-length v11, v3

    if-gt v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x0

    aget-byte v10, v3, v10

    const/16 v11, -0x76

    if-ne v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, v3, v10

    const/16 v11, -0x17

    if-ne v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, v3, v10

    const/16 v11, -0x80

    if-ne v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, v3, v10

    const/16 v11, -0x13

    if-ne v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, v3, v10

    const/16 v11, -0x1a

    if-ne v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x5

    aget-byte v10, v3, v10

    const/16 v11, 0x63

    if-ne v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x6

    aget-byte v10, v3, v10

    const/16 v11, 0x29

    if-ne v10, v11, :cond_a

    add-int/lit8 v10, v2, 0x7

    aget-byte v10, v3, v10

    const/16 v11, 0xe

    if-ne v10, v11, :cond_a

    .line 888
    add-int/lit8 v10, v2, 0x0

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 889
    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 890
    add-int/lit8 v10, v2, 0x2

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 891
    add-int/lit8 v10, v2, 0x3

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 892
    add-int/lit8 v10, v2, 0x4

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 893
    add-int/lit8 v10, v2, 0x5

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 894
    add-int/lit8 v10, v2, 0x6

    const/4 v11, 0x0

    aput-byte v11, v3, v10

    .line 895
    add-int/lit8 v10, v2, 0x7

    const/4 v11, 0x1

    aput-byte v11, v3, v10

    goto/16 :goto_b

    .line 904
    :cond_10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 905
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 907
    const-string/jumbo v2, "tmp_tk_file"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 908
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 909
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_d

    .line 919
    :cond_11
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object v1, v0

    .line 923
    goto/16 :goto_1

    .line 920
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 910
    :catch_5
    move-exception v0

    goto/16 :goto_c

    .line 763
    :catch_6
    move-exception v0

    move-object v0, v3

    goto/16 :goto_5

    .line 734
    :catch_7
    move-exception v0

    goto/16 :goto_2
.end method

.method private static c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 930
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last update stample "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JJ)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 205
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start clear_da2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 209
    sget-object v1, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v3, "tk_file"

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_1

    .line 213
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 214
    if-nez v0, :cond_0

    .line 215
    const/4 v0, -0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    :goto_0
    monitor-exit p0

    return v0

    .line 217
    :cond_0
    :try_start_2
    const-string v3, "clear_da2 clear DA2 in file"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, p3, p4, v3}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->put_da2(J[B)I

    .line 219
    const-string/jumbo v0, "tk_file"

    invoke-virtual {p0, v2, v0}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    move-result v0

    .line 220
    iput-object v2, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    .line 222
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end clear_da2 ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized a(JJJJ[B[B)I
    .locals 11

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loicq/wlogin_sdk/request/WloginAllSigInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    if-nez v1, :cond_1

    .line 306
    const/4 v0, -0x1

    .line 321
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 308
    :try_start_1
    invoke-virtual/range {v1 .. v9}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->put_siginfo(JJJ[B[B)I

    move-result v0

    .line 311
    iget-object v2, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 312
    sget-object v3, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    :try_start_2
    iget-object v2, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v4, "tk_file"

    invoke-static {v2, v4}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v2

    .line 314
    if-nez v2, :cond_2

    .line 315
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 316
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->get_clone()Loicq/wlogin_sdk/request/WloginAllSigInfo;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v1, "tk_file"

    invoke-virtual {p0, v2, v1}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    .line 318
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JJ[B)I
    .locals 7

    .prologue
    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    if-nez v0, :cond_0

    .line 264
    const/4 v0, -0x1

    .line 297
    :goto_0
    monitor-exit p0

    return v0

    .line 267
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [B

    .line 269
    iget-object v1, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 270
    if-eqz v1, :cond_4

    .line 271
    iget-object v3, v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    if-eqz v3, :cond_4

    .line 272
    iget-object v1, v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, v1

    .line 275
    :goto_1
    invoke-virtual {v0, p3, p4, p5}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->put_randseed(J[B)I

    move-result v1

    .line 278
    iget-object v2, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 279
    sget-object v4, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    :try_start_2
    iget-object v2, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v5, "tk_file"

    invoke-static {v2, v5}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_2

    .line 283
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->get_clone()Loicq/wlogin_sdk/request/WloginAllSigInfo;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "tk_file"

    invoke-virtual {p0, v2, v1}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    move-result v2

    .line 287
    if-eqz v2, :cond_1

    .line 288
    iget-object v0, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 289
    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    :cond_1
    move v0, v2

    .line 294
    :goto_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move-object v3, v2

    goto :goto_1
.end method

.method public declared-synchronized a(JJ[[BJJJJJ[B[B[B[B[[B[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)I
    .locals 37

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    const-string v2, "start put_siginfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v3, :cond_a

    .line 78
    sget-object v35, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    monitor-enter v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    const-string v2, "put_siginfo load file"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v3, "tk_file"

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v2

    .line 81
    if-nez v2, :cond_e

    .line 82
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v34, v2

    .line 85
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 86
    if-nez v2, :cond_0

    .line 87
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 88
    if-nez v2, :cond_0

    .line 89
    new-instance v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/WloginAllSigInfo;-><init>()V

    .line 92
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mainSigMap 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/d;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/d;->e:I

    iput v3, v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;->mainSigMap:I

    .line 96
    const/4 v3, 0x0

    new-array v12, v3, [B

    .line 97
    const/4 v3, 0x0

    new-array v11, v3, [B

    .line 98
    const/4 v3, 0x0

    new-array v9, v3, [B

    .line 99
    const/4 v3, 0x0

    new-array v8, v3, [B

    .line 100
    const/4 v3, 0x0

    new-array v7, v3, [B

    .line 101
    const/4 v3, 0x0

    new-array v6, v3, [B

    .line 102
    const/4 v3, 0x0

    new-array v4, v3, [B

    .line 104
    iget-object v3, v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 105
    if-eqz v3, :cond_d

    .line 106
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 108
    iget-object v5, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    if-eqz v5, :cond_c

    .line 109
    iget-object v5, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v11, v5

    move-object v12, v4

    .line 112
    :cond_1
    :goto_1
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v9, v4

    .line 114
    :cond_2
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    if-eqz v4, :cond_3

    .line 115
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v8, v4

    .line 116
    :cond_3
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    if-eqz v4, :cond_b

    .line 117
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v6, v4

    .line 118
    :goto_2
    iget-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    .line 119
    iget-object v3, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    move-object v5, v3

    move-object v10, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    .line 122
    :goto_3
    const/4 v3, 0x6

    aget-object v3, p33, v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    aget-object v3, p33, v3

    array-length v3, v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_8

    .line 123
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 124
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 125
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 126
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 129
    move-wide/from16 v0, p10

    invoke-static {v10, v0, v1, v6, v7}, Loicq/wlogin_sdk/request/Ticket;->parsePsBuf([BJLjava/util/Map;Ljava/util/Map;)V

    .line 131
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 132
    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 136
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Loicq/wlogin_sdk/request/Ticket;->isPskeyExpired(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 138
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 198
    :catchall_0
    move-exception v2

    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 142
    :cond_5
    :try_start_3
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 143
    :cond_6
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 144
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 146
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 147
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Loicq/wlogin_sdk/request/Ticket;->isPt4TokenExpired(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 148
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 149
    invoke-interface {v8, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 153
    :cond_7
    move-wide/from16 v0, p10

    invoke-static {v5, v0, v1, v8, v9}, Loicq/wlogin_sdk/request/Ticket;->parsePsBuf([BJLjava/util/Map;Ljava/util/Map;)V

    .line 156
    const/4 v3, 0x6

    aget-object v3, p33, v3

    move-wide/from16 v4, p10

    invoke-static/range {v3 .. v9}, Loicq/wlogin_sdk/request/Ticket;->parseSvrPs([BJLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    const/4 v3, 0x6

    :try_start_4
    move-wide/from16 v0, p10

    invoke-static {v6, v0, v1, v7}, Loicq/wlogin_sdk/request/Ticket;->packPsBuf(Ljava/util/Map;JLjava/util/Map;)[B

    move-result-object v4

    aput-object v4, p33, v3

    .line 161
    const/16 v3, 0xc

    move-wide/from16 v0, p10

    invoke-static {v8, v0, v1, v9}, Loicq/wlogin_sdk/request/Ticket;->packPsBuf(Ljava/util/Map;JLjava/util/Map;)[B

    move-result-object v4

    aput-object v4, p33, v3
    :try_end_4
    .catch Ljava/nio/BufferOverflowException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move-object v3, v2

    move-wide/from16 v4, p1

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    move-object/from16 v10, p20

    .line 171
    :try_start_5
    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->put_simpleinfo(J[B[B[B[B[[B)I

    move-object v3, v2

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    move-wide/from16 v12, p14

    move-object/from16 v14, p21

    move-object/from16 v15, p22

    move-object/from16 v16, p23

    move-object/from16 v17, p24

    move-object/from16 v18, p25

    move-object/from16 v19, p26

    move-object/from16 v20, p27

    move-object/from16 v21, p28

    move-object/from16 v22, p29

    move-object/from16 v23, p30

    move-object/from16 v24, p31

    move-object/from16 v25, p32

    move-object/from16 v26, p33

    move-object/from16 v27, p34

    move/from16 v28, p35

    .line 172
    invoke-virtual/range {v3 .. v28}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->put_siginfo(JJJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)I

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p10

    .line 177
    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->put_siginfo(J[[BJ)I

    .line 180
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->get_clone()Loicq/wlogin_sdk/request/WloginAllSigInfo;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v3, "tk_file"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    move-result v5

    .line 185
    if-eqz v5, :cond_9

    .line 186
    iget-object v3, v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 187
    if-eqz v3, :cond_9

    .line 188
    invoke-virtual/range {v33 .. v33}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    .line 189
    invoke-virtual/range {v32 .. v32}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    .line 190
    invoke-virtual/range {v31 .. v31}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    .line 191
    invoke-virtual/range {v30 .. v30}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    .line 192
    invoke-virtual/range {v29 .. v29}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v3, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    .line 197
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Loicq/wlogin_sdk/request/WloginAllSigInfo;->get_clone()Loicq/wlogin_sdk/request/WloginAllSigInfo;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    monitor-exit v35
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v5

    .line 201
    :cond_a
    :goto_6
    monitor-exit p0

    return v2

    .line 162
    :catch_0
    move-exception v2

    .line 164
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is too large"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/d;->a(Ljava/lang/Long;)V

    .line 166
    const/16 v2, -0x3ff

    monitor-exit v35
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_b
    move-object v6, v7

    goto/16 :goto_2

    :cond_c
    move-object v12, v4

    goto/16 :goto_1

    :cond_d
    move-object v5, v4

    move-object v10, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    goto/16 :goto_3

    :cond_e
    move-object/from16 v34, v2

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/util/TreeMap;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 591
    monitor-enter p0

    const/4 v0, 0x0

    .line 592
    :try_start_0
    const-string/jumbo v1, "tk_file"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "name_file"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    :cond_0
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/d;->b(Ljava/util/TreeMap;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 596
    :cond_1
    monitor-exit p0

    return v0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Loicq/wlogin_sdk/sharemem/WloginLoginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v2, :cond_7

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v3, "tk_file"

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 530
    if-nez v16, :cond_0

    move-object v2, v14

    .line 569
    :goto_0
    monitor-exit p0

    return-object v2

    .line 533
    :cond_0
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 534
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 535
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object v13, v0

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-virtual {v2, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 539
    if-nez v2, :cond_2

    .line 541
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 542
    if-eqz v2, :cond_1

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-virtual {v3, v13, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v15, v2

    .line 549
    iget-object v2, v15, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 550
    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 552
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    move-object v6, v0

    .line 553
    iget-object v2, v15, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-object v12, v0

    .line 554
    if-eqz v12, :cond_3

    .line 556
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Loicq/wlogin_sdk/request/d;->b(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 557
    if-nez v3, :cond_4

    .line 558
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 560
    :cond_4
    iget-object v2, v15, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_useInfo:Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    iget-object v2, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_url:[B

    if-nez v2, :cond_5

    .line 561
    iget-object v2, v15, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_useInfo:Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    const/4 v4, 0x0

    new-array v4, v4, [B

    iput-object v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_url:[B

    .line 563
    :cond_5
    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/String;

    iget-object v9, v15, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_useInfo:Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    iget-object v9, v9, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_url:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    iget-wide v9, v12, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    if-eqz p1, :cond_6

    sget v11, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->TYPE_LOACL:I

    :goto_2
    iget v12, v12, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    invoke-direct/range {v2 .. v12}, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;JII)V

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 524
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 563
    :cond_6
    :try_start_2
    sget v11, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->TYPE_REMOTE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_7
    move-object v2, v14

    .line 569
    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Loicq/wlogin_sdk/request/UinInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 479
    monitor-enter p0

    .line 480
    if-eqz p2, :cond_0

    .line 481
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/UinInfo;

    .line 482
    if-eqz v0, :cond_0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mem got_account name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/UinInfo;->_uin:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/UinInfo;->getHasPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :goto_0
    monitor-exit p0

    return-object v0

    .line 488
    :cond_0
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 489
    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string v2, "name_file"

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    .line 492
    if-nez v0, :cond_2

    move-object v0, v1

    .line 493
    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/UinInfo;

    .line 496
    if-nez v0, :cond_3

    move-object v0, v1

    .line 497
    goto :goto_0

    .line 500
    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file got_account name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/UinInfo;->_uin:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/UinInfo;->getHasPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Loicq/wlogin_sdk/request/WloginAllSigInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 325
    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    const-string v1, "get_all_siginfo got in mem"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_0
    monitor-exit p0

    return-object v0

    .line 333
    :cond_0
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 334
    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v2, "tk_file"

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    .line 338
    if-nez v0, :cond_2

    move-object v0, v1

    .line 339
    goto :goto_0

    .line 343
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 344
    if-nez v0, :cond_3

    move-object v0, v1

    .line 345
    goto :goto_0

    .line 348
    :cond_3
    const-string v1, "got in file"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    const-string v0, "refresh_all_siginfo ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v1, "tk_file"

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    .line 359
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_0
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 399
    sget-object v1, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v2, "tk_file"

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    .line 402
    if-nez v0, :cond_1

    .line 403
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 405
    :cond_1
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v2, "tk_file"

    invoke-virtual {p0, v0, v2}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    .line 407
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 396
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear_sig uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 416
    if-eqz v0, :cond_0

    .line 417
    iget-object v0, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sig has been cleared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 421
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 422
    sget-object v1, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 424
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v2, "tk_file"

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v2

    .line 425
    if-nez v2, :cond_2

    .line 426
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    :cond_2
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;

    .line 429
    if-nez v0, :cond_3

    .line 430
    monitor-exit v1

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 413
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 432
    :cond_3
    :try_start_4
    iget-object v0, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v0, "tk_file"

    invoke-virtual {p0, v2, v0}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    .line 434
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 466
    sget-object v1, Loicq/wlogin_sdk/request/d;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 467
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string v2, "name_file"

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    .line 468
    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 471
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v2, "name_file"

    invoke-virtual {p0, v0, v2}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    .line 473
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :cond_1
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 5

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0, p2}, Loicq/wlogin_sdk/request/d;->b(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_0

    .line 443
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_0
    new-instance v2, Loicq/wlogin_sdk/request/UinInfo;

    invoke-direct {v2, p2, p3}, Loicq/wlogin_sdk/request/UinInfo;-><init>(Ljava/lang/Long;Z)V

    .line 446
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 449
    sget-object v3, Loicq/wlogin_sdk/request/d;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 450
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string v4, "name_file"

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    .line 451
    if-nez v0, :cond_1

    .line 452
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 454
    :cond_1
    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_2
    invoke-virtual {v0, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v1, "name_file"

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    .line 458
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :cond_3
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 440
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/util/TreeMap;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 600
    monitor-enter p0

    .line 605
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 606
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 607
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 608
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 611
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 612
    const/4 v3, 0x0

    array-length v4, v0

    sget-object v5, Loicq/wlogin_sdk/request/u;->B:[B

    invoke-static {v0, v3, v4, v5}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    .line 614
    iget-object v3, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    invoke-static {v3, p2, v0}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;[B)I

    move-result v0

    .line 616
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 617
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :goto_0
    monitor-exit p0

    return v0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTKTreeMap failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    const/16 v0, -0x3fe

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 512
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    iget-object v1, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loicq/wlogin_sdk/request/UinInfo;

    .line 515
    if-eqz v1, :cond_0

    .line 517
    iget-object v1, v1, Loicq/wlogin_sdk/request/UinInfo;->_uin:Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;
    .locals 3

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    const-string v0, "get_simpleinfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/d;->a(J)Loicq/wlogin_sdk/request/WloginAllSigInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 387
    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 390
    :goto_0
    monitor-exit p0

    return-object v0

    .line 389
    :cond_0
    :try_start_1
    iget-object v0, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_useInfo:Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-virtual {v0}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->get_clone()Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(JJ)V
    .locals 5

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear_pskey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    :try_start_1
    iget-object v1, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 237
    if-eqz v1, :cond_0

    .line 239
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    .line 240
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    .line 241
    const/4 v2, 0x0

    iput-object v2, v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    .line 242
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheUpdateStamp:J

    .line 244
    iget-object v2, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 248
    sget-object v1, Loicq/wlogin_sdk/request/d;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    :try_start_2
    iget-object v2, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string/jumbo v3, "tk_file"

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_2

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v0, "tk_file"

    invoke-virtual {p0, v2, v0}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    .line 254
    iput-object v2, p0, Loicq/wlogin_sdk/request/d;->c:Ljava/util/TreeMap;

    .line 256
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear_account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 578
    sget-object v1, Loicq/wlogin_sdk/request/d;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/d;->a:Landroid/content/Context;

    const-string v2, "name_file"

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    .line 581
    if-nez v0, :cond_1

    .line 582
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 584
    :cond_1
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v2, "name_file"

    invoke-virtual {p0, v0, v2}, Loicq/wlogin_sdk/request/d;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    .line 586
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 575
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 365
    monitor-enter p0

    .line 368
    :try_start_0
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/d;->a(J)Loicq/wlogin_sdk/request/WloginAllSigInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 369
    if-nez v0, :cond_0

    move-object v0, v1

    .line 377
    :goto_0
    monitor-exit p0

    return-object v0

    .line 371
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_siginfo get WloginAllSigInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, v0, Loicq/wlogin_sdk/request/WloginAllSigInfo;->_tk_map:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 374
    if-nez v0, :cond_1

    move-object v0, v1

    .line 375
    goto :goto_0

    .line 376
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_siginfo get WloginSigInfo sdkappid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
