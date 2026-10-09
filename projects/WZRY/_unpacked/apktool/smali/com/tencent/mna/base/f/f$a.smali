.class Lcom/tencent/mna/base/f/f$a;
.super Ljava/lang/Thread;
.source "IpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:[Ljava/net/InetAddress;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/mna/base/f/f$a;-><init>(Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 285
    iput-object v0, p0, Lcom/tencent/mna/base/f/f$a;->a:[Ljava/net/InetAddress;

    .line 286
    iput-object v0, p0, Lcom/tencent/mna/base/f/f$a;->b:Ljava/lang/String;

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mna/base/f/f$a;->c:I

    .line 294
    iput-object p1, p0, Lcom/tencent/mna/base/f/f$a;->b:Ljava/lang/String;

    .line 295
    iput p2, p0, Lcom/tencent/mna/base/f/f$a;->c:I

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tencent/mna/base/f/f$1;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/base/f/f$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tencent/mna/base/f/f$1;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/tencent/mna/base/f/f$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a([Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/mna/base/f/f$a;->a:[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/base/f/f$a;->a:[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/mna/base/f/f$a;)[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/tencent/mna/base/f/f$a;->a()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 301
    .line 302
    :try_start_0
    iget v0, p0, Lcom/tencent/mna/base/f/f$a;->c:I

    if-lez v0, :cond_0

    .line 304
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "getAllByNameOnNet"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 305
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mna/base/f/f$a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/mna/base/f/f$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    check-cast v0, [Ljava/net/InetAddress;

    .line 310
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/mna/base/f/f$a;->a([Ljava/net/InetAddress;)V

    .line 314
    :goto_1
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/base/f/f$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dns exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
