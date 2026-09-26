.class public final Lcom/netease/codescanner/a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/codescanner/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/netease/codescanner/CodeScanner;

.field private final b:Lcom/netease/codescanner/d;

.field private c:Lcom/netease/codescanner/a$a;

.field private final d:Lcom/netease/codescanner/camera/b;

.field private e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/codescanner/CodeScanner;Lcom/netease/codescanner/camera/b;Lcom/netease/codescanner/CodeScanConfig;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/netease/codescanner/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/codescanner/a;->a:Lcom/netease/codescanner/CodeScanner;

    new-instance v0, Lcom/netease/codescanner/d;

    iget-object v1, p0, Lcom/netease/codescanner/a;->e:Landroid/content/Context;

    new-instance v2, Lcom/netease/codescanner/widget/a;

    invoke-virtual {p2}, Lcom/netease/codescanner/CodeScanner;->getViewfinderView()Lcom/netease/codescanner/widget/ViewfinderView;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netease/codescanner/widget/a;-><init>(Lcom/netease/codescanner/widget/ViewfinderView;)V

    invoke-direct {v0, v1, p0, p4, v2}, Lcom/netease/codescanner/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netease/codescanner/CodeScanConfig;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/netease/codescanner/a;->b:Lcom/netease/codescanner/d;

    iget-object v0, p0, Lcom/netease/codescanner/a;->b:Lcom/netease/codescanner/d;

    invoke-virtual {v0}, Lcom/netease/codescanner/d;->start()V

    iput-object p3, p0, Lcom/netease/codescanner/a;->d:Lcom/netease/codescanner/camera/b;

    invoke-virtual {p3}, Lcom/netease/codescanner/camera/b;->d()V

    invoke-direct {p0}, Lcom/netease/codescanner/a;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    sget-object v0, Lcom/netease/codescanner/a$a;->a:Lcom/netease/codescanner/a$a;

    iput-object v0, p0, Lcom/netease/codescanner/a;->c:Lcom/netease/codescanner/a$a;

    iget-object v0, p0, Lcom/netease/codescanner/a;->d:Lcom/netease/codescanner/camera/b;

    iget-object v1, p0, Lcom/netease/codescanner/a;->b:Lcom/netease/codescanner/d;

    invoke-virtual {v1}, Lcom/netease/codescanner/d;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Lcom/netease/codescanner/camera/b;->a(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    sget-object v0, Lcom/netease/codescanner/a$a;->c:Lcom/netease/codescanner/a$a;

    iput-object v0, p0, Lcom/netease/codescanner/a;->c:Lcom/netease/codescanner/a$a;

    iget-object v0, p0, Lcom/netease/codescanner/a;->d:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->e()V

    iget-object v0, p0, Lcom/netease/codescanner/a;->b:Lcom/netease/codescanner/d;

    invoke-virtual {v0}, Lcom/netease/codescanner/d;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2714

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/netease/codescanner/a;->b:Lcom/netease/codescanner/d;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/netease/codescanner/d;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/netease/codescanner/a;->removeMessages(I)V

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/netease/codescanner/a;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_1

    const-string v0, "State: RestartPreview"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/codescanner/a;->c:Lcom/netease/codescanner/a$a;

    sget-object v1, Lcom/netease/codescanner/a$a;->b:Lcom/netease/codescanner/a$a;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netease/codescanner/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_2

    const-string v0, "State: Decode Succeeded"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/netease/codescanner/a$a;->b:Lcom/netease/codescanner/a$a;

    iput-object v0, p0, Lcom/netease/codescanner/a;->c:Lcom/netease/codescanner/a$a;

    iget-object v1, p0, Lcom/netease/codescanner/a;->a:Lcom/netease/codescanner/CodeScanner;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/codescanner/CodeScanner$DecodeResult;

    invoke-virtual {v1, v0}, Lcom/netease/codescanner/CodeScanner;->handleDecodeSuccess(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    const-string v0, "State: Decode Failed"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/netease/codescanner/a$a;->a:Lcom/netease/codescanner/a$a;

    iput-object v0, p0, Lcom/netease/codescanner/a;->c:Lcom/netease/codescanner/a$a;

    iget-object v0, p0, Lcom/netease/codescanner/a;->d:Lcom/netease/codescanner/camera/b;

    iget-object v1, p0, Lcom/netease/codescanner/a;->b:Lcom/netease/codescanner/d;

    invoke-virtual {v1}, Lcom/netease/codescanner/d;->a()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Lcom/netease/codescanner/camera/b;->a(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/netease/codescanner/a;->a:Lcom/netease/codescanner/CodeScanner;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/codescanner/CodeScanner$DecodeResult;

    invoke-virtual {v1, v0}, Lcom/netease/codescanner/CodeScanner;->handleDecodeError(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V

    goto :goto_0
.end method
