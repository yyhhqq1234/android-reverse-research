.class public final Lcom/tencent/tp/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/r;->b:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tp/r;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    sget-object v0, Lcom/tencent/tp/r;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/tp/r;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-static {p0}, Lcom/tencent/tp/r;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPUNAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "/proc/cpuinfo"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v1, ""

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    const-string v3, "Processor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "vendor_id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_3

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v3, "Hardware"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_7

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_6
    const-string v0, "Unknown"

    sput-object v0, Lcom/tencent/tp/r;->b:Ljava/lang/String;

    const-string v0, "Unknown"

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v3, "model name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_8

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Unknown"

    sput-object v0, Lcom/tencent/tp/r;->b:Ljava/lang/String;

    const-string v0, "Unknown"

    goto/16 :goto_0

    :cond_9
    sput-object v0, Lcom/tencent/tp/r;->b:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/tencent/tp/r;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CPUNAME:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tp/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tp/h;->a()Lcom/tencent/tp/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/tp/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REAL_DEVICE("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "REAL_DEVICE(arm)"

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v3, 0x1000

    new-array v3, v3, [C

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "null"

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    invoke-static {}, Lcom/tencent/tp/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 4

    const-wide/16 v2, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "unknown"

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    :pswitch_1
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_2
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_3
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_4
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_5
    const-string v0, "CDMA - EVDO rev. 0"

    goto :goto_0

    :pswitch_6
    const-string v0, "CDMA - EVDO rev. A"

    goto :goto_0

    :pswitch_7
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    :pswitch_8
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_9
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_a
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_b
    const-string v0, "iDen"

    goto :goto_0

    :pswitch_c
    const-string v0, "CDMA - EVDO rev. B"

    goto :goto_0

    :pswitch_d
    const-string v0, "LTE"

    goto :goto_0

    :pswitch_e
    const-string v0, "eHRPD"

    goto :goto_0

    :pswitch_f
    const-string v0, "HSPA+"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "wifi"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v0, "wifi"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const-string v2, ""

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    const/4 v3, 0x0

    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_6

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SUPPORTED_ABIS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v0, v4, v0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_0
    const-class v3, Landroid/os/Build;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    :goto_2
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_3
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_3

    :cond_6
    move-object v0, v3

    goto/16 :goto_1
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tp/v;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    :try_start_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    div-int/lit16 v0, v0, 0x400
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)F
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v1, v4, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    :goto_0
    return v0

    :cond_1
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k()J
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_0
    mul-long/2addr v0, v4

    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    move-wide v4, v2

    goto :goto_0
.end method

.method public static l()J
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_0
    mul-long/2addr v0, v4

    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    move-wide v4, v2

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "UNKNOWN"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)J
    .locals 4

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static n()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/tencent/tp/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Unavailable"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const-string v0, "Unavailable"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/tencent/tp/r;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/tp/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/tencent/tp/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/tencent/tp/r;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/r;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/tp/r;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x752

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v2, 0x800

    new-array v2, v2, [B

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mycpuinfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_2
    const/4 v3, 0x0

    const/16 v5, 0x800

    invoke-virtual {v0, v2, v3, v5}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 755 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mycpuinfo\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->b(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mycpuinfo\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tp/r;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
        0x14t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x77t
        0x4ft
        -0x57t
        0x48t
        -0xft
        -0x71t
        -0x52t
        0xet
        -0x46t
        0x6t
        0x0t
        0x0t
        -0x64t
        0x14t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x79t
        0x63t
        0x70t
        0x75t
        0x69t
        0x6et
        0x66t
        0x6ft
        -0x13t
        0x58t
        0x59t
        -0x74t
        0x4bt
        0x51t
        0x18t
        0x3et
        -0x9t
        -0xat
        0x4et
        0x5dt
        -0x74t
        -0x56t
        0x7dt
        0x6bt
        0x28t
        -0x76t
        -0x4ft
        -0x2bt
        0x12t
        -0x3ct
        0x1at
        0x6t
        -0x4bt
        -0x11t
        0xct
        0x11t
        0x4bt
        0x5dt
        -0x43t
        0x35t
        -0x2dt
        -0x18t
        -0x4ct
        -0x6dt
        -0xat
        0x12t
        -0x7ct
        0x20t
        -0x4bt
        -0x23t
        0x54t
        0x13t
        0x42t
        -0x1et
        0x45t
        0x42t
        0x6ct
        0xft
        -0x78t
        0x8t
        0x22t
        0x7dt
        0x10t
        0x41t
        -0x53t
        -0x77t
        0x4t
        -0x77t
        0x20t
        -0x1ft
        -0x7ft
        0x58t
        0x52t
        -0x4ft
        -0x7ct
        0x20t
        0x11t
        -0x7at
        -0x6t
        -0x32t
        0x62t
        -0x1at
        -0x56t
        0x4at
        0x78t
        -0xet
        0x32t
        0x67t
        -0xet
        -0x23t
        -0x1t
        -0x4t
        -0x1t
        -0x1t
        -0x63t
        -0x1t
        -0x4t
        0x67t
        -0x15t
        -0x24t
        0x73t
        -0x29t
        -0x5t
        -0x5at
        -0x74t
        -0x6dt
        0x24t
        -0x77t
        -0x4t
        0x2ct
        0x36t
        -0x4t
        0x51t
        0x6dt
        -0x79t
        -0x73t
        -0x70t
        0x1t
        -0x70t
        0x4at
        0x13t
        0x6at
        -0x5bt
        0x75t
        0x37t
        0x51t
        0x49t
        0x9t
        0x69t
        0x45t
        0x5at
        0x12t
        0x3bt
        -0x2dt
        0x6bt
        -0x7ft
        0x6t
        0xct
        0xat
        -0x1ft
        -0x50t
        0x51t
        -0x45t
        0x54t
        -0x75t
        0x66t
        -0x7ct
        0x43t
        -0x57t
        -0x5ft
        -0x2t
        0x5at
        -0x6t
        -0x56t
        0x1ct
        0x45t
        0x54t
        0x71t
        0x72t
        -0x1t
        0x49t
        0x7t
        -0x30t
        -0x62t
        0x63t
        0x6t
        0xct
        0x73t
        0x0t
        -0x45t
        -0x10t
        -0x35t
        0x10t
        -0x29t
        0x1dt
        0x40t
        0x7bt
        0xet
        0x55t
        -0x1et
        -0x50t
        -0x75t
        0x3et
        0x66t
        0x3ct
        0x37t
        -0xct
        -0x65t
        -0xbt
        0x8t
        -0x7t
        0x9t
        -0x63t
        0x50t
        -0x2ct
        -0x1at
        0x37t
        0x13t
        0x7et
        0x52t
        -0x60t
        -0x28t
        -0x7bt
        -0x64t
        0x5t
        0x7ft
        0x7et
        -0x1t
        0x33t
        0x2ct
        -0xft
        -0x5t
        -0x3ct
        0x57t
        -0x39t
        -0x73t
        0x60t
        0x65t
        -0x61t
        -0x5bt
        -0x5ft
        0x48t
        -0x61t
        0x70t
        0x28t
        -0x4et
        0x3ct
        0x18t
        -0x35t
        0xbt
        -0x6ct
        0x37t
        -0x3at
        -0x5at
        0x40t
        -0x5dt
        0x3ct
        -0x43t
        0x6dt
        -0x62t
        -0x22t
        -0x2dt
        -0x5et
        -0x2dt
        0x29t
        0x1ft
        -0x6ft
        -0x19t
        0x1ft
        -0x65t
        -0x59t
        0x4ft
        -0x37t
        -0x2dt
        -0x19t
        -0x30t
        -0x76t
        0x1bt
        0x60t
        0x53t
        -0xct
        0x3et
        -0x49t
        0x20t
        0x4ft
        0x2ft
        -0x59t
        -0x47t
        0x5bt
        0x74t
        -0x1et
        -0x9t
        -0x79t
        0x43t
        0x4bt
        0x3t
        -0x2t
        0x50t
        0x24t
        0x64t
        -0x60t
        0x1et
        0x58t
        -0x5bt
        -0x7t
        0x35t
        0x23t
        -0x48t
        -0x76t
        0x29t
        0x71t
        0x43t
        0xbt
        0x2ct
        -0x9t
        0x7t
        0x2at
        -0x6at
        -0x5t
        -0x69t
        0x69t
        -0x5ft
        -0x10t
        0x2ft
        -0x7at
        -0xet
        0x15t
        0x5at
        0x4ct
        0x27t
        0x55t
        -0x4ft
        0x50t
        -0x3ct
        0x58t
        0x6t
        0x47t
        0x30t
        0x16t
        -0x75t
        0x44t
        0x9t
        -0x5at
        0x23t
        -0x60t
        -0x7bt
        0x41t
        0xct
        -0x16t
        -0x66t
        -0x5ft
        -0x3ft
        -0x44t
        0x34t
        0x1et
        -0x59t
        0x6dt
        0x62t
        0x6t
        0x4ct
        0x11t
        -0x63t
        -0x60t
        -0x5dt
        0x70t
        -0x4ct
        -0x24t
        0x1bt
        -0x71t
        -0x2et
        0x5at
        -0x24t
        -0x30t
        0x3t
        0x3dt
        0x7bt
        0xat
        -0x5bt
        0x52t
        -0x38t
        -0x80t
        -0x70t
        0x7at
        0x18t
        0x15t
        -0x4at
        0x7ft
        0x1at
        0x2t
        0x2at
        -0x30t
        0x0t
        -0x58t
        0x5ft
        0x60t
        -0x53t
        0x64t
        0x31t
        -0x39t
        0x36t
        -0x4ft
        0x6et
        -0xbt
        -0x80t
        0x22t
        -0x4ft
        0x3et
        -0x49t
        0x3bt
        -0x10t
        -0x4at
        0x77t
        -0x7bt
        0x7ct
        0x20t
        -0x1ct
        0x23t
        0x21t
        0x1ft
        0x43t
        -0x26t
        0x41t
        0x7ct
        0x7t
        0x59t
        0xft
        0x41t
        0x3et
        0x52t
        -0x77t
        -0x80t
        -0x61t
        -0x57t
        0x44t
        -0x40t
        0x6at
        0x2at
        -0x75t
        0x78t
        0x3ft
        -0x47t
        -0x2dt
        0xat
        0x7dt
        0x1et
        0x54t
        -0x57t
        -0x3et
        0x6at
        -0x3bt
        0x78t
        0x56t
        -0x30t
        -0x16t
        -0x35t
        -0x39t
        0x39t
        -0x6ct
        -0x7dt
        0x4et
        -0x56t
        -0x55t
        0x54t
        -0x41t
        -0x33t
        -0xct
        -0x1at
        0x54t
        0x77t
        0x52t
        -0x3t
        0x2t
        -0x2dt
        0x5bt
        0x53t
        -0x63t
        0x3et
        0x5et
        -0x62t
        -0x7ct
        -0x66t
        -0x2et
        0x3dt
        0x1ft
        -0x6dt
        0x63t
        0x3dt
        -0x32t
        -0x33t
        0x17t
        0xct
        0x39t
        0x77t
        0x1bt
        0x5at
        0x71t
        0x26t
        0x75t
        -0x6at
        0x46t
        0x4bt
        -0x63t
        -0x15t
        0x46t
        0x45t
        -0x67t
        -0x7t
        0x7ct
        0x76t
        -0xat
        0x14t
        0x2at
        0x1bt
        0x33t
        -0x6dt
        0x5dt
        -0x7ct
        0x24t
        -0x62t
        -0x43t
        0x3t
        -0x19t
        0x71t
        0x32t
        -0xft
        0x1at
        0x6dt
        -0x51t
        -0x73t
        -0xbt
        0x28t
        -0x6ct
        0x63t
        -0x72t
        -0xbt
        0x34t
        0x4ft
        0x26t
        -0x22t
        -0x3ft
        -0x7et
        0x5at
        -0x15t
        0x64t
        -0x1et
        0x23t
        -0x51t
        -0x47t
        0x52t
        -0x50t
        0x43t
        0x16t
        0x27t
        0x13t
        -0x61t
        -0x47t
        0x45t
        0x4dt
        -0x7t
        0x14t
        0x53t
        -0xft
        0x64t
        -0x39t
        -0x2dt
        -0x72t
        -0x31t
        0x74t
        -0x5bt
        0x6dt
        0x67t
        0x67t
        -0x35t
        0x58t
        -0x10t
        -0x49t
        -0x13t
        0x8t
        0x41t
        -0x1ct
        0x6ct
        0x2at
        -0x1ft
        -0x1et
        0x11t
        0x55t
        0x64t
        -0x1bt
        -0x7at
        0x54t
        0x52t
        -0x77t
        -0x13t
        0x4ft
        -0x2ft
        0x1at
        -0x33t
        -0x24t
        0x3ct
        -0x21t
        -0x2at
        0xbt
        0x32t
        -0x57t
        -0x6bt
        0x34t
        0x3ft
        -0x22t
        -0x42t
        0x5t
        0x6bt
        0x7ft
        -0x7et
        -0x49t
        -0x1t
        -0x64t
        0x6dt
        -0x38t
        0x49t
        -0x16t
        -0x7et
        0x4ct
        -0x2et
        -0x1bt
        -0x37t
        0x20t
        0x7dt
        0x28t
        -0x11t
        -0x52t
        -0x7t
        -0x56t
        -0x27t
        -0x68t
        -0x36t
        -0x56t
        -0x69t
        -0x68t
        -0x9t
        -0x2dt
        -0x58t
        0x6dt
        0x68t
        0x7ct
        -0x40t
        -0x54t
        -0x59t
        0x25t
        0x7dt
        -0x2bt
        0x37t
        0x28t
        0x65t
        -0x22t
        0x5ct
        0x4et
        -0x6t
        -0x38t
        0x49t
        0x1ft
        -0x6dt
        0x53t
        -0x2bt
        0x25t
        -0x1at
        0x3dt
        -0xdt
        0x56t
        -0x41t
        0xbt
        -0x60t
        0x75t
        0x30t
        -0x19t
        0x29t
        -0x1at
        0x74t
        -0x2bt
        -0x4ct
        -0x7dt
        -0x2t
        0x11t
        0x3ct
        -0x19t
        0x62t
        -0x1t
        0x22t
        -0x2at
        0x28t
        0x59t
        -0x5at
        -0x2et
        0x68t
        -0x4et
        -0x78t
        0x66t
        -0x6t
        0x19t
        0x6dt
        0x5et
        0x71t
        -0x26t
        -0x3at
        0x2dt
        -0x1dt
        -0x63t
        -0x5at
        -0x41t
        -0x47t
        0x39t
        -0x43t
        -0x4bt
        0x39t
        -0x31t
        -0x6bt
        0x56t
        -0x7ct
        -0x37t
        0x6dt
        -0x6t
        0x3dt
        -0x1at
        -0xct
        0x12t
        0x73t
        0x5et
        0x2ft
        0x4dt
        0x44t
        -0x67t
        0x3bt
        0x1bt
        0x31t
        0x77t
        0x67t
        -0x59t
        0x23t
        -0x13t
        -0x73t
        -0x67t
        0x2ct
        -0x72t
        0x61t
        0x32t
        0x51t
        -0x73t
        0x7at
        -0x6et
        -0x68t
        -0x42t
        0x67t
        -0x29t
        0x7ct
        0x47t
        0x68t
        0x46t
        -0x29t
        0x7ct
        0x47t
        -0x47t
        0x38t
        0x41t
        -0x3bt
        0x55t
        -0x21t
        0x29t
        -0x1ct
        0x78t
        -0x6t
        0x7ct
        0x3ft
        -0x2ct
        -0x2dt
        0x6ct
        -0x6t
        -0x11t
        0x24t
        -0x62t
        0x48t
        -0x65t
        0x6ft
        0x18t
        -0x16t
        0x36t
        0x39t
        0x71t
        0x49t
        0x4at
        -0x44t
        -0x6bt
        -0x58t
        0x41t
        -0x7at
        -0x5ft
        -0x2t
        0x32t
        0x13t
        0x16t
        0x39t
        -0xft
        0x56t
        0x36t
        -0x21t
        0x5ft
        0x7ct
        0x29t
        -0x65t
        -0x9t
        0x3ft
        0x1ct
        0x33t
        -0x41t
        -0x68t
        -0x11t
        -0x47t
        -0x2dt
        0x2et
        -0x64t
        0x2ft
        0x24t
        -0xdt
        0x3dt
        -0x2ct
        0x22t
        -0x2at
        0x38t
        -0x1bt
        0x3bt
        0x42t
        0x27t
        -0x6t
        -0x1bt
        -0x9t
        0x5ct
        0x2et
        0x7bt
        0x11t
        0xft
        -0x2dt
        -0x49t
        0x7ft
        -0x1dt
        -0x46t
        -0x3t
        0x74t
        0x3ct
        0x2bt
        -0x45t
        -0x59t
        0x7ct
        -0x59t
        -0x57t
        0x4ft
        0x46t
        0x72t
        -0x58t
        -0xet
        -0x2bt
        0x3ct
        -0x3et
        0x17t
        0x68t
        -0x8t
        0xbt
        -0x42t
        0x40t
        -0x5t
        -0x42t
        -0x1bt
        0x72t
        -0x51t
        0x5at
        -0x2ct
        -0x68t
        -0x59t
        0x8t
        -0xdt
        0x36t
        -0x68t
        -0x3bt
        -0x58t
        -0x36t
        -0x62t
        0x25t
        -0x37t
        -0x70t
        0x4bt
        0x46t
        0x51t
        0x76t
        -0x14t
        0x77t
        -0x4at
        0x4ct
        -0x1ft
        0x5t
        0x62t
        0x36t
        -0x4ft
        -0x4ft
        -0x4et
        0x6ft
        0x60t
        0x4bt
        -0x2dt
        0x43t
        0x74t
        0x23t
        0x43t
        0x54t
        -0x35t
        -0x11t
        0x73t
        0x69t
        0x44t
        -0x71t
        0x45t
        0x43t
        0x3at
        0x3bt
        0x77t
        0x63t
        -0x56t
        0x56t
        0x4ct
        -0x2dt
        0x2at
        -0x7dt
        0x43t
        0x4bt
        -0x46t
        -0x3ct
        -0x45t
        0x77t
        -0x77t
        0x37t
        -0x8t
        0x45t
        -0x61t
        0x16t
        -0x5bt
        0x55t
        0x58t
        0x70t
        0x48t
        -0x65t
        -0x1t
        -0x4t
        -0x23t
        0x5bt
        0x33t
        -0x75t
        0x48t
        0x6bt
        0x55t
        -0x57t
        0x5dt
        -0x4ft
        -0x5et
        0x6ct
        -0x6dt
        -0x48t
        -0x23t
        0x45t
        -0x31t
        0x32t
        0x72t
        0x6at
        0x46t
        0x9t
        0x63t
        0x1dt
        -0x32t
        0x69t
        0xet
        -0x7bt
        -0x4ct
        0x16t
        -0x1t
        0x3bt
        -0x64t
        -0x50t
        -0x31t
        -0x59t
        -0xat
        0x52t
        -0x79t
        -0x46t
        0x59t
        0x1et
        -0x23t
        -0x58t
        -0x58t
        0x34t
        0x61t
        -0x5dt
        -0x4t
        0x19t
        -0x40t
        0x1ct
        -0x8t
        0x6t
        0x9t
        0x5ft
        0x42t
        -0x62t
        -0x12t
        0x70t
        -0x15t
        0xet
        -0x4bt
        0x34t
        -0x1dt
        0x50t
        -0x58t
        -0x41t
        0xat
        0x30t
        -0x20t
        0x6ft
        0x67t
        -0xft
        0x3bt
        0x27t
        0x72t
        0x3ft
        0x3dt
        0x7ct
        0x3bt
        -0x80t
        0x28t
        -0x4t
        -0x14t
        -0x40t
        -0x78t
        0x1ct
        0xet
        0x1t
        0x7et
        -0x28t
        0x3at
        0x5bt
        -0x5t
        -0xdt
        0x5ft
        0x29t
        0x56t
        0x40t
        -0xet
        -0x40t
        0x74t
        0x19t
        0x58t
        0xat
        -0x1t
        0x40t
        -0x55t
        0x7ft
        -0x24t
        0x56t
        -0x25t
        0x16t
        0x25t
        0x74t
        -0x4bt
        -0xct
        0x5at
        0x29t
        0x25t
        -0x4et
        -0x61t
        -0x2ct
        -0x29t
        0x22t
        -0xat
        -0x48t
        0x5ft
        -0xet
        -0x22t
        0x6at
        -0x6dt
        0x47t
        0x71t
        0x52t
        0x9t
        0x1dt
        0x17t
        -0x3at
        -0x42t
        0x13t
        0x1ct
        0x55t
        -0x4et
        0x70t
        -0x3at
        -0x2dt
        0x58t
        -0x77t
        0x22t
        -0x7t
        0x4bt
        -0x5at
        0x54t
        0x4t
        0x64t
        0x63t
        0x19t
        0xet
        0x4et
        0x25t
        -0x2at
        -0x5et
        -0x57t
        0x35t
        -0x22t
        -0x4ct
        -0x26t
        -0x44t
        0x16t
        -0x3et
        -0x41t
        -0x16t
        0x6bt
        0x2et
        0x37t
        -0x7dt
        -0x6t
        0x1dt
        -0x16t
        0x38t
        0x47t
        -0xft
        -0x5ct
        -0x3at
        0xdt
        0xdt
        0x65t
        0x15t
        0x19t
        -0x27t
        0x76t
        0x58t
        -0x71t
        -0x2t
        -0x62t
        0x4et
        0x35t
        -0x1t
        0x73t
        -0x26t
        -0x27t
        -0x7at
        -0x53t
        0x42t
        -0x64t
        -0x7at
        0x74t
        -0x12t
        -0x40t
        -0x41t
        -0x75t
        0x1dt
        0x70t
        0x8t
        0x72t
        0x37t
        0x6ct
        -0x69t
        0x21t
        -0x71t
        0x43t
        0x7at
        -0x50t
        0x2dt
        -0x52t
        0x43t
        -0x16t
        -0x70t
        0x59t
        -0x38t
        -0xbt
        -0x70t
        0x2at
        0x78t
        0x74t
        -0x45t
        -0x48t
        0x20t
        -0x71t
        0x40t
        0xet
        -0x79t
        0x7ct
        0x8t
        -0x57t
        0x43t
        0x76t
        -0x3ct
        0x18t
        -0x4at
        0x41t
        0x76t
        0x7t
        -0x9t
        0xct
        0x24t
        -0x57t
        0x2bt
        0x75t
        -0x5bt
        -0x52t
        -0x2ct
        -0x6bt
        -0x46t
        0x52t
        0x57t
        -0x2t
        0x43t
        -0x37t
        -0x5ft
        0x14t
        -0x6et
        0x36t
        -0x20t
        0x59t
        0x7t
        0x7et
        0x2ft
        0x70t
        0x3t
        -0x53t
        -0x80t
        0x6at
        -0x67t
        -0x41t
        0x7ft
        0x34t
        0x11t
        -0x48t
        0x2bt
        -0xdt
        -0x45t
        0x52t
        0x9t
        -0x30t
        0x4ct
        -0x24t
        0x2ft
        -0x42t
        -0x1ct
        0x72t
        0x51t
        0x5t
        -0x4et
        -0x7bt
        -0x1bt
        0xet
        0x38t
        0x41t
        -0x1et
        -0x9t
        0xft
        -0x59t
        -0x48t
        0x53t
        0x7ct
        -0x6at
        -0x8t
        0x3dt
        0x64t
        -0x51t
        0x78t
        0x47t
        -0x26t
        0x2dt
        -0xdt
        -0x9t
        -0x5ct
        0x30t
        -0x1ft
        0x72t
        -0x5bt
        -0x70t
        0x9t
        0x21t
        -0x6dt
        0x42t
        -0x12t
        0x62t
        -0x9t
        0x3ct
        0x7et
        -0x79t
        0x74t
        -0x77t
        -0x2t
        -0x26t
        0x0t
        0x69t
        -0x18t
        -0x13t
        -0x58t
        0x2et
        0x72t
        -0x43t
        0x0t
        -0x43t
        -0x5dt
        -0x30t
        -0x25t
        0xbt
        -0x7t
        0x15t
        0x79t
        0x49t
        -0x1ct
        -0x21t
        0xbt
        -0x73t
        -0x6bt
        0x16t
        -0x9t
        -0x2at
        0x4ft
        -0x1et
        0xet
        0x73t
        -0x43t
        0x7dt
        -0x53t
        0x7ft
        0x10t
        0x26t
        0x6at
        0x1ct
        0x30t
        0x17t
        0x58t
        0x46t
        0x27t
        0x6dt
        -0x4t
        -0x68t
        0x31t
        0x43t
        -0x23t
        0x25t
        -0x1dt
        -0x59t
        -0x6bt
        0x75t
        0x77t
        0xft
        -0x10t
        0xet
        0x66t
        -0x1dt
        -0x55t
        0x2ft
        -0x3at
        0x9t
        0x23t
        0x29t
        -0x71t
        -0x7at
        0x75t
        0x77t
        0x3ft
        0x6ft
        -0x41t
        0x7et
        -0x4ct
        -0x4ft
        0x37t
        0x5et
        0x11t
        0x37t
        0x62t
        -0x7at
        -0x4at
        -0x6ct
        0x78t
        0x71t
        0x1t
        0xct
        -0x3at
        -0x56t
        -0x78t
        0x57t
        0x5ft
        0x1dt
        -0x77t
        -0x51t
        -0x52t
        0x64t
        0x12t
        0x2et
        -0x1et
        -0x53t
        -0x30t
        -0x1et
        0x15t
        -0x3ct
        0x1bt
        0xbt
        -0x7at
        -0x57t
        -0x7bt
        0x57t
        -0x56t
        -0x3et
        0x6t
        -0xft
        -0x1et
        0x6et
        -0x77t
        0x67t
        0x24t
        0x6at
        0x4t
        -0x43t
        0x1at
        0x7ft
        -0x43t
        -0xct
        -0x7at
        -0xct
        0x60t
        0x4t
        -0x4at
        0x58t
        -0x6ct
        -0x23t
        0x1at
        -0x43t
        -0x3ft
        0xat
        -0x1t
        -0x4et
        0x18t
        -0x22t
        0x27t
        0x6bt
        0x6bt
        -0x2t
        0xat
        0x1dt
        0x11t
        -0x69t
        -0x1ft
        -0x76t
        -0x16t
        -0x29t
        0x62t
        0x31t
        0x6dt
        0x35t
        -0x13t
        0x35t
        0x64t
        -0x4t
        -0x54t
        0x57t
        -0x3bt
        -0x7et
        -0x4bt
        0x2at
        0x4bt
        0x40t
        -0x55t
        0xct
        0x5t
        -0x78t
        -0x49t
        0x3ct
        0x6at
        -0x50t
        0x7t
        -0x11t
        0x17t
        0x57t
        0x51t
        -0x1et
        0xdt
        0x44t
        0x2bt
        0x2bt
        -0x2ft
        -0x69t
        -0x18t
        -0x41t
        0x3ct
        -0x4et
        -0x3et
        0x4bt
        -0x79t
        -0x2bt
        0x7bt
        0x65t
        0x30t
        0x16t
        0xft
        0x45t
        0x23t
        -0x1ct
        0x6ft
        0x4bt
        0x43t
        -0x4ft
        -0x52t
        0x32t
        -0x4ft
        0x7et
        -0x25t
        -0x8t
        -0x3t
        -0x32t
        -0x21t
        0x4ct
        0x70t
        0x65t
        -0x4at
        -0x69t
        0x38t
        0x4et
        -0x2et
        0x3dt
        0x2at
        0x38t
        -0x76t
        -0x28t
        0x5bt
        -0x13t
        -0x7ct
        0x4dt
        0x66t
        0x7bt
        -0x74t
        0x63t
        0x6ft
        -0x7ft
        0x78t
        -0x63t
        -0x3bt
        0x3et
        -0x6ct
        -0x27t
        -0x22t
        -0x1dt
        0x18t
        -0x3bt
        0x74t
        0x5et
        0x14t
        -0x7ft
        -0x12t
        0x62t
        -0x13t
        0x64t
        -0x4at
        -0x29t
        0x39t
        0x4at
        -0x54t
        0x3ct
        -0x4ft
        -0x49t
        -0x6t
        0xbt
        -0x22t
        0x68t
        0x76t
        0x46t
        0x38t
        -0x24t
        -0x7et
        0x57t
        -0x31t
        -0x3et
        0x1bt
        0x24t
        0x72t
        -0x50t
        -0x2dt
        0x7dt
        0x6at
        -0x1dt
        -0x68t
        0x61t
        -0x37t
        -0x31t
        0x29t
        -0x48t
        -0x3dt
        0x2ct
        -0x44t
        0x2at
        0x1bt
        -0x39t
        0x1et
        -0x27t
        -0x36t
        -0x1dt
        -0x5bt
        -0x2ct
        0x32t
        0x7ft
        -0x56t
        -0x63t
        -0x5dt
        -0x4bt
        0x25t
        -0x62t
        0x22t
        0x64t
        -0x67t
        -0x7bt
        -0x19t
        -0x4at
        0x73t
        0x74t
        0x2bt
        0x30t
        0x2ft
        -0x75t
        0x2ct
        -0x44t
        0x9t
        0x76t
        -0x72t
        0x4dt
        -0x2et
        -0x11t
        -0xft
        -0x36t
        0x6bt
        0x78t
        -0x2at
        0x6ft
        0x42t
        -0x41t
        -0xdt
        0x56t
        0x0t
        -0x73t
        -0x27t
        -0x66t
        -0x78t
        0x6ft
        0x3ft
        0xet
        -0x1ct
        0x58t
        -0x80t
        -0x49t
        0x11t
        0x70t
        0x8t
        0x5et
        -0x66t
        -0x62t
        -0x49t
        0x3ft
        -0x10t
        0x52t
        0x62t
        -0x14t
        0x36t
        0x71t
        0x2et
        0x2ft
        -0x4t
        -0x7ft
        -0x49t
        0x57t
        -0x34t
        -0x63t
        0x4dt
        -0x64t
        -0x2bt
        -0x15t
        -0x6ct
        0x27t
        0x41t
        -0x31t
        0x5bt
        -0x49t
        -0x3dt
        -0x6at
        0x6ft
        0x1et
        -0x49t
        0x3bt
        0x0t
        0x48t
        -0x4at
        0x79t
        -0x7ft
        0x78t
        0x47t
        0x2dt
        -0x44t
        0x67t
        0x1dt
        0x0t
        -0x10t
        0x5ct
        0x5t
        0x78t
        -0x59t
        0x59t
        0x5ct
        -0x2ft
        -0x71t
        -0x65t
        0x27t
        -0x55t
        0x14t
        -0x20t
        -0x5bt
        0x45t
        -0x44t
        -0x42t
        -0x6at
        0x5t
        0x75t
        0x5at
        -0x29t
        0x43t
        -0x20t
        -0x5et
        -0x28t
        0x3ft
        0x35t
        0x34t
        0x67t
        -0x7ft
        0x7et
        0x6bt
        0x72t
        -0x55t
        0x2dt
        -0x43t
        -0x40t
        0x7bt
        0x50t
        0x60t
        0x7dt
        0x7ft
        0x0t
        0x50t
        0x4bt
        0x1t
        0x2t
        0x3ft
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x77t
        0x4ft
        -0x57t
        0x48t
        -0xft
        -0x71t
        -0x52t
        0xet
        -0x46t
        0x6t
        0x0t
        0x0t
        -0x64t
        0x14t
        0x0t
        0x0t
        0x9t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x79t
        0x63t
        0x70t
        0x75t
        0x69t
        0x6et
        0x66t
        0x6ft
        0xat
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x18t
        0x0t
        -0x32t
        0x7et
        -0xat
        0x74t
        -0x6at
        -0x57t
        -0x2ft
        0x1t
        -0x27t
        0x5dt
        -0xbt
        0x74t
        -0x6at
        -0x57t
        -0x2ft
        0x1t
        0x3et
        0x5ct
        -0x6bt
        -0x80t
        -0x21t
        -0x5bt
        -0x2ft
        0x1t
        0x50t
        0x4bt
        0x5t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x5bt
        0x0t
        0x0t
        0x0t
        -0x1ft
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static p()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v0, "/proc/meminfo"

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v4, ":\\s+"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "kb"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static q()Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "null"

    goto :goto_0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

    :try_start_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tp/r;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tp/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

    return-object v0
.end method
