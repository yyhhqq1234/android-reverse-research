.class final Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/geolocation/internal/TencentLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LogHandler"
.end annotation


# static fields
.field private static final TXWATCHDOG:Ljava/lang/String; = "txwatchdog"


# instance fields
.field private mBos:Ljava/io/BufferedOutputStream;

.field private mDest:Ljava/io/File;

.field final synthetic this$0:Lcom/tencent/map/geolocation/internal/TencentLogImpl;


# direct methods
.method private constructor <init>(Lcom/tencent/map/geolocation/internal/TencentLogImpl;Landroid/os/Looper;)V
    .locals 4

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->this$0:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    .line 139
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    invoke-direct {p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->makeSureDest()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    .line 142
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/tencent/map/geolocation/internal/TencentLogImpl;Landroid/os/Looper;Lcom/tencent/map/geolocation/internal/TencentLogImpl$1;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;-><init>(Lcom/tencent/map/geolocation/internal/TencentLogImpl;Landroid/os/Looper;)V

    return-void
.end method

.method private makeSureDest()Ljava/io/File;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->this$0:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->access$600(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Ljava/io/File;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 229
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "txwatchdog"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "txwatchdog"

    iget-object v1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->makeSureDest()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    .line 159
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->this$0:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->access$500(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lc/t/m/g/f$a;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->this$0:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->access$600(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Ljava/io/File;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    .line 174
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x64000

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 181
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "txwatchdog_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 184
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_0

    array-length v0, v1

    const/16 v4, 0xa

    if-le v0, v4, :cond_0

    .line 186
    array-length v4, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_0

    aget-object v5, v1, v0

    .line 187
    const-string/jumbo v6, "txwatchdog"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 188
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    .line 190
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "txwatchdog_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, -0x65813800

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 194
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 186
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 162
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 166
    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    .line 167
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 202
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 205
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    iput-object v3, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    .line 209
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 215
    :pswitch_2
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mDest:Ljava/io/File;

    .line 216
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;->mBos:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 212
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
