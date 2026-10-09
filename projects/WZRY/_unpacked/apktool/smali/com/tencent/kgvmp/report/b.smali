.class public Lcom/tencent/kgvmp/report/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/report/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/kgvmp/report/b;->a:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tencent/kgvmp/report/b;->a:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/tencent/kgvmp/report/b;->b:Ljava/lang/String;

    const-string v2, "beacon: get qimei exception."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V
    .locals 9

    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    sget-boolean v0, Lcom/tencent/kgvmp/report/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/kgvmp/report/a;->getValue()Ljava/lang/String;

    move-result-object v0

    move-wide v4, v2

    move-object v6, p1

    move v7, v1

    move v8, v1

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/b;->b:Ljava/lang/String;

    const-string v1, "beacon: not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V
    .locals 9

    const-wide/16 v2, -0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/tencent/kgvmp/report/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/kgvmp/report/a;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-wide v4, v2

    move-object v6, p1

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;ZZ)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/b;->b:Ljava/lang/String;

    const-string v1, "beacon: not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sput-boolean v0, Lcom/tencent/kgvmp/report/b;->a:Z

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/report/b;->b:Ljava/lang/String;

    const-string v1, "beacon: can not found tencent beacon."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
