.class public final Lcom/tencent/bugly/msdk/crashreport/crash/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/bugly/msdk/proguard/u;

.field private d:Lcom/tencent/bugly/msdk/proguard/p;

.field private e:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

.field private f:Lcom/tencent/bugly/msdk/proguard/o;

.field private g:Lcom/tencent/bugly/msdk/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/msdk/proguard/u;Lcom/tencent/bugly/msdk/proguard/p;Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;Lcom/tencent/bugly/msdk/BuglyStrategy$a;Lcom/tencent/bugly/msdk/proguard/o;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sput p1, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a:I

    .line 85
    iput-object p2, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    .line 87
    iput-object p4, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->d:Lcom/tencent/bugly/msdk/proguard/p;

    .line 88
    iput-object p5, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->e:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    .line 89
    iput-object p6, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->g:Lcom/tencent/bugly/msdk/BuglyStrategy$a;

    .line 90
    iput-object p7, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    .line 91
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 711
    if-nez p0, :cond_1

    move-object v0, v1

    .line 730
    :cond_0
    :goto_0
    return-object v0

    .line 715
    :cond_1
    :try_start_0
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 716
    if-nez v0, :cond_2

    move-object v0, v1

    .line 717
    goto :goto_0

    .line 719
    :cond_2
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 720
    sget-object v4, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/msdk/proguard/z;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    .line 721
    if-eqz v0, :cond_0

    .line 722
    iput-wide v2, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 727
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 730
    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/a;",
            ">;",
            "Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;",
            ")",
            "Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 124
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v1, p2

    .line 194
    :cond_1
    :goto_0
    return-object v1

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 133
    iget-boolean v5, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->e:Z

    if-eqz v5, :cond_3

    .line 134
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 140
    invoke-direct {p0, v2}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 141
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 142
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v3

    .line 143
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 144
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    .line 145
    if-nez v2, :cond_5

    .line 143
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_2

    .line 149
    :cond_5
    iget-object v5, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 150
    iget-object v0, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 155
    if-eqz v5, :cond_b

    .line 156
    array-length v6, v5

    move v0, v3

    :goto_4
    if-ge v0, v6, :cond_b

    aget-object v7, v5, v0

    .line 160
    iget-object v8, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 161
    iget v8, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    .line 159
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 170
    :goto_5
    if-nez v0, :cond_a

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    .line 174
    iput v3, p2, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    .line 175
    const-string v0, ""

    iput-object v0, p2, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    move-object v1, p2

    .line 179
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 180
    iget-boolean v3, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->e:Z

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->d:Z

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 182
    iget v3, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto :goto_7

    .line 187
    :cond_9
    iget-wide v2, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v4, p2, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p2, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget v0, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/msdk/proguard/aj;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1333
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 1334
    :cond_0
    const-string v1, "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1382
    :cond_1
    :goto_0
    return-object v0

    .line 1339
    :cond_2
    const-string/jumbo v1, "zip %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1340
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1341
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1343
    const/16 v2, 0x1388

    invoke-static {v1, v3, v2}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1344
    const-string/jumbo v1, "zip fail!"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1348
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1351
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 1354
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    .line 1355
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1356
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1364
    :catch_0
    move-exception v1

    .line 1365
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1366
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1370
    :cond_4
    if-eqz v2, :cond_5

    .line 1372
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1380
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1381
    const-string v1, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1382
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1358
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1359
    const-string v1, "read bytes :%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1361
    new-instance v1, Lcom/tencent/bugly/msdk/proguard/aj;

    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1370
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1380
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1381
    const-string v0, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1382
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    .line 1373
    :catch_1
    move-exception v0

    .line 1374
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1373
    :catch_2
    move-exception v1

    .line 1374
    invoke-static {v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1375
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1370
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_5
    if-eqz v2, :cond_9

    .line 1372
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1380
    :cond_9
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1381
    const-string v0, "del tmp"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1382
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    throw v1

    .line 1373
    :catch_3
    move-exception v0

    .line 1374
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1370
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .line 1364
    :catch_4
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/msdk/crashreport/common/info/a;)Lcom/tencent/bugly/msdk/proguard/ak;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 960
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 961
    :cond_0
    const-string v0, "enExp args == null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1306
    :goto_0
    return-object v0

    .line 964
    :cond_1
    new-instance v4, Lcom/tencent/bugly/msdk/proguard/ak;

    invoke-direct {v4}, Lcom/tencent/bugly/msdk/proguard/ak;-><init>()V

    .line 965
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v0, :pswitch_data_0

    .line 1004
    const-string v0, "crash type error! %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1008
    :goto_1
    iget-wide v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->b:J

    .line 1009
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->c:Ljava/lang/String;

    .line 1010
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->d:Ljava/lang/String;

    .line 1011
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->e:Ljava/lang/String;

    .line 1012
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->g:Ljava/lang/String;

    .line 1013
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->h:Ljava/util/Map;

    .line 1014
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->i:Ljava/lang/String;

    .line 1015
    iput-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->j:Lcom/tencent/bugly/msdk/proguard/ai;

    .line 1016
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->l:Ljava/lang/String;

    .line 1017
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->m:Ljava/lang/String;

    .line 1018
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->f:Ljava/lang/String;

    .line 1019
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->b()Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->t:Ljava/lang/String;

    .line 1021
    iput-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->n:Lcom/tencent/bugly/msdk/proguard/ah;

    .line 1022
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->o:Ljava/util/ArrayList;

    .line 1024
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1025
    new-instance v7, Lcom/tencent/bugly/msdk/proguard/ah;

    invoke-direct {v7}, Lcom/tencent/bugly/msdk/proguard/ah;-><init>()V

    .line 1026
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/msdk/proguard/ah;->a:Ljava/lang/String;

    .line 1027
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/msdk/proguard/ah;->c:Ljava/lang/String;

    .line 1028
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/msdk/proguard/ah;->d:Ljava/lang/String;

    .line 1029
    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/bugly/msdk/proguard/ah;->b:Ljava/lang/String;

    .line 1030
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 967
    :pswitch_0
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "203"

    :goto_3
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v0, "103"

    goto :goto_3

    .line 971
    :pswitch_1
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "208"

    :goto_4
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v0, "108"

    goto :goto_4

    .line 976
    :pswitch_2
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "200"

    :goto_5
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v0, "100"

    goto :goto_5

    .line 980
    :pswitch_3
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_5

    const-string v0, "201"

    :goto_6
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v0, "101"

    goto :goto_6

    .line 985
    :pswitch_4
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_6

    const-string v0, "202"

    :goto_7
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v0, "102"

    goto :goto_7

    .line 990
    :pswitch_5
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_7

    const-string v0, "204"

    :goto_8
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v0, "104"

    goto :goto_8

    .line 994
    :pswitch_6
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_8

    const-string v0, "206"

    :goto_9
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v0, "106"

    goto :goto_9

    .line 999
    :pswitch_7
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_9

    const-string v0, "207"

    :goto_a
    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v0, "107"

    goto :goto_a

    .line 1034
    :cond_a
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->p:Ljava/util/ArrayList;

    .line 1036
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1037
    new-instance v7, Lcom/tencent/bugly/msdk/proguard/ah;

    invoke-direct {v7}, Lcom/tencent/bugly/msdk/proguard/ah;-><init>()V

    .line 1038
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/msdk/proguard/ah;->a:Ljava/lang/String;

    .line 1039
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;

    iget-object v1, v1, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v1, v7, Lcom/tencent/bugly/msdk/proguard/ah;->c:Ljava/lang/String;

    .line 1040
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;

    iget-object v0, v0, Lcom/tencent/bugly/msdk/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/msdk/proguard/ah;->d:Ljava/lang/String;

    .line 1041
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1046
    :cond_b
    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_e

    .line 1047
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    iput v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->k:I

    .line 1048
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 1049
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1054
    :cond_c
    :try_start_0
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/msdk/proguard/aj;

    const/4 v6, 0x1

    const-string v7, "alltimes.txt"

    iget-object v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :cond_d
    :goto_c
    const-string v1, "crashcount:%d sz:%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1, v6}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1066
    :cond_e
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1067
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1071
    :cond_f
    :try_start_1
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/msdk/proguard/aj;

    const/4 v6, 0x1

    const-string v7, "log.txt"

    iget-object v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1079
    :cond_10
    :goto_e
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 1080
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1084
    :cond_11
    :try_start_2
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/msdk/proguard/aj;

    const/4 v6, 0x1

    const-string v7, "jniLog.txt"

    iget-object v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1093
    :cond_12
    :goto_f
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1094
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    .line 1095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1099
    :cond_13
    :try_start_3
    new-instance v0, Lcom/tencent/bugly/msdk/proguard/aj;

    const/4 v1, 0x1

    const-string v6, "crashInfos.txt"

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    const-string/jumbo v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1104
    :goto_10
    if-eqz v0, :cond_14

    .line 1105
    const-string v1, "attach crash infos"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1106
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_14
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1112
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1115
    :cond_15
    const-string v0, "backupRecord.zip"

    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/msdk/proguard/aj;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_16

    .line 1118
    const-string v1, "attach backup record"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1119
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_16
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->y:[B

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->y:[B

    array-length v0, v0

    if-lez v0, :cond_18

    .line 1126
    new-instance v0, Lcom/tencent/bugly/msdk/proguard/aj;

    const-string v1, "buglylog.zip"

    iget-object v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->y:[B

    invoke-direct {v0, v10, v1, v6}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V

    .line 1128
    const-string v1, "attach user log"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1130
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_17

    .line 1131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1133
    :cond_17
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_18
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v11, :cond_1b

    .line 1138
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1142
    :cond_19
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1146
    :try_start_4
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/bugly/msdk/proguard/aj;

    const/4 v7, 0x1

    const-string v8, "anrMessage.txt"

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v9, "BUGLY_CR_01"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v7, v8, v0}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    const-string v0, "attach anr message"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1156
    :goto_11
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v1, "BUGLY_CR_01"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_1a
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 1161
    const-string/jumbo v0, "trace.zip"

    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/msdk/proguard/aj;

    move-result-object v0

    .line 1163
    if-eqz v0, :cond_1b

    .line 1164
    const-string v1, "attach traces"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1165
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_1b
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_1d

    .line 1171
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1175
    :cond_1c
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1176
    const-string/jumbo v0, "tomb.zip"

    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/msdk/proguard/aj;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_1d

    .line 1179
    const-string v1, "attach tombs"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1180
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_1d
    iget-object v0, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->C:Ljava/util/List;

    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1186
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1189
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    iget-object v0, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1058
    iput-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    goto/16 :goto_c

    :cond_1f
    move v0, v2

    .line 1062
    goto/16 :goto_d

    .line 1073
    :catch_1
    move-exception v0

    .line 1074
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1075
    iput-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    goto/16 :goto_e

    .line 1086
    :catch_2
    move-exception v0

    .line 1087
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1088
    iput-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    goto/16 :goto_f

    .line 1101
    :catch_3
    move-exception v0

    .line 1102
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v5

    goto/16 :goto_10

    .line 1152
    :catch_4
    move-exception v0

    .line 1153
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1154
    iput-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    goto/16 :goto_11

    .line 1194
    :cond_20
    :try_start_5
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v6, Lcom/tencent/bugly/msdk/proguard/aj;

    const/4 v7, 0x1

    const-string v8, "martianlog.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "utf-8"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    const-string v0, "attach pageTracingList"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1202
    :cond_21
    :goto_13
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->T:[B

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->T:[B

    array-length v0, v0

    if-lez v0, :cond_23

    .line 1203
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    .line 1207
    :cond_22
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/bugly/msdk/proguard/aj;

    const-string/jumbo v6, "userExtraByteData"

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->T:[B

    invoke-direct {v1, v3, v6, v7}, Lcom/tencent/bugly/msdk/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    const-string v0, "attach extraData"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1212
    :cond_23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    .line 1213
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A11"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A23"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A6"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A22"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A24"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A17"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->H:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A16"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A25"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A14"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A15"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A13"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A34"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    iget-object v0, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->x:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 1234
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "productIdentify"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->x:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    :cond_24
    :try_start_6
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    const-string/jumbo v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1243
    :goto_14
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v3, :cond_25

    .line 1244
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A27"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A28"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A29"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_25
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A30"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "A18"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->M:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    iget-object v1, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v6, "A36"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->N:Z

    if-nez v0, :cond_28

    move v0, v3

    :goto_15
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->q:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F03"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->r:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F04"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F05"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->s:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F06"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->p:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F08"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F09"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "F10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->t:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->P:I

    if-ltz v0, :cond_26

    .line 1274
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "C01"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->P:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    :cond_26
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->Q:I

    if-ltz v0, :cond_27

    .line 1278
    iget-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    const-string v1, "C02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->Q:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    :cond_27
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1282
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1283
    iget-object v7, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v1, "C03_"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 1197
    :catch_5
    move-exception v0

    .line 1198
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_13

    .line 1240
    :catch_6
    move-exception v0

    .line 1241
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_14

    :cond_28
    move v0, v2

    .line 1252
    goto/16 :goto_15

    .line 1287
    :cond_29
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1288
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1289
    iget-object v7, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v1, "C04_"

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 1295
    :cond_2a
    iput-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->s:Ljava/util/Map;

    .line 1296
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 1297
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    iput-object v0, v4, Lcom/tencent/bugly/msdk/proguard/ak;->s:Ljava/util/Map;

    .line 1298
    const-string v0, "setted message size %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/tencent/bugly/msdk/proguard/ak;->s:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1300
    :cond_2b
    const-string v0, "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v5, v1, v2

    iget-object v5, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-virtual {p2}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    iget-wide v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v8, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->M:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v11

    const/4 v5, 0x4

    iget-boolean v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->k:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-boolean v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->N:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x6

    iget-boolean v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x7

    iget v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    if-ne v6, v3, :cond_2c

    :goto_18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x8

    iget v3, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, v4, Lcom/tencent/bugly/msdk/proguard/ak;->r:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    .line 1306
    goto/16 :goto_0

    :cond_2c
    move v3, v2

    .line 1300
    goto :goto_18

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 104
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 107
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 109
    iget-boolean v5, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->d:Z

    if-eqz v5, :cond_2

    iget-wide v6, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->b:J

    const-wide/32 v8, 0x5265c00

    sub-long v8, v2, v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 111
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 114
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1484
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->b()Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v0

    .line 1485
    if-nez v0, :cond_0

    .line 1519
    :goto_0
    return-void

    .line 1488
    :cond_0
    const-string v1, "#++++++++++Record By Bugly++++++++++#"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1489
    const-string v1, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1490
    const-string v1, "# PKG NAME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1491
    const-string v1, "# APP VER: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->j:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1492
    const-string v1, "# LAUNCH TIME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->b()Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->a:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1494
    const-string v1, "# CRASH TYPE: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1495
    const-string v1, "# CRASH TIME: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1496
    const-string v1, "# CRASH PROCESS: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1497
    const-string v1, "# CRASH THREAD: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1498
    if-eqz p5, :cond_1

    .line 1499
    const-string v1, "# REPORT ID: %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1500
    const-string v1, "# CRASH DEVICE: %s %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->g:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->x()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ROOTED"

    :goto_1
    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1502
    const-string v0, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1504
    const-string v0, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->G:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    iget-wide v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->H:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1506
    iget-object v0, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1507
    const-string v0, "# EXCEPTION FIRED BY %s %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1514
    :cond_1
    :goto_2
    invoke-static {p4}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1515
    const-string v0, "# CRASH STACK: "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1516
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1518
    :cond_2
    const-string v0, "#++++++++++++++++++++++++++++++++++++++++++#"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1500
    :cond_3
    const-string v0, "UNROOT"

    goto :goto_1

    .line 1509
    :cond_4
    iget v0, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v9, :cond_1

    .line 1510
    const-string v1, "# EXCEPTION ANR MESSAGE:\n %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v0, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-nez v0, :cond_5

    const-string v0, "null"

    :goto_3
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p5, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v4, "BUGLY_CR_01"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(ZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 524
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 525
    const-string/jumbo v0, "up finish update state %b"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    .line 529
    const-string v2, "pre uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 532
    iget v2, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->l:I

    .line 533
    iput-boolean p0, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->d:Z

    .line 534
    const-string v2, "set uid:%s uc:%d re:%b me:%b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-boolean v0, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    .line 538
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/crash/c;->a()Lcom/tencent/bugly/msdk/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/msdk/crashreport/crash/c;->a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V

    goto :goto_1

    .line 540
    :cond_1
    const-string/jumbo v0, "update state size %d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 542
    :cond_2
    if-nez p0, :cond_3

    .line 543
    const-string v0, "[crash] upload fail."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 545
    :cond_3
    return-void
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/msdk/crashreport/crash/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 822
    if-nez p0, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-object v0

    .line 827
    :cond_1
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    invoke-direct {v1}, Lcom/tencent/bugly/msdk/crashreport/crash/a;-><init>()V

    .line 828
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/msdk/crashreport/crash/a;->a:J

    .line 829
    const-string v4, "_tm"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tencent/bugly/msdk/crashreport/crash/a;->b:J

    .line 830
    const-string v4, "_s1"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/bugly/msdk/crashreport/crash/a;->c:Ljava/lang/String;

    .line 831
    const-string v4, "_up"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    :goto_1
    iput-boolean v4, v1, Lcom/tencent/bugly/msdk/crashreport/crash/a;->d:Z

    .line 833
    const-string v4, "_me"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    iput-boolean v2, v1, Lcom/tencent/bugly/msdk/crashreport/crash/a;->e:Z

    .line 835
    const-string v2, "_uc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/msdk/crashreport/crash/a;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 836
    goto :goto_0

    :cond_2
    move v4, v3

    .line 831
    goto :goto_1

    :cond_3
    move v2, v3

    .line 833
    goto :goto_2

    .line 837
    :catch_0
    move-exception v1

    .line 838
    invoke-static {v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 839
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 849
    .line 850
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 852
    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_tm"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_s1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_up"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_me"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "_uc"

    aput-object v1, v2, v0

    .line 854
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v0

    const-string/jumbo v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/o;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 856
    if-nez v6, :cond_1

    .line 857
    if-eqz v6, :cond_0

    .line 890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    .line 894
    :goto_0
    return-object v0

    .line 859
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 861
    invoke-static {v6}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/msdk/crashreport/crash/a;

    move-result-object v1

    .line 862
    if-eqz v1, :cond_4

    .line 863
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 884
    :catch_0
    move-exception v0

    move-object v7, v6

    .line 885
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 886
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 889
    :cond_2
    if-eqz v7, :cond_3

    .line 890
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v8

    .line 894
    goto :goto_0

    .line 867
    :cond_4
    :try_start_3
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 868
    const-string v1, " or _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 870
    :catch_1
    move-exception v1

    :try_start_4
    const-string/jumbo v1, "unknown id!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 889
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    .line 890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 876
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 878
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v0

    const-string/jumbo v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/o;Z)I

    move-result v0

    .line 881
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 889
    :cond_7
    if-eqz v6, :cond_8

    .line 890
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v8

    goto/16 :goto_0

    .line 889
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v7

    goto :goto_3

    .line 884
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 757
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 815
    :goto_0
    return-object v0

    .line 761
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 763
    const-string v2, " or _id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 766
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 767
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 768
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 770
    :cond_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 774
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v0

    const-string/jumbo v1, "t_cr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/o;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 776
    if-nez v8, :cond_5

    .line 777
    if-eqz v8, :cond_4

    .line 811
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    goto :goto_0

    .line 780
    :cond_5
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 781
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 782
    invoke-static {v8}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_8

    .line 784
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 805
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 806
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 807
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 810
    :cond_6
    if-eqz v1, :cond_7

    .line 811
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v7

    .line 815
    goto :goto_0

    .line 788
    :cond_8
    :try_start_3
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 789
    const-string v2, " or _id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 791
    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v0, "unknown id!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 810
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_9

    .line 811
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 797
    :cond_a
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 799
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 800
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v0

    const-string/jumbo v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/o;Z)I

    move-result v0

    .line 802
    const-string v1, "deleted %s illegle data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 810
    :cond_b
    if-eqz v8, :cond_c

    .line 811
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v0, v6

    goto/16 :goto_0

    .line 810
    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 805
    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method private static c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 901
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 907
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 910
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 911
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 912
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 914
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 916
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v0

    const-string/jumbo v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/o;Z)I

    move-result v0

    .line 918
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    .line 937
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 948
    :catch_0
    move-exception v0

    .line 949
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 940
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 941
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 942
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 945
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v0

    const-string/jumbo v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/o;Z)I

    move-result v0

    .line 947
    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "t_cr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static e(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 683
    if-nez p0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-object v0

    .line 688
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 689
    iget-wide v4, p0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 690
    const-string v4, "_id"

    iget-wide v6, p0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 692
    :cond_2
    const-string v4, "_tm"

    iget-wide v6, p0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 693
    const-string v4, "_s1"

    iget-object v5, p0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v5, "_up"

    iget-boolean v4, p0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->d:Z

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string v4, "_me"

    iget-boolean v5, p0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    const-string v2, "_uc"

    iget v3, p0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v2, "_dt"

    invoke-static {p0}, Lcom/tencent/bugly/msdk/proguard/z;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 698
    goto :goto_0

    :cond_3
    move v4, v3

    .line 694
    goto :goto_1

    :cond_4
    move v2, v3

    .line 695
    goto :goto_2

    .line 699
    :catch_0
    move-exception v1

    .line 700
    invoke-static {v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v12, 0x5265c00

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 320
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    .line 321
    if-nez v1, :cond_1

    .line 322
    const-string v1, "have not synced remote!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 401
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    iget-boolean v1, v1, Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v1, :cond_2

    .line 327
    const-string v1, "Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 330
    const-string v1, "[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 337
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/z;->b()J

    move-result-wide v4

    .line 339
    invoke-direct {p0}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 346
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 350
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 352
    iget-wide v8, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->b:J

    sget-wide v10, Lcom/tencent/bugly/msdk/crashreport/crash/c;->g:J

    sub-long v10, v4, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 354
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 355
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    :cond_4
    iget-boolean v8, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->d:Z

    if-eqz v8, :cond_6

    .line 360
    iget-wide v8, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->b:J

    sub-long v10, v2, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 362
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 364
    :cond_5
    iget-boolean v8, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->e:Z

    if-nez v8, :cond_3

    .line 366
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 367
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    :cond_6
    iget v8, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->f:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    iget-wide v8, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->b:J

    sub-long v10, v2, v12

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 372
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 373
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 377
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 378
    invoke-static {v6}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 382
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    invoke-direct {p0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 384
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 386
    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->b()Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 388
    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 389
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    .line 390
    iget-object v5, v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 391
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 392
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 397
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 398
    invoke-static {v2}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->d(Ljava/util/List;)V

    :cond_b
    move-object v0, v1

    .line 401
    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;JZ)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 423
    sget-boolean v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->l:Z

    if-eqz v0, :cond_1

    .line 424
    const-string/jumbo v0, "try to upload right now"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    const-wide/16 v2, 0xbb8

    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    move-object v0, p0

    move v4, p4

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V

    .line 432
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;JZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;",
            ">;JZZZ)V"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->e:Z

    if-nez v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    if-eqz v0, :cond_0

    .line 452
    if-nez p6, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    sget v1, Lcom/tencent/bugly/msdk/crashreport/crash/c;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/msdk/proguard/u;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->e:Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/msdk/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    .line 457
    iget-boolean v1, v0, Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;->g:Z

    if-nez v1, :cond_3

    .line 458
    const-string v0, "remote report is disable!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 459
    const-string v0, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    iget-boolean v1, v1, Lcom/tencent/bugly/msdk/proguard/u;->a:Z

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    .line 469
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    iget-boolean v0, v0, Lcom/tencent/bugly/msdk/proguard/u;->a:Z

    if-eqz v0, :cond_6

    sget-object v4, Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    .line 471
    :goto_2
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    iget-boolean v0, v0, Lcom/tencent/bugly/msdk/proguard/u;->a:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x33e

    move v2, v0

    .line 474
    :goto_3
    iget-object v5, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/msdk/crashreport/common/info/a;->b()Lcom/tencent/bugly/msdk/crashreport/common/info/a;

    move-result-object v6

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    if-nez v6, :cond_8

    :cond_4
    const-string v0, "enEXPPkg args == null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 476
    :goto_4
    if-nez v0, :cond_a

    .line 477
    const-string v0, "create eupPkg fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    const-string v1, "req cr error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 510
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 468
    :cond_5
    :try_start_1
    iget-object v3, v0, Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    goto :goto_1

    .line 469
    :cond_6
    sget-object v4, Lcom/tencent/bugly/msdk/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    goto :goto_2

    .line 471
    :cond_7
    const/16 v0, 0x276

    move v2, v0

    goto :goto_3

    .line 474
    :cond_8
    new-instance v1, Lcom/tencent/bugly/msdk/proguard/al;

    invoke-direct {v1}, Lcom/tencent/bugly/msdk/proguard/al;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/msdk/proguard/al;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    iget-object v8, v1, Lcom/tencent/bugly/msdk/proguard/al;->a:Ljava/util/ArrayList;

    invoke-static {v5, v0, v6}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Landroid/content/Context;Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/msdk/crashreport/common/info/a;)Lcom/tencent/bugly/msdk/proguard/ak;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto :goto_4

    .line 480
    :cond_a
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/a;->a(Lcom/tencent/bugly/msdk/proguard/k;)[B

    move-result-object v0

    .line 481
    if-nez v0, :cond_b

    .line 482
    const-string v0, "send encode fail!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 485
    :cond_b
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/tencent/bugly/msdk/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/msdk/proguard/am;

    move-result-object v2

    .line 486
    if-nez v2, :cond_c

    .line 487
    const-string v0, "request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 490
    :cond_c
    new-instance v5, Lcom/tencent/bugly/msdk/crashreport/crash/b$1;

    invoke-direct {v5, p0, p1}, Lcom/tencent/bugly/msdk/crashreport/crash/b$1;-><init>(Lcom/tencent/bugly/msdk/crashreport/crash/b;Ljava/util/List;)V

    .line 502
    if-eqz p4, :cond_d

    .line 503
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    sget v1, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a:I

    move-wide v6, p2

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/bugly/msdk/proguard/u;->a(ILcom/tencent/bugly/msdk/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/t;JZ)V

    goto/16 :goto_0

    .line 506
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c:Lcom/tencent/bugly/msdk/proguard/u;

    sget v1, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/msdk/proguard/u;->a(ILcom/tencent/bugly/msdk/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/msdk/proguard/t;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)Z
    .locals 1

    .prologue
    .line 198
    const v0, -0x75bcd15

    invoke-virtual {p0, p1, v0}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;I)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;I)Z
    .locals 10

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 311
    :goto_0
    return v3

    .line 210
    :cond_0
    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    const-string v0, "Crash filter for crash stack is: %s"

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/msdk/crashreport/crash/c;->n:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/msdk/crashreport/crash/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string v0, "This crash contains the filter string set. It will not be record and upload."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    const-string v0, "Crash regular filter for crash stack is: %s"

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/msdk/crashreport/crash/c;->o:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 222
    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const-string v0, "This crash matches the regular filter string set. It will not be record and upload."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_2
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    .line 229
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 232
    iget-wide v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    .line 234
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 235
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 236
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-interface {v0}, Lcom/tencent/bugly/msdk/proguard/o;->c()Z

    move-result v0

    .line 241
    if-nez v0, :cond_3

    .line 242
    const-string v0, "Crash listener \'onCrashSaving\' return \'false\' thus will not handle this crash."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_3
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 250
    new-instance v0, Lcom/tencent/bugly/msdk/proguard/r;

    invoke-direct {v0}, Lcom/tencent/bugly/msdk/proguard/r;-><init>()V

    .line 251
    iput v3, v0, Lcom/tencent/bugly/msdk/proguard/r;->b:I

    .line 252
    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/msdk/proguard/r;->c:Ljava/lang/String;

    .line 253
    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/msdk/proguard/r;->d:Ljava/lang/String;

    .line 254
    iget-wide v4, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v4, v0, Lcom/tencent/bugly/msdk/proguard/r;->e:J

    .line 256
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->d:Lcom/tencent/bugly/msdk/proguard/p;

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/msdk/proguard/p;->b(I)V

    .line 257
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->d:Lcom/tencent/bugly/msdk/proguard/p;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/msdk/proguard/p;->a(Lcom/tencent/bugly/msdk/proguard/r;)Z

    .line 258
    const-string v0, "[crash] a crash occur, handling..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 263
    :goto_1
    invoke-direct {p0}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    .line 264
    const/4 v0, 0x0

    .line 265
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 266
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    invoke-static {v1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 273
    sget-boolean v0, Lcom/tencent/bugly/msdk/b;->c:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/tencent/bugly/msdk/crashreport/crash/c;->d:Z

    if-eqz v0, :cond_b

    .line 277
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 278
    iget-object v7, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object v8, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 279
    iget-boolean v7, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->e:Z

    if-eqz v7, :cond_4

    move v1, v3

    .line 282
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v0, v1

    move v1, v0

    .line 284
    goto :goto_2

    .line 260
    :cond_6
    const-string v0, "[crash] a caught exception occur, handling..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_7
    if-nez v1, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/tencent/bugly/msdk/crashreport/crash/c;->c:I

    if-lt v0, v1, :cond_b

    .line 289
    :cond_8
    const-string v0, "same crash occur too much do merged!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 290
    invoke-direct {p0, v5, p1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->a(Ljava/util/List;Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;

    move-result-object v1

    .line 291
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;

    .line 292
    iget-wide v6, v0, Lcom/tencent/bugly/msdk/crashreport/crash/a;->a:J

    iget-wide v8, v1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->a:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 293
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 296
    :cond_a
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->d(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V

    .line 297
    invoke-static {v4}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 298
    const-string v0, "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    move-object v0, v4

    .line 306
    :cond_c
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->d(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V

    .line 307
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 308
    invoke-static {v0}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 310
    :cond_d
    const-string v0, "[crash] save crash success"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v3, v2

    .line 311
    goto/16 :goto_0
.end method

.method public final b(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    .line 413
    :cond_0
    return-void
.end method

.method public final c(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V
    .locals 12

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x7530

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 551
    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->g:Lcom/tencent/bugly/msdk/BuglyStrategy$a;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    if-eqz v1, :cond_0

    .line 558
    :cond_2
    :try_start_0
    const-string v1, "[crash callback] start user\'s callback:onCrashHandleStart()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 562
    iget v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v3, v5

    .line 591
    :goto_1
    iget v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->b:I

    .line 593
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 594
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 595
    iget-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 596
    iget-wide v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->r:J

    .line 600
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    if-eqz v1, :cond_6

    .line 602
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    .line 604
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    invoke-interface {v1}, Lcom/tencent/bugly/msdk/proguard/o;->b()Ljava/lang/String;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_3

    .line 607
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 608
    const-string/jumbo v2, "userData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 619
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 620
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 621
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 622
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 626
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v11, :cond_5

    .line 628
    const/4 v2, 0x0

    const/16 v7, 0x64

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 629
    const-string v2, "setted key length is over limit %d substring to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v2, v7}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    move-object v2, v1

    .line 634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/msdk/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_7

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0x7530

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    const-string v1, "setted %s value length is over limit %d substring"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x7530

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v7}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 644
    :goto_4
    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v1, "add setted key %s value size:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v1, v7}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 670
    :catch_0
    move-exception v0

    .line 671
    const-string v1, "crash handle callback something wrong! %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 672
    invoke-static {v0}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 673
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 564
    :pswitch_1
    const/4 v0, 0x4

    move v3, v0

    .line 565
    goto/16 :goto_1

    .line 567
    :pswitch_2
    const/4 v0, 0x7

    move v3, v0

    .line 568
    goto/16 :goto_1

    :pswitch_3
    move v3, v4

    .line 571
    goto/16 :goto_1

    :pswitch_4
    move v3, v0

    .line 577
    goto/16 :goto_1

    .line 579
    :pswitch_5
    const/4 v0, 0x3

    move v3, v0

    .line 580
    goto/16 :goto_1

    .line 582
    :pswitch_6
    const/4 v0, 0x5

    move v3, v0

    .line 583
    goto/16 :goto_1

    .line 585
    :pswitch_7
    const/4 v0, 0x6

    move v3, v0

    .line 586
    goto/16 :goto_1

    .line 610
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->g:Lcom/tencent/bugly/msdk/BuglyStrategy$a;

    if-eqz v1, :cond_3

    .line 611
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->g:Lcom/tencent/bugly/msdk/BuglyStrategy$a;

    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2, v6}, Lcom/tencent/bugly/msdk/BuglyStrategy$a;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_2

    .line 641
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 649
    :cond_8
    const-string v0, "[crash callback] start user\'s callback:onCrashHandleStart2GetExtraDatas()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 652
    const/4 v0, 0x0

    .line 654
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    if-eqz v1, :cond_b

    .line 655
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->f:Lcom/tencent/bugly/msdk/proguard/o;

    invoke-interface {v0}, Lcom/tencent/bugly/msdk/proguard/o;->a()[B

    move-result-object v0

    .line 661
    :cond_9
    :goto_5
    iput-object v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->T:[B

    .line 662
    if-eqz v0, :cond_0

    .line 663
    array-length v1, v0

    if-le v1, v10, :cond_a

    .line 664
    const-string v1, "extra bytes size %d is over limit %d will drop over part"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const/16 v6, 0x7530

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 666
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->T:[B

    .line 668
    :cond_a
    const-string v1, "add extra bytes %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/msdk/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 657
    :cond_b
    iget-object v1, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->g:Lcom/tencent/bugly/msdk/BuglyStrategy$a;

    if-eqz v1, :cond_9

    .line 658
    iget-object v0, p0, Lcom/tencent/bugly/msdk/crashreport/crash/b;->g:Lcom/tencent/bugly/msdk/BuglyStrategy$a;

    iget-object v1, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2, v6}, Lcom/tencent/bugly/msdk/BuglyStrategy$a;->onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_5

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public final d(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 737
    if-nez p1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/msdk/crashreport/crash/b;->e(Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_0

    .line 742
    invoke-static {}, Lcom/tencent/bugly/msdk/proguard/p;->a()Lcom/tencent/bugly/msdk/proguard/p;

    move-result-object v1

    const-string/jumbo v2, "t_cr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/tencent/bugly/msdk/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/msdk/proguard/o;Z)J

    move-result-wide v0

    .line 743
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 744
    const-string v2, "insert %s success!"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "t_cr"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/msdk/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 745
    iput-wide v0, p1, Lcom/tencent/bugly/msdk/crashreport/crash/CrashDetailBean;->a:J

    goto :goto_0
.end method
