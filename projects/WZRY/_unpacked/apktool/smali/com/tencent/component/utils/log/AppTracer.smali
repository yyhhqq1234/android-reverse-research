.class public Lcom/tencent/component/utils/log/AppTracer;
.super Ljava/lang/Object;
.source "AppTracer.java"

# interfaces
.implements Lcom/tencent/component/debug/TraceLevel;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private volatile enabled:Z

.field private fileTracer:Lcom/tencent/component/debug/FileTracer;

.field private volatile fileTracerEnabled:Z

.field private volatile logcatTracerEnabled:Z


# direct methods
.method public constructor <init>(Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 1
    .param p1, "tracerConfig"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/tencent/component/utils/log/AppTracer;->enabled:Z

    .line 73
    iput-boolean v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracerEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/tencent/component/utils/log/AppTracer;->logcatTracerEnabled:Z

    .line 78
    new-instance v0, Lcom/tencent/component/debug/FileTracer;

    invoke-direct {v0, p1}, Lcom/tencent/component/debug/FileTracer;-><init>(Lcom/tencent/component/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    .line 80
    invoke-static {}, Lcom/tencent/component/utils/log/LogConfig;->getInstance()Lcom/tencent/component/utils/log/LogConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/component/utils/log/LogConfig;->startListen(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 81
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 238
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 245
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/component/utils/log/AppTracer;->deleteFile(Ljava/io/File;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getLogFilePath()Ljava/io/File;
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 65
    .local v0, "dirName":Ljava/lang/String;
    .local v1, "logFile":Ljava/io/File;
    .local v4, "useExternal":Z
    :goto_0
    return-object v1

    .line 45
    .end local v0    # "dirName":Ljava/lang/String;
    .end local v1    # "logFile":Ljava/io/File;
    .end local v4    # "useExternal":Z
    :cond_0
    invoke-static {}, Lcom/tencent/component/utils/FileUtil;->isExternalAvailable()Z

    move-result v4

    .line 47
    .restart local v4    # "useExternal":Z
    const-string v0, "logs"

    .line 49
    .restart local v0    # "dirName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 50
    .restart local v1    # "logFile":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 51
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/tencent/component/utils/FileUtil;->getExternalGameJoyRecorderDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "logFile":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .local v2, "logFile":Ljava/io/File;
    :goto_1
    if-nez v2, :cond_1

    .line 61
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "logFile":Ljava/io/File;
    .restart local v1    # "logFile":Ljava/io/File;
    goto :goto_0

    .line 55
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v1

    .end local v1    # "logFile":Ljava/io/File;
    .restart local v2    # "logFile":Ljava/io/File;
    goto :goto_1

    .line 62
    .end local v3    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "logFile":Ljava/io/File;
    .restart local v1    # "logFile":Ljava/io/File;
    goto :goto_0

    .end local v1    # "logFile":Ljava/io/File;
    .restart local v2    # "logFile":Ljava/io/File;
    :cond_1
    move-object v1, v2

    .end local v2    # "logFile":Ljava/io/File;
    .restart local v1    # "logFile":Ljava/io/File;
    goto :goto_0

    :cond_2
    move-object v2, v1

    .end local v1    # "logFile":Ljava/io/File;
    .restart local v2    # "logFile":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method public cleanLog()V
    .locals 6

    .prologue
    .line 227
    iget-object v3, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v3}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v1

    .line 228
    .local v1, "folder":Ljava/io/File;
    iget-object v3, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v3}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/component/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 230
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 231
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 232
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/tencent/component/utils/log/AppTracer;->deleteFile(Ljava/io/File;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracer;->flush()V

    .line 94
    :cond_0
    return-void
.end method

.method public getWorkerFolder()Ljava/io/File;
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getWorkerFolder(J)Ljava/io/File;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/tencent/component/utils/log/AppTracer;->enabled:Z

    return v0
.end method

.method public final isFileTracerEnabled()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracerEnabled:Z

    return v0
.end method

.method public final isLogcatTracerEnabled()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/tencent/component/utils/log/AppTracer;->logcatTracerEnabled:Z

    return v0
.end method

.method public myLogReader(I)Ljava/io/BufferedReader;
    .locals 12
    .param p1, "pageIndex"    # I

    .prologue
    .line 190
    iget-object v8, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v8}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v4

    .line 192
    .local v4, "folder":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 209
    :cond_1
    :goto_0
    return-object v0

    .line 195
    :cond_2
    iget-object v8, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v8}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/tencent/component/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 196
    .local v3, "files":[Ljava/io/File;
    iget-object v8, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v8}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/tencent/component/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "br":Ljava/io/BufferedReader;
    if-ltz p1, :cond_1

    array-length v8, v3

    if-ge p1, v8, :cond_1

    .line 200
    array-length v8, v3

    sub-int/2addr v8, p1

    add-int/lit8 v7, v8, -0x1

    .line 201
    .local v7, "realIndex":I
    aget-object v2, v3, v7

    .line 202
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 204
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 207
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 206
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v8

    goto :goto_0

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v1, "debug.file.tracelevel"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 175
    :cond_0
    invoke-static {}, Lcom/tencent/component/utils/log/LogConfig;->getInstance()Lcom/tencent/component/utils/log/LogConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/component/utils/log/LogConfig;->getFileTraceLevel()I

    move-result v0

    .line 177
    .local v0, "traceLevel":I
    const/16 v1, 0x10

    const-string v2, "WnsTracer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Trace Level Changed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tencent/component/utils/log/AppTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    iget-object v1, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v1, v0}, Lcom/tencent/component/debug/FileTracer;->setTraceLevel(I)V

    .line 181
    .end local v0    # "traceLevel":I
    :cond_1
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/tencent/component/utils/log/AppTracer;->enabled:Z

    .line 128
    return-void
.end method

.method public final setFileTracerEnabled(Z)V
    .locals 1
    .param p1, "fileTracerEnabled"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracer;->flush()V

    .line 152
    iput-boolean p1, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracerEnabled:Z

    .line 153
    return-void
.end method

.method public final setFileTracerLevel(I)V
    .locals 1
    .param p1, "traceLevel"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0, p1}, Lcom/tencent/component/debug/FileTracer;->setTraceLevel(I)V

    .line 142
    return-void
.end method

.method public final setLogcatTracerEnabled(Z)V
    .locals 0
    .param p1, "logcatTracerEnabled"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/tencent/component/utils/log/AppTracer;->logcatTracerEnabled:Z

    .line 166
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracer;->flush()V

    .line 86
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/component/debug/FileTracer;->quit()V

    .line 88
    :cond_0
    return-void
.end method

.method public trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/tencent/component/utils/log/AppTracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/tencent/component/utils/log/AppTracer;->isFileTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tencent/component/utils/log/AppTracer;->fileTracer:Lcom/tencent/component/debug/FileTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/FileTracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/component/utils/log/AppTracer;->isLogcatTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v1, Lcom/tencent/component/debug/LogcatTracer;->Instance:Lcom/tencent/component/debug/LogcatTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/LogcatTracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :cond_1
    return-void
.end method
