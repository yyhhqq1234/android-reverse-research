.class Lcom/tencent/msdk/tools/Logger$FileLogHandler;
.super Landroid/os/Handler;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/tools/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLogHandler"
.end annotation


# instance fields
.field private hasSDCard:Z

.field private logFile:Ljava/io/File;

.field private logOutput:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    .line 168
    invoke-static {}, Lcom/tencent/msdk/tools/FileUtils;->hasExternalStorage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    .line 169
    iget-boolean v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    invoke-static {p1}, Lcom/tencent/msdk/tools/FileUtils;->getLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    .line 172
    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    if-nez v1, :cond_1

    .line 173
    sget-object v1, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    const-string v4, "logFile is null"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 180
    .local v2, "logLength":J
    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 182
    sget-object v1, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log size larger than LOG_FILE_SIZE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 185
    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method getLogOutput()Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logOutput:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logOutput:Ljava/io/FileOutputStream;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logOutput:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    iget-boolean v3, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->hasSDCard:Z

    if-nez v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->logFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "log":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 206
    .local v2, "logData":[B
    invoke-virtual {p0}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->getLogOutput()Ljava/io/FileOutputStream;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "logData":[B
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
