.class public final Lc/t/m/g/ca;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lc/t/m/g/ca;->a:Landroid/os/Handler;

    sput-boolean v1, Lc/t/m/g/ca;->b:Z

    sput-boolean v1, Lc/t/m/g/ca;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 7

    .prologue
    const/4 v6, -0x3

    const/4 v5, -0x4

    const/16 v4, -0x120

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 0
    const-string v1, "HLDisconnEvent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 1000
    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    if-ne p1, v4, :cond_5

    :cond_1
    move v1, v0

    .line 0
    :goto_1
    if-eqz v1, :cond_6

    :cond_2
    const-string v1, "self_report_succ_rate"

    move-object v3, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 2000
    if-eq p1, v5, :cond_3

    if-eq p1, v6, :cond_3

    if-ne p1, v4, :cond_7

    :cond_3
    move v1, v0

    .line 0
    :goto_3
    if-eqz v1, :cond_8

    .line 3000
    :cond_4
    :goto_4
    const/16 v1, 0x64

    invoke-static {v3, v2, v1, v0}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1000
    goto :goto_1

    .line 0
    :cond_6
    const-string v1, "self_report_fail_rate"

    move-object v3, v1

    goto :goto_2

    :cond_7
    move v1, v2

    .line 2000
    goto :goto_3

    .line 0
    :cond_8
    const/16 v0, 0x32

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v8, Lc/t/m/g/ca;->a:Landroid/os/Handler;

    new-instance v0, Lc/t/m/g/cb;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lc/t/m/g/cb;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZZ)V
    .locals 9

    .prologue
    .line 0
    const/4 v0, 0x0

    if-eqz p6, :cond_3b

    :try_start_0
    invoke-static {}, Lc/t/m/g/o;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, -0x120

    move v5, v0

    .line 5000
    :goto_0
    if-eqz p5, :cond_1

    const-string v0, "B83"

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "B83"

    const-string v0, "B83"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v6, v7, v0}, Lc/t/m/g/ce;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "B84"

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "B84"

    const-string v0, "B84"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v6, v7, v0}, Lc/t/m/g/ce;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4000
    :cond_1
    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 0
    :catch_0
    move-exception v0

    .line 4000
    :cond_2
    :goto_2
    return-void

    .line 0
    :cond_3
    invoke-static {}, Lc/t/m/g/o;->e()V

    invoke-static {}, Lc/t/m/g/o;->h()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    const/4 v2, -0x4

    move v5, v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lc/t/m/g/x;->a()Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v0, 0x1

    const/4 v2, -0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ping failed, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v5, v0

    goto :goto_0

    .line 4000
    :cond_5
    if-eqz p5, :cond_6

    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    invoke-static {}, Lc/t/m/g/l;->c()I

    move-result v0

    if-ne p1, v0, :cond_3a

    sget-boolean v0, Lc/t/m/g/ca;->b:Z

    if-eqz v0, :cond_10

    const-string v0, "HLReqRspEvent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "HLHttpAgent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lc/t/m/g/ca;->b:Z

    move v4, v0

    :goto_4
    if-eqz p7, :cond_36

    .line 6000
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    invoke-static {p0, v2}, Lc/t/m/g/ca;->a(Ljava/lang/String;I)I

    move-result v1

    .line 12000
    :goto_5
    const/4 v0, 0x0

    if-lez v1, :cond_33

    const/16 v3, 0x64

    if-ge v1, v3, :cond_33

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, v1, :cond_32

    const/4 v0, 0x1

    :goto_6
    move v3, v0

    .line 4000
    :goto_7
    if-eqz v3, :cond_2

    if-nez p4, :cond_8

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_8
    if-lez v1, :cond_9

    const/16 v0, 0x64

    if-ge v1, v0, :cond_9

    const-string v0, "B9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v1, "B7"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_37

    move v0, v2

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_a

    const-string v0, "B28"

    const-string v1, "1"

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "B1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "B2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc/t/m/g/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "B30"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "B3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc/t/m/g/l;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "B4"

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "B5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/bz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc/t/m/g/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "B29"

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "access_report_detail"

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    if-eqz p5, :cond_d

    invoke-interface {p4, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d
    const-string v0, "B6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x4

    if-eq v2, v0, :cond_e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "B8"

    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v0, "D1"

    invoke-static {}, Lc/t/m/g/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "D2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/l;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "D3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc/t/m/g/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-nez p2, :cond_38

    const/4 v0, 0x1

    .line 13000
    :goto_9
    invoke-static {p0, v0, p4}, Lc/t/m/g/u;->a(Ljava/lang/String;ZLjava/util/Map;)Z

    goto/16 :goto_2

    .line 4000
    :cond_10
    sget-boolean v0, Lc/t/m/g/ca;->c:Z

    if-eqz v0, :cond_3a

    const-string v0, "HLHttpDirect"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "B15"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "app"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lc/t/m/g/ca;->c:Z

    move v4, v0

    goto/16 :goto_4

    .line 6000
    :cond_11
    const-string v0, "HLHttpDirect"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p4, :cond_12

    const-string v0, "B15"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0, v2}, Lc/t/m/g/ca;->a(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_5

    :cond_12
    const/4 v1, 0x0

    const-string v3, ""

    const/4 v0, 0x0

    const-string v6, "HLConnEvent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    if-nez v2, :cond_13

    const-string v3, "report_conn_succ_rate"

    :goto_a
    if-nez v2, :cond_17

    const/4 v0, 0x1

    :goto_b
    if-nez v1, :cond_39

    const-string v1, "report_all_events"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_31

    const/16 v0, 0x64

    :goto_c
    move v1, v0

    goto/16 :goto_5

    .line 7000
    :cond_13
    const/4 v0, -0x4

    if-eq v2, v0, :cond_14

    const/4 v0, -0x3

    if-eq v2, v0, :cond_14

    const/16 v0, -0x120

    if-ne v2, v0, :cond_15

    :cond_14
    const/4 v0, 0x1

    .line 6000
    :goto_d
    if-eqz v0, :cond_16

    const-string v3, "report_conn_nonet_fail_rate"

    goto :goto_a

    .line 7000
    :cond_15
    const/4 v0, 0x0

    goto :goto_d

    .line 6000
    :cond_16
    const-string v3, "report_conn_other_fail_rate"

    goto :goto_a

    .line 8000
    :cond_17
    const/4 v0, -0x4

    if-eq v2, v0, :cond_18

    const/4 v0, -0x3

    if-eq v2, v0, :cond_18

    const/16 v0, -0x120

    if-ne v2, v0, :cond_19

    :cond_18
    const/4 v0, 0x1

    .line 6000
    :goto_e
    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_b

    .line 8000
    :cond_19
    const/4 v0, 0x0

    goto :goto_e

    .line 6000
    :cond_1a
    const/16 v0, 0x64

    goto :goto_b

    :cond_1b
    const-string v6, "HLSecurityEvent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    if-nez v2, :cond_1c

    const-string v3, "report_security_req_succ_rate"

    :goto_f
    if-nez v2, :cond_1d

    const/4 v0, 0x1

    goto :goto_b

    :cond_1c
    const-string v3, "report_security_req_fail_rate"

    goto :goto_f

    :cond_1d
    const/16 v0, 0x64

    goto :goto_b

    :cond_1e
    const-string v6, "HLDisconnEvent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v3, "report_disconn_rate"

    const/16 v0, 0x32

    goto :goto_b

    :cond_1f
    const-string v6, "HLReqRspEvent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    const-string v6, "HLHttpAgent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    const-string v6, "HLHttpDirect"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    :cond_20
    if-eqz v4, :cond_21

    if-nez v2, :cond_21

    const-string v3, "report_req_ssl_first_rate"

    const/4 v0, 0x1

    goto :goto_b

    :cond_21
    if-nez v2, :cond_22

    const-string v3, "report_req_succ_rate"

    :goto_10
    if-nez v2, :cond_26

    const/4 v0, 0x1

    goto/16 :goto_b

    .line 9000
    :cond_22
    const/4 v0, -0x4

    if-eq v2, v0, :cond_23

    const/4 v0, -0x3

    if-eq v2, v0, :cond_23

    const/16 v0, -0x120

    if-ne v2, v0, :cond_24

    :cond_23
    const/4 v0, 0x1

    .line 6000
    :goto_11
    if-eqz v0, :cond_25

    const-string v3, "report_req_nonet_fail_rate"

    goto :goto_10

    .line 9000
    :cond_24
    const/4 v0, 0x0

    goto :goto_11

    .line 6000
    :cond_25
    const-string v3, "report_req_other_fail_rate"

    goto :goto_10

    .line 10000
    :cond_26
    const/4 v0, -0x4

    if-eq v2, v0, :cond_27

    const/4 v0, -0x3

    if-eq v2, v0, :cond_27

    const/16 v0, -0x120

    if-ne v2, v0, :cond_28

    :cond_27
    const/4 v0, 0x1

    .line 6000
    :goto_12
    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto/16 :goto_b

    .line 10000
    :cond_28
    const/4 v0, 0x0

    goto :goto_12

    .line 6000
    :cond_29
    const/16 v0, 0x64

    goto/16 :goto_b

    :cond_2a
    const-string v6, "HLPushEvent"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const-string v3, "report_push_rate"

    const/16 v0, 0xa

    goto/16 :goto_b

    :cond_2b
    const-string v6, "B_DLSDK_Result"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string v3, "report_mass_download_rate"

    const/16 v0, 0x64

    goto/16 :goto_b

    :cond_2c
    const-string v6, "HLDownTiny"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v3, "report_ease_download_rate"

    const/16 v0, 0xa

    goto/16 :goto_b

    :cond_2d
    const-string v6, "HLHeartBeat"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    if-nez v2, :cond_2e

    const-string v3, "report_heartbeat_succ_rate"

    :goto_13
    if-nez v2, :cond_2f

    const/16 v0, 0xa

    goto/16 :goto_b

    :cond_2e
    const-string v3, "report_heartbeat_fail_rate"

    goto :goto_13

    :cond_2f
    const/16 v0, 0x14

    goto/16 :goto_b

    :cond_30
    const/4 v1, -0x1

    goto/16 :goto_b

    .line 11000
    :cond_31
    const/4 v1, 0x0

    const/16 v6, 0x64

    invoke-static {v3, v1, v6, v0}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_c

    .line 12000
    :cond_32
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_33
    const/4 v3, -0x1

    if-eq v1, v3, :cond_34

    const/16 v3, 0x64

    if-ne v1, v3, :cond_35

    :cond_34
    const/4 v0, 0x1

    :cond_35
    move v3, v0

    .line 4000
    goto/16 :goto_7

    :cond_36
    const/16 v0, 0x64

    const/4 v3, 0x1

    move v1, v0

    goto/16 :goto_7

    :cond_37
    move v0, p2

    goto/16 :goto_8

    :cond_38
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_39
    move v0, v1

    goto/16 :goto_c

    :cond_3a
    move v4, v1

    goto/16 :goto_4

    :cond_3b
    move v2, p2

    move v5, v0

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v8, Lc/t/m/g/ca;->a:Landroid/os/Handler;

    new-instance v0, Lc/t/m/g/cc;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lc/t/m/g/cc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
