.class public Lcom/netease/mcount/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/a/c;
    .locals 6

    invoke-static {}, Lcom/netease/mcount/a/a;->a()Lcom/netease/mcount/a/f;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mcount/a/f;->a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/a/c;

    move-result-object v0

    return-object v0
.end method

.method private static a()Lcom/netease/mcount/a/f;
    .locals 1

    invoke-static {}, Lcom/netease/mcount/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mcount/a/e;

    invoke-direct {v0}, Lcom/netease/mcount/a/e;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/mcount/a/d;

    invoke-direct {v0}, Lcom/netease/mcount/a/d;-><init>()V

    goto :goto_0
.end method

.method private static b()Z
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
