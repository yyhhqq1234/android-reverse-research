.class public Lcom/tencent/mid/api/MidService;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mid/api/MidService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/mid/a/h;->a(Z)V

    return-void
.end method

.method public static getGuid(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/tencent/mid/a/h;->c(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/b/g;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mid/a/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMidRequestHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMidRequestUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNewMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mid/b/g;->a(Landroid/content/Context;)Lcom/tencent/mid/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/b/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnableDebug()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mid/a/h;->a()Z

    move-result v0

    return v0
.end method

.method public static isEnableReportWifiList()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mid/api/MidService;->a:Z

    return v0
.end method

.method public static isMidValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/mid/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static requestMid(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error, callback is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    const/16 v0, -0x2710

    const-string v1, "content is null!"

    invoke-interface {p1, v0, v1}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/mid/a/h;->a(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V

    goto :goto_0
.end method

.method public static setEnableReportWifiList(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/mid/api/MidService;->a:Z

    return-void
.end method

.method public static setMidRequestUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
