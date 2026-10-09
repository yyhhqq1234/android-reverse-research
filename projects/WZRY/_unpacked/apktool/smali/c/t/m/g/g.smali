.class public final Lc/t/m/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Lc/t/m/g/d;


# static fields
.field private static a:Lc/t/m/g/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/t/m/g/g;

    invoke-direct {v0}, Lc/t/m/g/g;-><init>()V

    sput-object v0, Lc/t/m/g/g;->a:Lc/t/m/g/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/t/m/g/g;
    .locals 1

    sget-object v0, Lc/t/m/g/g;->a:Lc/t/m/g/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Lc/t/m/g/e;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lc/t/m/g/i;

    invoke-direct {v0, p1, p2}, Lc/t/m/g/i;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final a(Lc/t/m/g/e;)Lc/t/m/g/f$a;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "execute...IHttpRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v2, p1, Lc/t/m/g/i;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "execute...IHttpRequest should be create by API:createRequest"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lc/t/m/g/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lc/t/m/g/i;->k:J

    const-string v2, "app_http_use_proxy"

    invoke-static {v2, v0, v1, v1}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    new-instance v2, Lc/t/m/g/k;

    invoke-direct {v2, p1}, Lc/t/m/g/k;-><init>(Lc/t/m/g/i;)V

    iget v3, p1, Lc/t/m/g/i;->g:I

    if-gtz v3, :cond_4

    invoke-virtual {v2}, Lc/t/m/g/j;->a()Lc/t/m/g/ai;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc/t/m/g/i;->a(Lc/t/m/g/ai;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lc/t/m/g/i;->d()Lc/t/m/g/ai;

    move-result-object v2

    if-eqz v0, :cond_3

    iput-boolean v1, p1, Lc/t/m/g/i;->j:Z

    :cond_3
    if-nez v2, :cond_5

    new-instance v0, Lc/t/m/g/ai;

    const/16 v1, -0xe

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "force return timeout:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lc/t/m/g/i;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/t/m/g/ai;-><init>(ILjava/lang/String;)V

    :goto_1
    new-instance v1, Lc/t/m/g/f$a;

    invoke-direct {v1, v0}, Lc/t/m/g/f$a;-><init>(Lc/t/m/g/ai;)V

    return-object v1

    :cond_4
    invoke-static {}, Lc/t/m/g/w$a;->a()Lc/t/m/g/w;

    move-result-object v3

    iget-object v3, v3, Lc/t/m/g/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lc/t/m/g/h;

    invoke-direct {v4, v2, p1}, Lc/t/m/g/h;-><init>(Lc/t/m/g/j;Lc/t/m/g/i;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lc/t/m/g/i;->c()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method
