.class abstract Lcom/subao/common/a/c$aa;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:J

.field private b:Lcom/subao/common/a/c;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/subao/common/a/c;JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/a/c;",
            "JTC;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2392
    iput-object p1, p0, Lcom/subao/common/a/c$aa;->b:Lcom/subao/common/a/c;

    .line 2393
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subao/common/a/c$aa;->a:J

    .line 2394
    iput-object p4, p0, Lcom/subao/common/a/c$aa;->c:Ljava/lang/Object;

    .line 2395
    iput-object p5, p0, Lcom/subao/common/a/c$aa;->d:Ljava/lang/Object;

    .line 2396
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2417
    iput-object v0, p0, Lcom/subao/common/a/c$aa;->b:Lcom/subao/common/a/c;

    .line 2418
    iput-object v0, p0, Lcom/subao/common/a/c$aa;->c:Ljava/lang/Object;

    .line 2419
    iput-object v0, p0, Lcom/subao/common/a/c$aa;->d:Ljava/lang/Object;

    .line 2420
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation
.end method

.method abstract a(Lcom/subao/common/a/c;)Z
.end method

.method public run()V
    .locals 6

    .prologue
    .line 2400
    invoke-static {}, Lcom/subao/common/a/c;->F()J

    move-result-wide v0

    .line 2401
    iget-wide v2, p0, Lcom/subao/common/a/c$aa;->a:J

    add-long/2addr v2, v0

    .line 2402
    const/4 v0, 0x1

    .line 2404
    :cond_0
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2405
    iget-object v1, p0, Lcom/subao/common/a/c$aa;->b:Lcom/subao/common/a/c;

    invoke-virtual {p0, v1}, Lcom/subao/common/a/c$aa;->a(Lcom/subao/common/a/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2406
    const/4 v0, 0x0

    .line 2412
    :goto_0
    iget-object v1, p0, Lcom/subao/common/a/c$aa;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/subao/common/a/c$aa;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/subao/common/a/c$aa;->a(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 2413
    invoke-direct {p0}, Lcom/subao/common/a/c$aa;->a()V

    .line 2414
    return-void

    .line 2409
    :cond_1
    invoke-static {}, Lcom/subao/common/a/c;->F()J

    move-result-wide v4

    .line 2411
    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    goto :goto_0
.end method
