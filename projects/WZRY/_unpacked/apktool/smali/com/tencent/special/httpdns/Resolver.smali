.class public Lcom/tencent/special/httpdns/Resolver;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/concurrent/ConcurrentHashMap;

.field private static o:Lcom/tencent/special/httpdns/Resolver;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Thread;

.field private g:Ljava/lang/Thread;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;

.field private j:Landroid/os/HandlerThread;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/special/httpdns/Resolver;->o:Lcom/tencent/special/httpdns/Resolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->k:Z

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->l:Z

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->m:Z

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->n:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->j:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->b:Ljava/lang/Object;

    new-instance v0, Lcom/tencent/special/httpdns/c;

    iget-object v1, p0, Lcom/tencent/special/httpdns/Resolver;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/special/httpdns/c;-><init>(Lcom/tencent/special/httpdns/Resolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/special/httpdns/Resolver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/tencent/special/httpdns/Resolver;->f:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/tencent/special/httpdns/Resolver;->g:Ljava/lang/Thread;

    :cond_1
    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->h:Ljava/lang/Runnable;

    check-cast v0, Lcom/tencent/special/httpdns/d;

    invoke-virtual {v0, v1}, Lcom/tencent/special/httpdns/d;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->i:Ljava/lang/Runnable;

    check-cast v0, Lcom/tencent/special/httpdns/e;

    invoke-virtual {v0, v1}, Lcom/tencent/special/httpdns/e;->a(Z)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V
    .locals 6

    const/4 v4, 0x4

    const-string v0, "processHttpDnsResult"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->l:Z

    iget-object v0, p1, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "processHttpDnsResult lock notify"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/tencent/special/httpdns/b;->a:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "httpDNSRefreshDelay clean cache, ttl is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v4, v2, Landroid/os/Message;->what:I

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    long-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->f:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/tencent/special/httpdns/Resolver;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->l:Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/special/httpdns/Resolver;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->d:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get imei fail, msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private b(Lcom/tencent/special/httpdns/b;)Ljava/lang/String;
    .locals 14

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const-string v8, ">srW/8;&"

    iget-object v0, p1, Lcom/tencent/special/httpdns/b;->e:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/tencent/special/httpdns/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/special/httpdns/Resolver;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Cache;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/tencent/special/httpdns/b;->d:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "http://182.254.116.117/d?dn="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&clientip=1&ttl=1&id=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Dns URL: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iget v1, p0, Lcom/tencent/special/httpdns/Resolver;->c:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/tencent/special/httpdns/Resolver;->c:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v5

    move-object v1, v5

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    iput-object v0, p1, Lcom/tencent/special/httpdns/b;->k:Ljava/lang/String;

    iput-wide v2, p1, Lcom/tencent/special/httpdns/b;->a:J

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetHttpDns network type is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",ttl is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",clientip is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",dns is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    return-object v1

    :cond_1
    :try_start_2
    invoke-static {v4, v8}, Lcom/tencent/special/httpdns/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HttpDnsServer response ips are "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    const-string/jumbo v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move v5, v7

    move v4, v7

    :goto_2
    array-length v13, v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    if-lt v5, v13, :cond_3

    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    if-eqz v11, :cond_9

    :try_start_3
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const-string v4, ","

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    :try_start_4
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v2

    move-object v0, v5

    move-object v1, v6

    goto/16 :goto_0

    :cond_3
    :try_start_6
    aget-object v4, v12, v5

    invoke-static {v4}, Lcom/tencent/special/httpdns/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v6}, Lcom/tencent/special/httpdns/a;->a(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v4

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ttl error:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v5

    move-object v1, v6

    goto/16 :goto_0

    :cond_5
    :try_start_8
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move v6, v7

    move v4, v7

    :goto_4
    array-length v13, v12
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    if-lt v6, v13, :cond_7

    :cond_6
    :goto_5
    if-eqz v4, :cond_0

    :try_start_9
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-wide v2

    move-object v1, v5

    goto/16 :goto_0

    :cond_7
    :try_start_a
    aget-object v4, v12, v6

    invoke-static {v4}, Lcom/tencent/special/httpdns/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    invoke-static {v5}, Lcom/tencent/special/httpdns/a;->a(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-result v4

    goto :goto_5

    :catch_1
    move-exception v4

    move-object v0, v5

    move-object v1, v5

    :goto_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    move-object v0, v5

    move-object v1, v6

    goto :goto_6

    :catch_3
    move-exception v4

    goto :goto_6

    :catch_4
    move-exception v4

    move-object v1, v6

    goto :goto_6

    :catch_5
    move-exception v4

    move-object v1, v5

    goto :goto_6

    :cond_9
    move-object v1, v6

    goto/16 :goto_0

    :cond_a
    move-object v0, v5

    move-object v1, v6

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V
    .locals 1

    const-string v0, "processLocalDnsResult"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->g:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic b(Lcom/tencent/special/httpdns/Resolver;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->m:Z

    return-void
.end method

.method static synthetic c(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processTimeout mTimeOut is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/special/httpdns/Resolver;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lock notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/tencent/special/httpdns/Resolver;->n:Z

    iget-object v0, p1, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/special/httpdns/Resolver;->c:I

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/tencent/special/httpdns/b;->n:J

    :cond_0
    iget-object v0, p1, Lcom/tencent/special/httpdns/b;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/special/httpdns/Resolver;->c:I

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/tencent/special/httpdns/b;->o:J

    :cond_1
    iget-object v0, p1, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/special/httpdns/b;->c:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/tencent/special/httpdns/Resolver;->a()V

    iget-object v1, p0, Lcom/tencent/special/httpdns/Resolver;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "process timeout mLock notify"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/b;Ljava/lang/Boolean;)V

    return-void

    :cond_2
    iget-object v0, p1, Lcom/tencent/special/httpdns/b;->j:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/special/httpdns/b;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/tencent/special/httpdns/Resolver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/special/httpdns/Resolver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/special/httpdns/Resolver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/special/httpdns/Resolver;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/special/httpdns/Resolver;->a()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/special/httpdns/Resolver;
    .locals 2

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->o:Lcom/tencent/special/httpdns/Resolver;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/special/httpdns/Resolver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->o:Lcom/tencent/special/httpdns/Resolver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/special/httpdns/Resolver;

    invoke-direct {v0}, Lcom/tencent/special/httpdns/Resolver;-><init>()V

    sput-object v0, Lcom/tencent/special/httpdns/Resolver;->o:Lcom/tencent/special/httpdns/Resolver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->o:Lcom/tencent/special/httpdns/Resolver;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tencent/special/httpdns/b;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/special/httpdns/Resolver;->b(Lcom/tencent/special/httpdns/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/special/httpdns/b;Ljava/lang/Boolean;)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/special/httpdns/Resolver;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/special/httpdns/b;->b:Ljava/lang/String;

    const-string v0, "0.0.1a"

    iput-object v0, p1, Lcom/tencent/special/httpdns/b;->f:Ljava/lang/String;

    const-string v0, "NULL"

    iput-object v0, p1, Lcom/tencent/special/httpdns/b;->g:Ljava/lang/String;

    const-string v0, "NULL"

    iput-object v0, p1, Lcom/tencent/special/httpdns/b;->h:Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appID"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->g:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "openID"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->h:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isCache"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dns"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->c:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "userID"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_Version"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->f:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "netType"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->d:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ttl"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/tencent/special/httpdns/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domain"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->e:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hdns_ip"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ldns_ip"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->j:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientIP"

    iget-object v1, p1, Lcom/tencent/special/httpdns/b;->k:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hdns_time"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/tencent/special/httpdns/b;->n:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ldns_time"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/tencent/special/httpdns/b;->o:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/tencent/special/httpdns/b;->l:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "MSDKGetHostByName reportDNSEvent to beacon begin"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    const-string v0, "MSDKGetHostByName"

    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized getAddrByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAddrByName start domain is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/special/httpdns/Resolver;->a()V

    new-instance v2, Lcom/tencent/special/httpdns/b;

    invoke-direct {v2}, Lcom/tencent/special/httpdns/b;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/special/httpdns/b;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get dns from cache are "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/special/httpdns/LogOut;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/b;Ljava/lang/Boolean;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object p1, v2, Lcom/tencent/special/httpdns/b;->e:Ljava/lang/String;

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/special/httpdns/Resolver;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "getAddrByName mLock"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->n:Z

    new-instance v0, Lcom/tencent/special/httpdns/d;

    invoke-direct {v0, p0, v2}, Lcom/tencent/special/httpdns/d;-><init>(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->h:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/tencent/special/httpdns/Resolver;->h:Ljava/lang/Runnable;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/tencent/special/httpdns/e;

    invoke-direct {v0, p0, v2}, Lcom/tencent/special/httpdns/e;-><init>(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->i:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/tencent/special/httpdns/Resolver;->i:Ljava/lang/Runnable;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x3

    iput v4, v0, Landroid/os/Message;->what:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/special/httpdns/Resolver;->e:Landroid/os/Handler;

    iget v4, p0, Lcom/tencent/special/httpdns/Resolver;->c:I

    int-to-long v4, v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Get dns from network are "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/special/httpdns/b;

    iget-object v0, v0, Lcom/tencent/special/httpdns/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hdns is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/special/httpdns/b;

    iget-object v0, v0, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localDns is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/special/httpdns/b;

    iget-object v0, v0, Lcom/tencent/special/httpdns/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",domain is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/special/httpdns/b;

    iget-object v0, v0, Lcom/tencent/special/httpdns/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/special/httpdns/b;

    iget-object v0, v0, Lcom/tencent/special/httpdns/b;->c:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method public init(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/special/httpdns/Resolver;->d:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/tencent/special/httpdns/Resolver;->k:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/special/httpdns/Cache;

    invoke-direct {v0}, Lcom/tencent/special/httpdns/Cache;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/special/httpdns/Resolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput p2, p0, Lcom/tencent/special/httpdns/Resolver;->c:I

    if-eqz p3, :cond_2

    sput-boolean v1, Lcom/tencent/special/httpdns/LogOut;->isDebug:Z

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/special/httpdns/Resolver;->k:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "init error"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/special/httpdns/LogOut;->isDebug:Z

    goto :goto_0
.end method
