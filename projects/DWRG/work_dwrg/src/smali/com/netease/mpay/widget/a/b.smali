.class public Lcom/netease/mpay/widget/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/a/b$b;,
        Lcom/netease/mpay/widget/a/b$a;
    }
.end annotation


# direct methods
.method public static a()J
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://service.mkey.163.com/mpay/static/date.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;II)Lcom/netease/mpay/widget/a/b$b;
    .locals 7

    invoke-static {}, Lcom/netease/mpay/widget/a/b;->c()Lcom/netease/mpay/widget/a/e;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/a/e;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;II)Lcom/netease/mpay/widget/a/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netease/mpay/widget/a/b;->c()Lcom/netease/mpay/widget/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/widget/a/e;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/netease/mpay/widget/a/b;->d()Z

    move-result v0

    return v0
.end method

.method private static c()Lcom/netease/mpay/widget/a/e;
    .locals 1

    invoke-static {}, Lcom/netease/mpay/widget/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/a/d;

    invoke-direct {v0}, Lcom/netease/mpay/widget/a/d;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/a/c;

    invoke-direct {v0}, Lcom/netease/mpay/widget/a/c;-><init>()V

    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
