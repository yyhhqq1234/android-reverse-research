.class Lcom/tencent/android/tpush/stat/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Ljava/lang/Thread;

.field final synthetic d:Lcom/tencent/android/tpush/stat/u;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/stat/u;JLjava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/v;->d:Lcom/tencent/android/tpush/stat/u;

    iput-wide p2, p0, Lcom/tencent/android/tpush/stat/v;->a:J

    iput-object p4, p0, Lcom/tencent/android/tpush/stat/v;->b:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/tencent/android/tpush/stat/v;->c:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 132
    new-instance v0, Lcom/tencent/android/tpush/stat/event/c;

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->c()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p0, Lcom/tencent/android/tpush/stat/v;->a:J

    invoke-static {v2, v4, v5}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/android/tpush/stat/v;->b:Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/tencent/android/tpush/stat/v;->c:Ljava/lang/Thread;

    iget-wide v6, p0, Lcom/tencent/android/tpush/stat/v;->a:J

    invoke-direct/range {v0 .. v7}, Lcom/tencent/android/tpush/stat/event/c;-><init>(Landroid/content/Context;IILjava/lang/Throwable;Ljava/lang/Thread;J)V

    .line 136
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tencent/android/tpush/stat/event/d;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->b(Ljava/util/List;)V

    .line 137
    return-void
.end method
