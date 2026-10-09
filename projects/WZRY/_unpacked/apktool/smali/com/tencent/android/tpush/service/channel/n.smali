.class Lcom/tencent/android/tpush/service/channel/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;

.field private b:Lcom/tencent/android/tpush/service/channel/a/a;

.field private c:Lcom/tencent/android/tpush/service/channel/b/i;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1348
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/n;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/n;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 1345
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    .line 1349
    iput-object p2, p0, Lcom/tencent/android/tpush/service/channel/n;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 1350
    iput-object p3, p0, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    .line 1351
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1356
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/i;->h()S

    move-result v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/b/i;->k()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/channel/c/d;->a(S[B)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 1358
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/n;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/a/a;->f()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/s;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :goto_0
    return-void

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    const-string v1, "TpnsChannel"

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
