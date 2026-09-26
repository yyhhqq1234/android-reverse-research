.class final Lcom/netease/mcount/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/netease/mcount/o;

    iget-object v1, p0, Lcom/netease/mcount/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/mcount/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/mcount/o;->a()V
    :try_end_0
    .catch Lcom/netease/mcount/p; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "failed to post the init message."

    invoke-static {v0}, Lcom/netease/mcount/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
