.class public final Lcom/netease/mobile/link/n5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 26

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "ntp1.aliyun.com"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/16 v3, 0x30

    :try_start_1
    new-array v4, v3, [B

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v5, Ljava/net/DatagramPacket;

    const/16 v6, 0x7b

    invoke-direct {v5, v4, v3, v0, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v0, 0x1b

    const/4 v6, 0x0

    aput-byte v0, v4, v6

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v1, v4, v7, v8}, Lcom/netease/mobile/link/n5;->a([BJ)V

    new-instance v11, Ljava/net/DatagramSocket;

    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x7530

    :try_start_2
    invoke-virtual {v11, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v11, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v0, 0x8

    new-array v2, v0, [J

    new-instance v5, Ljava/net/DatagramPacket;

    invoke-direct {v5, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v11, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/4 v3, 0x7

    aput-wide v12, v2, v3

    const/16 v5, 0x18

    invoke-virtual {v1, v4, v5}, Lcom/netease/mobile/link/n5;->b([BI)J

    move-result-wide v14

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Lcom/netease/mobile/link/n5;->b([BI)J

    move-result-wide v16

    const/16 v5, 0x28

    invoke-virtual {v1, v4, v5}, Lcom/netease/mobile/link/n5;->b([BI)J

    move-result-wide v18

    sub-long/2addr v12, v9

    add-long/2addr v12, v7

    aput-wide v14, v2, v6

    const/4 v5, 0x1

    aput-wide v16, v2, v5

    const/4 v7, 0x2

    aput-wide v18, v2, v7

    const/4 v8, 0x3

    aput-wide v12, v2, v8

    const/4 v9, 0x4

    invoke-virtual {v1, v4, v9}, Lcom/netease/mobile/link/n5;->a([BI)J

    move-result-wide v20

    aput-wide v20, v2, v9

    aget-wide v7, v2, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-double v7, v7

    const-wide v21, 0x4050624dd2f1a9fcL    # 65.536

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v7, v21

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    cmpl-double v25, v7, v23

    if-gtz v25, :cond_7

    :try_start_3
    invoke-virtual {v1, v4, v0}, Lcom/netease/mobile/link/n5;->a([BI)J

    move-result-wide v7

    const/4 v0, 0x5

    aput-wide v7, v2, v0

    aget-wide v7, v2, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v7, v21

    cmpl-double v21, v7, v23

    if-gtz v21, :cond_6

    :try_start_4
    aget-byte v7, v4, v6

    and-int/2addr v3, v7

    int-to-byte v3, v3

    if-eq v3, v9, :cond_1

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: mode invalid"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    aget-byte v0, v4, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v7, v0

    const/4 v3, 0x6

    aput-wide v7, v2, v3

    if-lt v0, v5, :cond_5

    const/16 v7, 0xf

    if-gt v0, v7, :cond_5

    aget-byte v0, v4, v6

    shr-int/2addr v0, v3

    const/4 v3, 0x3

    and-int/2addr v0, v3

    int-to-byte v0, v0

    if-eq v0, v3, :cond_4

    sub-long/2addr v12, v14

    sub-long v18, v18, v16

    sub-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v7, 0x4087700000000000L    # 750.0

    cmpl-double v0, v3, v7

    if-gez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v7, 0x2710

    cmp-long v0, v3, v7

    if-gez v0, :cond_2

    aget-wide v3, v2, v5

    aget-wide v5, v2, v6

    sub-long/2addr v3, v5

    const/4 v0, 0x2

    aget-wide v5, v2, v0

    const/4 v0, 0x3

    aget-wide v7, v2, v0

    sub-long/2addr v5, v7

    add-long/2addr v5, v3

    const-wide/16 v3, 0x2

    .line 3
    div-long/2addr v5, v3

    aget-wide v3, v2, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long/2addr v3, v5

    .line 5
    :try_start_5
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-wide v3

    :cond_2
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: time elapsed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: delay >= serverResponseDelayMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid response from NTP server: unsynchronized"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid response from NTP server: mode stratum"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: rootDispersion > rootDispersionMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid NTP response: rootDelay > rootDelayMax"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v11

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    move-object v11, v2

    :goto_3
    if-eqz v11, :cond_8

    :try_start_8
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V

    :cond_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([BI)J
    .locals 5

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    int-to-long v3, p2

    const/16 p2, 0x18

    shl-long/2addr v3, p2

    and-int/lit16 p2, v1, 0xff

    int-to-long v0, p2

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    and-int/lit16 p2, v2, 0xff

    int-to-long v0, p2

    const/16 p2, 0x8

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    add-long/2addr v3, p1

    return-wide v3
.end method

.method public final a([BJ)V
    .locals 9

    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    mul-long v4, v2, v0

    sub-long/2addr p2, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    const/16 v4, 0x18

    shr-long v5, v2, v4

    long-to-int v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x28

    aput-byte v5, p1, v6

    const/16 v5, 0x10

    shr-long v6, v2, v5

    long-to-int v7, v6

    int-to-byte v6, v7

    const/16 v7, 0x29

    aput-byte v6, p1, v7

    const/16 v6, 0x8

    shr-long v7, v2, v6

    long-to-int v8, v7

    int-to-byte v7, v8

    const/16 v8, 0x2a

    aput-byte v7, p1, v8

    const/4 v7, 0x0

    shr-long/2addr v2, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    const/16 v3, 0x2b

    aput-byte v2, p1, v3

    const-wide v2, 0x100000000L

    mul-long p2, p2, v2

    div-long/2addr p2, v0

    shr-long v0, p2, v4

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x2c

    aput-byte v0, p1, v1

    shr-long v0, p2, v5

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x2d

    aput-byte v0, p1, v1

    shr-long/2addr p2, v6

    long-to-int p3, p2

    int-to-byte p2, p3

    const/16 p3, 0x2e

    aput-byte p2, p1, p3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double p2, p2, v0

    double-to-int p2, p2

    int-to-byte p2, p2

    const/16 p3, 0x2f

    aput-byte p2, p1, p3

    return-void
.end method

.method public final b([BI)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/netease/mobile/link/n5;->a([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/netease/mobile/link/n5;->a([BI)J

    move-result-wide p1

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p1, p1, v2

    const-wide v2, 0x100000000L

    div-long/2addr p1, v2

    add-long/2addr p1, v0

    return-wide p1
.end method
