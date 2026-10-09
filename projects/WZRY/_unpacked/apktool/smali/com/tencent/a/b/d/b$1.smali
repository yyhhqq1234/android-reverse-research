.class final Lcom/tencent/a/b/d/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/a/b/d/b;


# direct methods
.method constructor <init>(Lcom/tencent/a/b/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/d/b$1;->a:Lcom/tencent/a/b/d/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/a/b/d/b$1;->a:Lcom/tencent/a/b/d/b;

    invoke-static {v0}, Lcom/tencent/a/b/d/b;->a(Lcom/tencent/a/b/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/a/b/d/b$1;->a:Lcom/tencent/a/b/d/b;

    invoke-static {v0}, Lcom/tencent/a/b/d/b;->a(Lcom/tencent/a/b/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/a/b/d/b$1;->a:Lcom/tencent/a/b/d/b;

    invoke-static {v0}, Lcom/tencent/a/b/d/b;->b(Lcom/tencent/a/b/d/b;)Lcom/tencent/b/a/a/i$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/d/b$1;->a:Lcom/tencent/a/b/d/b;

    invoke-static {v0}, Lcom/tencent/a/b/d/b;->b(Lcom/tencent/a/b/d/b;)Lcom/tencent/b/a/a/i$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/b/a/a/i$f;->a()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/a/b/d/b$1;->a:Lcom/tencent/a/b/d/b;

    invoke-static {v0}, Lcom/tencent/a/b/d/b;->c(Lcom/tencent/a/b/d/b;)Lcom/tencent/a/b/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->o()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
