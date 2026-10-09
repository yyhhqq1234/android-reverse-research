.class public Lcom/tencent/android/tpush/service/XGWatchdog;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->SERVICESCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static CURRENT_WD_VERSION:Ljava/lang/Integer; = null

.field private static final LIB_FULL_NAME:Ljava/lang/String; = "libxguardian.so"

.field private static final LIB_NAME:Ljava/lang/String; = "xguardian"

.field public static final TAG:Ljava/lang/String; = "xguardian"

.field private static WatchdogPath:Ljava/lang/String;

.field private static defaultWatchdogPort:I

.field private static handler:Landroid/os/Handler;

.field private static volatile instance:Lcom/tencent/android/tpush/service/XGWatchdog;

.field private static random:Ljava/util/Random;

.field private static final watchdogPortName:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field volatile isStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    .line 67
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->CURRENT_WD_VERSION:Ljava/lang/Integer;

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->random:Ljava/util/Random;

    .line 71
    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    .line 77
    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    .line 124
    const v0, 0xd8fe

    sput v0, Lcom/tencent/android/tpush/service/XGWatchdog;->defaultWatchdogPort:I

    .line 125
    const-string v0, "com.tencent.tpnsWatchdogPort"

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->watchdogPortName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->isStarted:Z

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->d(Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XGWatchdog.thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string/jumbo v1, "xguardian"

    const-string v2, "init XGWatchdog error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/XGWatchdog;->directSendContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/android/tpush/service/XGWatchdog;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->directStartWatchdog()V

    return-void
.end method

.method private directSendContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v1

    iget v1, v1, Lcom/tencent/android/tpush/service/a/a;->y:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/common/t;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    const/4 v6, 0x0

    .line 182
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    const-string v1, "127.0.0.1"

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getWatchdogPort()I

    move-result v2

    invoke-direct {v3, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/16 v1, 0x7d0

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 184
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 188
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    if-nez p1, :cond_2

    .line 195
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xgapplist:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getLocalXGApps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    :cond_2
    invoke-static {p1}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->oiSymmetryEncrypt2Byte(Ljava/lang/String;)[B

    move-result-object v1

    .line 198
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 200
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 201
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 202
    const/16 v4, 0x400

    :try_start_3
    new-array v4, v4, [B

    .line 204
    :goto_1
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    .line 208
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 217
    :catch_0
    move-exception v4

    .line 219
    :goto_2
    if-eqz v3, :cond_3

    .line 221
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 226
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 228
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 233
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 235
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 240
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 242
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 248
    :cond_6
    :goto_6
    if-nez v0, :cond_f

    const-string v0, ""

    goto :goto_0

    .line 210
    :cond_7
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_11

    .line 211
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->oiSymmetryDecrypt2Byte([B)[B

    move-result-object v5

    .line 212
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 219
    :goto_7
    if-eqz v3, :cond_8

    .line 221
    :try_start_9
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 226
    :cond_8
    :goto_8
    if-eqz v0, :cond_9

    .line 228
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 233
    :cond_9
    :goto_9
    if-eqz v1, :cond_a

    .line 235
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 240
    :cond_a
    :goto_a
    if-eqz v2, :cond_10

    .line 242
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v4

    .line 245
    goto :goto_6

    .line 222
    :catch_1
    move-exception v3

    .line 223
    const-string/jumbo v5, "xguardian"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close socket failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 243
    :catch_2
    move-exception v0

    move-object v0, v4

    .line 245
    goto :goto_6

    .line 222
    :catch_3
    move-exception v3

    .line 223
    const-string/jumbo v4, "xguardian"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close socket failed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 219
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v5, v0

    move-object v2, v0

    move-object v3, v0

    :goto_b
    if-eqz v3, :cond_b

    .line 221
    :try_start_d
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 226
    :cond_b
    :goto_c
    if-eqz v0, :cond_c

    .line 228
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 233
    :cond_c
    :goto_d
    if-eqz v5, :cond_d

    .line 235
    :try_start_f
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 240
    :cond_d
    :goto_e
    if-eqz v2, :cond_e

    .line 242
    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 245
    :cond_e
    :goto_f
    throw v4

    .line 222
    :catch_4
    move-exception v1

    .line 223
    const-string/jumbo v3, "xguardian"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close socket failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 248
    :cond_f
    const-string/jumbo v1, "|"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :catch_5
    move-exception v0

    goto/16 :goto_9

    .line 236
    :catch_6
    move-exception v0

    goto/16 :goto_a

    .line 229
    :catch_7
    move-exception v3

    goto/16 :goto_4

    .line 236
    :catch_8
    move-exception v1

    goto/16 :goto_5

    .line 243
    :catch_9
    move-exception v1

    goto/16 :goto_6

    .line 229
    :catch_a
    move-exception v0

    goto :goto_d

    .line 236
    :catch_b
    move-exception v0

    goto :goto_e

    .line 243
    :catch_c
    move-exception v0

    goto :goto_f

    .line 219
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v5, v0

    move-object v2, v0

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v5, v0

    goto :goto_b

    :catchall_3
    move-exception v4

    move-object v5, v1

    goto :goto_b

    .line 217
    :catch_d
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_2

    :catch_e
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_2

    :catch_f
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2

    :cond_10
    move-object v0, v4

    goto/16 :goto_6

    :cond_11
    move-object v4, v0

    goto/16 :goto_7
.end method

.method private directStartWatchdog()V
    .locals 8

    .prologue
    .line 403
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/android/tpush/service/a/a;->y:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->loadWatchdog(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    const-string/jumbo v0, "xguardian"

    const-string/jumbo v1, "xg is disable."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    const-string/jumbo v1, "xguardian"

    const-string v2, "directStartWatchdog"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 417
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getWatchdogPort()I

    move-result v1

    .line 419
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 420
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 421
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/RegisterEntity;

    .line 424
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    iget-object v6, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessKey:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    iget-object v0, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 428
    :cond_3
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    sget-object v3, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getLocalXGApps()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 431
    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 432
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->domainToIp()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 433
    const/4 v0, 0x4

    new-instance v1, Lcom/tencent/android/tpush/e/a;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/tencent/android/tpush/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/tencent/android/tpush/e/a;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 434
    const/4 v1, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->isEnableDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 435
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 437
    const-string/jumbo v0, "xguardian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exec "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 440
    new-instance v1, Lcom/tencent/android/tpush/service/af;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "Error"

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/android/tpush/service/af;-><init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 441
    new-instance v2, Lcom/tencent/android/tpush/service/af;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "Output"

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/android/tpush/service/af;-><init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/af;->start()V

    .line 443
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/af;->start()V

    .line 444
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 445
    const-string/jumbo v1, "xguardian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proc.exitValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :cond_4
    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private domainToIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    :try_start_0
    const-string v0, "pingma.qq.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const-string v0, "14.18.245.161"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    if-nez v0, :cond_1

    .line 94
    const-class v1, Lcom/tencent/android/tpush/service/XGWatchdog;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/tencent/android/tpush/service/XGWatchdog;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/XGWatchdog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    .line 98
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getRandomInt(I)I
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->random:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static getRandomPort()I
    .locals 2

    .prologue
    .line 121
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getRandomInt(I)I

    move-result v0

    const v1, 0xd6d8

    add-int/2addr v0, v1

    return v0
.end method

.method private static isInstalledOnSdCard(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x40000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 545
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 546
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 547
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 547
    goto :goto_0

    .line 548
    :catch_0
    move-exception v2

    .line 549
    const-string/jumbo v2, "xguardian"

    const-string v3, "check install location err, maybe api level < 8"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 556
    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 557
    goto :goto_0

    .line 558
    :cond_3
    const-string v3, "/mnt/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 565
    goto :goto_0

    .line 561
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private loadWatchdog(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 485
    sget-object v2, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 537
    :goto_0
    return v1

    .line 489
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    .line 491
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "libxguardian.so"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 495
    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    .line 497
    iget-object v3, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/XGWatchdog;->isInstalledOnSdCard(Landroid/content/Context;)Z

    move-result v3

    .line 498
    const-string/jumbo v4, "xguardian"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application is install in SD Card: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    if-eqz v3, :cond_1

    .line 500
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    const-string/jumbo v5, "watchdog"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "libxguardian.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 505
    const-string/jumbo v2, "xguardian"

    const-string v4, "exeWatchDog exists!"

    invoke-static {v2, v4}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_1
    sput-object v3, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    move v1, v0

    .line 537
    goto/16 :goto_0

    .line 508
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    :try_start_2
    invoke-static {v2, v4}, Lcom/tencent/android/tpush/common/t;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 515
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    const-string/jumbo v2, "xguardian"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jniStartWatchdog loadWatchdog error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 535
    goto :goto_2

    .line 509
    :catch_1
    move-exception v0

    .line 510
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 511
    const-string/jumbo v0, "xguardian"

    const-string v2, "exeWatchDog create error!"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v2, v5, :cond_4

    .line 519
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 520
    const-string v5, "setExecutable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 521
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 523
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 700 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 525
    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 526
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 527
    const-string/jumbo v5, "xguardian"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " exec command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",  exit:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method private oldloadWatchdog(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 378
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    const/4 v0, 0x1

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    .line 384
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 385
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "libxguardian.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 396
    const-string/jumbo v1, "xguardian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jniStartWatchdog loadWatchdog error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLocalXGApps()Ljava/lang/String;
    .locals 8

    .prologue
    .line 322
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/n;->d(Landroid/content/Context;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    if-eqz v0, :cond_2

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 331
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 332
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/RegisterEntity;

    move-result-object v3

    .line 334
    if-eqz v3, :cond_1

    .line 335
    new-instance v4, Lcom/tencent/android/tpush/service/ae;

    invoke-direct {v4}, Lcom/tencent/android/tpush/service/ae;-><init>()V

    .line 336
    iput-object v0, v4, Lcom/tencent/android/tpush/service/ae;->a:Ljava/lang/String;

    .line 337
    iget-wide v6, v3, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    iput-wide v6, v4, Lcom/tencent/android/tpush/service/ae;->c:J

    .line 338
    iget v0, v3, Lcom/tencent/android/tpush/data/RegisterEntity;->xgSDKVersion:F

    iput v0, v4, Lcom/tencent/android/tpush/service/ae;->b:F

    .line 339
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v0

    .line 349
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_3

    .line 350
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v0

    .line 353
    :cond_3
    new-instance v3, Lcom/tencent/android/tpush/service/ae;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/ae;-><init>()V

    .line 354
    iget-object v4, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/ae;->a:Ljava/lang/String;

    .line 355
    iput-wide v0, v3, Lcom/tencent/android/tpush/service/ae;->c:J

    .line 356
    const v0, 0x40466666    # 3.1f

    iput v0, v3, Lcom/tencent/android/tpush/service/ae;->b:F

    .line 357
    const/4 v0, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/ae;

    .line 361
    iget-object v3, v0, Lcom/tencent/android/tpush/service/ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/android/tpush/service/ae;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWatchdogPort()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    const-string/jumbo v2, "tpush_watchdog_port"

    invoke-static {v0, v2, v1}, Lcom/tencent/android/tpush/service/e/g;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 130
    if-lez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v3, v1

    .line 133
    :goto_1
    const/16 v0, 0xa

    if-ge v3, v0, :cond_4

    .line 134
    const/4 v2, 0x0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/XGWatchdog;->getRandomPort()I

    move-result v0

    .line 137
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    iget-object v2, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    const-string/jumbo v4, "tpush_watchdog_port"

    invoke-static {v2, v4, v0}, Lcom/tencent/android/tpush/service/e/g;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 141
    :goto_2
    :try_start_3
    const-string/jumbo v2, "xguardian"

    const-string v4, "create ServerSocket error"

    invoke-static {v2, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    :try_start_4
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 133
    :cond_2
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 144
    :goto_4
    if-eqz v1, :cond_3

    .line 145
    :try_start_5
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 149
    :cond_3
    :goto_5
    throw v0

    .line 153
    :cond_4
    sget v0, Lcom/tencent/android/tpush/service/XGWatchdog;->defaultWatchdogPort:I

    goto :goto_0

    .line 147
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 143
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 140
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public sendAllLocalXGAppList()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public sendDebugMode(Z)V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;)V

    .line 311
    return-void

    .line 309
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public sendHeartbeat2Watchdog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/ad;)V

    .line 162
    return-void
.end method

.method public sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/ad;)V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/ab;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/ab;-><init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;Lcom/tencent/android/tpush/service/ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendXGApp(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public startWatchdog()V
    .locals 2

    .prologue
    .line 453
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 456
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/ac;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/ac;-><init>(Lcom/tencent/android/tpush/service/XGWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
