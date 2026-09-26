.class final Lcom/netease/mcount/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/n;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/netease/mcount/n;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/netease/mcount/MCountAgent;->a()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MCountAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->a(Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    new-instance v0, Lcom/netease/mcount/f;

    invoke-direct {v0}, Lcom/netease/mcount/f;-><init>()V

    iget-object v1, p0, Lcom/netease/mcount/n;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mcount/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mcount/r;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mcount/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/n;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mcount/n;->b:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mcount/f;->c:Lorg/json/JSONObject;

    :goto_0
    iget-object v1, p0, Lcom/netease/mcount/n;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/mcount/k;->a(Landroid/content/Context;Lcom/netease/mcount/f;)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netease/mcount/f;->c:Lorg/json/JSONObject;

    goto :goto_0
.end method
