.class public Lcom/tencent/mid/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mid/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/b/g;->h()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V
    .locals 3

    sget-object v0, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMid, callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/mid/a/i;

    invoke-direct {v0, p1}, Lcom/tencent/mid/a/i;-><init>(Lcom/tencent/mid/api/MidCallback;)V

    invoke-static {p0, v0}, Lcom/tencent/mid/a/h;->b(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/util/f;->a(Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/util/f;->a()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/tencent/mid/util/f;
    .locals 1

    sget-object v0, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    const-string v1, "context==null in getMid()"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/b/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/mid/a/j;

    invoke-direct {v1}, Lcom/tencent/mid/a/j;-><init>()V

    sget-object v2, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    const-string v3, "getMid -> request new mid entity."

    invoke-virtual {v2, v3}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mid/a/n;->a()Lcom/tencent/mid/a/n;

    move-result-object v2

    new-instance v3, Lcom/tencent/mid/a/k;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v1}, Lcom/tencent/mid/a/k;-><init>(Landroid/content/Context;ILcom/tencent/mid/api/MidCallback;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mid/a/n;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/tencent/mid/a/h;->c(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/a/h;->a(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMidEntity -> get local mid entity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mid/a/n;->a()Lcom/tencent/mid/a/n;

    move-result-object v0

    new-instance v1, Lcom/tencent/mid/a/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1}, Lcom/tencent/mid/a/k;-><init>(Landroid/content/Context;ILcom/tencent/mid/api/MidCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mid/a/n;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    const-string v1, "requestMidEntity -> request new mid entity."

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mid/a/n;->a()Lcom/tencent/mid/a/n;

    move-result-object v0

    new-instance v1, Lcom/tencent/mid/a/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/tencent/mid/a/k;-><init>(Landroid/content/Context;ILcom/tencent/mid/api/MidCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mid/a/n;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    const-string v1, "context==null in getGuid()"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/b/g;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/mid/a/h;->a:Lcom/tencent/mid/util/f;

    const-string v1, "context==null in getMid()"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/b/g;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
