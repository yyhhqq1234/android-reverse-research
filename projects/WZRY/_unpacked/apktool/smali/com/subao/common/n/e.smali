.class public Lcom/subao/common/n/e;
.super Ljava/lang/Object;
.source "InfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/n/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/n/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/subao/common/n/d$a;->a:Lcom/subao/common/n/d$a;

    sput-object v0, Lcom/subao/common/n/e;->a:Lcom/subao/common/n/d$a;

    return-void
.end method

.method static a()J
    .locals 4

    .prologue
    .line 343
    const-string v0, "/proc/meminfo"

    const-string v1, "MemTotal"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/n/e;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 344
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 345
    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 347
    :cond_0
    return-wide v0
.end method

.method static a(Landroid/content/Context;I)J
    .locals 2

    .prologue
    .line 335
    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 336
    invoke-static {p0}, Lcom/subao/common/n/e;->f(Landroid/content/Context;)J

    move-result-wide v0

    .line 338
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/subao/common/n/e;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/subao/common/n/e;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static a([BLjava/lang/String;J)J
    .locals 8

    .prologue
    const/16 v6, 0xa

    .line 299
    array-length v2, p0

    .line 300
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    .line 301
    aget-byte v1, p0, v0

    .line 302
    if-eqz v0, :cond_0

    if-ne v1, v6, :cond_2

    .line 303
    :cond_0
    if-ne v1, v6, :cond_1

    .line 304
    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v1, v0

    .line 308
    :goto_1
    if-ge v1, v2, :cond_2

    .line 309
    sub-int v3, v1, v0

    .line 310
    aget-byte v4, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5

    .line 316
    array-length v0, p0

    const-wide/16 v2, -0x1

    invoke-static {p0, v1, v0, v2, v3}, Lcom/subao/common/e;->a([BIIJ)J

    move-result-wide p2

    .line 321
    :cond_4
    return-wide p2

    .line 308
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 238
    :cond_0
    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 291
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/subao/common/n/d;->a(Ljava/io/File;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    invoke-static {v0, p1, p2, p3}, Lcom/subao/common/n/e;->a([BLjava/lang/String;J)J

    move-result-wide p2

    :goto_0
    return-wide p2

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b()Lcom/subao/common/n/d$a;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/subao/common/n/e;->a:Lcom/subao/common/n/d$a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 146
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "wlan0"

    aput-object v1, v2, v0

    const-string v1, "eth0"

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "eth1"

    aput-object v3, v2, v1

    .line 148
    :try_start_0
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 149
    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 150
    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    .line 152
    if-eqz v4, :cond_2

    array-length v5, v4

    if-eqz v5, :cond_2

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    array-length v2, v4

    :goto_1
    if-ge v0, v2, :cond_1

    aget-byte v3, v4, v0

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 156
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :goto_2
    return-object v0

    .line 148
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 167
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 134
    invoke-static {}, Lcom/subao/common/n/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/subao/common/n/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0, v0}, Lcom/subao/common/n/e;->a(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 353
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 354
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 355
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 356
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method
