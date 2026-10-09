.class Lcom/tencent/kgvmp/e/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/kgvmp/e/f;

.field private b:J

.field private c:I


# direct methods
.method constructor <init>(Lcom/tencent/kgvmp/e/f;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/kgvmp/e/i;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/kgvmp/e/i;->c:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-wide/16 v6, 0x14

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/tencent/kgvmp/e/i;->b:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/kgvmp/e/i;->b:J

    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/kgvmp/e/i;->c:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/kgvmp/e/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/kgvmp/e/i;->c:I

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "where"

    const-string v2, "handler"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "type"

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->i(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    :try_start_2
    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: 1 key value ."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "handleMessage: 1 lost map data should send."

    invoke-static {v0, v4}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v6, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: exception. msg what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_2
    :try_start_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v0, v4}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/e/f;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v0, v1, v3}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/e/f;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: 2 key float array."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: 2 lost map data should send."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/e/f;Ljava/util/HashMap;)V

    :cond_5
    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    iget-object v3, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v3}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/e/f;)Lcom/tencent/kgvmp/report/d;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/tencent/kgvmp/report/d;->a(I[F)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: 2 report func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: 3 hashmap."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "handleMessage: 3 lost map data should send."

    invoke-static {v1, v4}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/report/e;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/e/f;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/e/f;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: 4 apmkey."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/kgvmp/e/i;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/e/f;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: report exception except. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
