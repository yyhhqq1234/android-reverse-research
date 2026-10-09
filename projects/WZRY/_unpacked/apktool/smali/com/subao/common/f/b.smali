.class public Lcom/subao/common/f/b;
.super Ljava/lang/Object;
.source "LogCatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/f/b$b;,
        Lcom/subao/common/f/b$a;
    }
.end annotation


# static fields
.field static a:Lcom/subao/common/f/b$b;

.field static b:Lcom/subao/common/f/b$a;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static f:Z

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subao/common/f/b;->c:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/subao/common/f/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wsds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subao/common/f/b;->d:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/subao/common/f/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wsds_logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subao/common/f/b;->e:Ljava/lang/String;

    .line 50
    sput-object v2, Lcom/subao/common/f/b;->a:Lcom/subao/common/f/b$b;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/subao/common/f/b;->f:Z

    .line 52
    sput-object v2, Lcom/subao/common/f/b;->b:Lcom/subao/common/f/b$a;

    .line 53
    sput-object v2, Lcom/subao/common/f/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    const/4 p1, 0x0

    .line 235
    :cond_1
    return-object p1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 p0, 0x0

    .line 155
    :cond_0
    :goto_0
    return-object p0

    .line 151
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static a()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/subao/common/f/b;->a:Lcom/subao/common/f/b$b;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/subao/common/f/b;->a:Lcom/subao/common/f/b$b;

    invoke-virtual {v0}, Lcom/subao/common/f/b$b;->a()V

    .line 182
    const/4 v0, 0x0

    sput-object v0, Lcom/subao/common/f/b;->a:Lcom/subao/common/f/b$b;

    .line 185
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/subao/common/f/b;->f:Z

    .line 186
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/subao/common/f/b;->b:Lcom/subao/common/f/b$a;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    const-string v1, "cn.wsds.log.action.start_catch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "cn.wsds.log.action.stop_catch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/subao/common/f/b$a;

    invoke-direct {v1}, Lcom/subao/common/f/b$a;-><init>()V

    sput-object v1, Lcom/subao/common/f/b;->b:Lcom/subao/common/f/b$a;

    .line 198
    sget-object v1, Lcom/subao/common/f/b;->b:Lcom/subao/common/f/b$a;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/g/c;)V
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/subao/common/f/b;->a(Landroid/content/Context;)V

    .line 138
    invoke-static {p2}, Lcom/subao/common/f/b;->a(Lcom/subao/common/g/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p1}, Lcom/subao/common/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/f/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 285
    if-nez p0, :cond_1

    .line 297
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 291
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 291
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static a(Landroid/util/JsonReader;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 256
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 264
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 278
    :cond_2
    invoke-static {p0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 270
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    invoke-static {p0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 275
    :catch_1
    move-exception v1

    .line 276
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    invoke-static {p0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Lcom/subao/common/g/c;)Z
    .locals 4

    .prologue
    .line 207
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/subao/common/f/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/subao/common/f/b;->d:Ljava/lang/String;

    const-string v3, "log.config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v0, v1}, Lcom/subao/common/f/b;->a(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    const-string v1, "log_action"

    invoke-static {v0, v1}, Lcom/subao/common/f/b;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/subao/common/f/b;->f:Z

    .line 211
    sget-boolean v0, Lcom/subao/common/f/b;->f:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/subao/common/g/c;->c()V

    .line 214
    :cond_0
    sget-boolean v0, Lcom/subao/common/f/b;->f:Z

    return v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 243
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    :try_start_0
    new-instance v1, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1, p1}, Lcom/subao/common/f/b;->a(Landroid/util/JsonReader;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/subao/common/f/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sget-object v0, Lcom/subao/common/f/b;->a:Lcom/subao/common/f/b$b;

    if-nez v0, :cond_0

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    const-string v0, "%s%s/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/subao/common/f/b;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subao/common/f/b;->g:Ljava/lang/String;

    .line 171
    :cond_2
    new-instance v0, Lcom/subao/common/f/b$b;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/subao/common/f/b;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/subao/common/f/b$b;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/subao/common/f/b;->a:Lcom/subao/common/f/b$b;

    .line 172
    sget-object v0, Lcom/subao/common/f/b;->a:Lcom/subao/common/f/b$b;

    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/f/b$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 222
    sget-boolean v0, Lcom/subao/common/f/b;->f:Z

    return v0
.end method
