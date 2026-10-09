.class public Lcom/tencent/midas/comm/log/internal/APLogger;
.super Ljava/lang/Object;
.source "APLogger.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_SILENT:I = 0x6

.field public static final LOG_LEVEL_VERBOSE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4


# instance fields
.field private appender:Lcom/tencent/midas/comm/log/internal/APLogAppender;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogger;->appender:Lcom/tencent/midas/comm/log/internal/APLogAppender;

    .line 21
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "index":I
    const/16 v3, 0xe10

    .line 55
    .local v3, "maxLength":I
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v2, v3

    if-gt v4, v5, :cond_1

    .line 57
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "content":Ljava/lang/String;
    :goto_1
    add-int/2addr v2, v3

    .line 62
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v4

    const-string v5, "sdk.log.error.print"

    const-string v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 59
    :cond_1
    add-int v4, v2, v3

    :try_start_1
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1

    .line 67
    :pswitch_1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :pswitch_5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static open()Lcom/tencent/midas/comm/log/internal/APLogger;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/tencent/midas/comm/log/internal/APLogger;

    invoke-direct {v0}, Lcom/tencent/midas/comm/log/internal/APLogger;-><init>()V

    .line 31
    .local v0, "mLogger":Lcom/tencent/midas/comm/log/internal/APLogger;
    invoke-direct {v0}, Lcom/tencent/midas/comm/log/internal/APLogger;->openAppender()V

    .line 33
    return-object v0
.end method

.method private openAppender()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->open()Lcom/tencent/midas/comm/log/internal/APLogAppender;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogger;->appender:Lcom/tencent/midas/comm/log/internal/APLogAppender;

    .line 25
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/tencent/midas/comm/log/internal/APLogger;->appender:Lcom/tencent/midas/comm/log/internal/APLogAppender;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/tencent/midas/comm/log/internal/APLogger;->appender:Lcom/tencent/midas/comm/log/internal/APLogAppender;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->flushAndWrite()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MidasComm<Log>"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogger;->appender:Lcom/tencent/midas/comm/log/internal/APLogAppender;

    invoke-virtual {v0, p1}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->append(Ljava/lang/String;)V

    .line 48
    return-void
.end method
