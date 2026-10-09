.class public final Lc/t/m/g/al;
.super Lc/t/m/g/ap;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lc/t/m/g/ap$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/t/m/g/ap;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/t/m/g/al;Z)Z
    .locals 2

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lc/t/m/g/al;->b:Lc/t/m/g/ap$a;

    iget-object v1, p0, Lc/t/m/g/al;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lc/t/m/g/ap$a;->a(ZLjava/lang/Object;)V

    .line 0
    return p1
.end method


# virtual methods
.method public final a([BIZLjava/lang/Object;Lc/t/m/g/ap$a;)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-object p5, p0, Lc/t/m/g/al;->b:Lc/t/m/g/ap$a;

    iput-object p4, p0, Lc/t/m/g/al;->a:Ljava/lang/Object;

    invoke-static {p1}, Lc/t/m/g/ce;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lc/t/m/g/al;->b:Lc/t/m/g/ap$a;

    iget-object v1, p0, Lc/t/m/g/al;->a:Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lc/t/m/g/ap$a;->a(ZLjava/lang/Object;)V

    move v0, v6

    .line 0
    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "B-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HLReportCmd"

    if-eqz p3, :cond_1

    const-string v0, "realtime_speed"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://up-hl.3g.qq.com/upreport"

    const/16 v3, 0x4e20

    invoke-static {}, Lc/t/m/g/ce;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lc/t/m/g/af;->a(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;Lc/t/m/g/r;)Lc/t/m/g/af;

    move-result-object v0

    iput-boolean v6, v0, Lc/t/m/g/af;->o:Z

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lc/t/m/g/af;->a(Ljava/lang/String;)V

    new-instance v1, Lc/t/m/g/am;

    invoke-direct {v1, p0, v0, v8, v9}, Lc/t/m/g/am;-><init>(Lc/t/m/g/al;Lc/t/m/g/af;J)V

    :try_start_0
    invoke-static {}, Lc/t/m/g/w$a;->a()Lc/t/m/g/w;

    move-result-object v0

    iget-object v0, v0, Lc/t/m/g/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "hllog"

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2000
    iget-object v0, p0, Lc/t/m/g/al;->b:Lc/t/m/g/ap$a;

    iget-object v1, p0, Lc/t/m/g/al;->a:Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Lc/t/m/g/ap$a;->a(ZLjava/lang/Object;)V

    move v0, v6

    .line 0
    goto :goto_0
.end method
