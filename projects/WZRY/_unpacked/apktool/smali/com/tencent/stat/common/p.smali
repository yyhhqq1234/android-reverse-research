.class final Lcom/tencent/stat/common/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/stat/common/p;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/stat/common/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/o;->b(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/tencent/stat/common/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/o;->c(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/tencent/stat/common/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/common/o;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
