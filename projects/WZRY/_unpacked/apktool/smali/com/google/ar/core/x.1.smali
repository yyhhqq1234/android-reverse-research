.class final Lcom/google/ar/core/x;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/ar/core/o;

.field private volatile c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/ar/core/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/x;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ar/core/x;->b:Lcom/google/ar/core/o;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/x;->c:Z

    return-void
.end method

.method public final run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/google/ar/core/x;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ar/core/h;->a()Lcom/google/ar/core/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ar/core/x;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ar/core/x;->b:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->c:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/ar/core/x;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
