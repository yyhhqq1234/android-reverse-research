.class public Lcom/tencent/mna/base/a/c;
.super Ljava/lang/Object;
.source "DgnCloudProxy.java"


# static fields
.field private static a:Lcom/tencent/mna/base/a/a/d;

.field private static b:Lcom/tencent/mna/base/a/a/e;

.field private static c:J

.field private static d:I

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/mna/base/a/a/d;

    invoke-direct {v0}, Lcom/tencent/mna/base/a/a/d;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    .line 21
    new-instance v0, Lcom/tencent/mna/base/a/a/e;

    invoke-direct {v0}, Lcom/tencent/mna/base/a/a/e;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/mna/base/a/c;->c:J

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mna/base/a/c;->d:I

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/base/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static A()I
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->v:I

    return v0
.end method

.method public static B()I
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->w:I

    return v0
.end method

.method public static C()I
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->x:I

    return v0
.end method

.method public static D()I
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->z:I

    return v0
.end method

.method public static E()I
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->A:I

    return v0
.end method

.method public static F()D
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget-wide v0, v0, Lcom/tencent/mna/base/a/a/d;->B:D

    return-wide v0
.end method

.method public static G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/d;->C:Ljava/lang/String;

    return-object v0
.end method

.method public static H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/base/a/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static I()Z
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget-boolean v0, v0, Lcom/tencent/mna/base/a/a/d;->D:Z

    return v0
.end method

.method public static J()[Lcom/tencent/mna/b/d/g;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/e;->a:[Lcom/tencent/mna/b/d/g;

    return-object v0
.end method

.method public static K()[Lcom/tencent/mna/b/d/g;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/e;->b:[Lcom/tencent/mna/b/d/g;

    return-object v0
.end method

.method public static L()[Lcom/tencent/mna/b/d/g;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/e;->c:[Lcom/tencent/mna/b/d/g;

    return-object v0
.end method

.method public static M()[Lcom/tencent/mna/b/d/g;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/e;->d:[Lcom/tencent/mna/b/d/g;

    return-object v0
.end method

.method public static N()[Lcom/tencent/mna/b/d/g;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/e;->e:[Lcom/tencent/mna/b/d/g;

    return-object v0
.end method

.method public static O()[Lcom/tencent/mna/b/d/g;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/e;->f:[Lcom/tencent/mna/b/d/g;

    return-object v0
.end method

.method public static P()[Lcom/tencent/mna/b/d/g;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/e;->g:[Lcom/tencent/mna/b/d/g;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v2

    .line 70
    sget v0, Lcom/tencent/mna/base/a/c;->d:I

    if-ne v2, v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/base/a/b;->b()Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/tencent/mna/base/a/c;->e:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    :cond_0
    const/4 v0, 0x1

    .line 74
    :goto_0
    sget-object v3, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget-boolean v3, v3, Lcom/tencent/mna/base/a/a/d;->a:Z

    if-nez v3, :cond_1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/tencent/mna/base/a/c;->c:J

    sub-long/2addr v4, v6

    sget-object v3, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v3, v3, Lcom/tencent/mna/base/a/a/d;->b:I

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    if-nez v0, :cond_1

    .line 102
    :goto_1
    return v1

    .line 80
    :cond_1
    sget-object v0, Lcom/tencent/mna/base/a/b$a;->b:Lcom/tencent/mna/base/a/b$a;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mna/base/a/b;->a(Lcom/tencent/mna/base/a/b$a;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object v3

    .line 81
    const/16 v0, 0x3ea

    .line 82
    if-nez v3, :cond_2

    move v1, v0

    .line 83
    goto :goto_1

    .line 85
    :cond_2
    iget v0, v3, Lcom/tencent/mna/base/jni/entity/CloudRet;->errno:I

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DgnCloudConfig, ret errno:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 87
    if-nez v0, :cond_3

    .line 89
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v3, Lcom/tencent/mna/base/jni/entity/CloudRet;->json:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bca\u65adjson: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Lcom/tencent/mna/base/a/a/d;->a(Lorg/json/JSONObject;)Lcom/tencent/mna/base/a/a/d;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    .line 92
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    invoke-virtual {v0}, Lcom/tencent/mna/base/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 94
    sput v2, Lcom/tencent/mna/base/a/c;->d:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/mna/base/a/c;->c:J

    .line 96
    invoke-static {}, Lcom/tencent/mna/base/a/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/base/a/c;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const/16 v1, 0x3eb

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/tencent/mna/base/a/c;->a(Lorg/json/JSONObject;)I

    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/tencent/mna/base/a/c;->b(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/d;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    :try_start_0
    const-string v1, "appid"

    sget-object v2, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v1, "zoneid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v1, "openid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v1, "gameIP"

    const-string v2, "10000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "rproxy_flag"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "model"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "devid"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "mac"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "bundleid"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "nettype"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    if-eqz p9, :cond_0

    invoke-virtual {p9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "UNKNOWN"

    .line 48
    invoke-virtual {p9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "secret_key"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->aY:I

    return v0
.end method

.method private static b(Lorg/json/JSONObject;)I
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->y:I

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mna/base/a/d;->a(ILjava/lang/String;)Lcom/tencent/mna/base/a/d$a;

    move-result-object v0

    .line 107
    iget-object v1, v0, Lcom/tencent/mna/base/a/d$a;->b:Lcom/tencent/mna/base/a/a/e;

    if-nez v1, :cond_0

    .line 108
    iget v0, v0, Lcom/tencent/mna/base/a/d$a;->a:I

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v0, v0, Lcom/tencent/mna/base/a/d$a;->b:Lcom/tencent/mna/base/a/a/e;

    sput-object v0, Lcom/tencent/mna/base/a/c;->b:Lcom/tencent/mna/base/a/a/e;

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/d;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->ba:I

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->bb:I

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->bc:I

    return v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->bd:I

    return v0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->bf:I

    return v0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->bh:I

    return v0
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->bi:I

    return v0
.end method

.method public static k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    sget-object v1, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v1, v1, Lcom/tencent/mna/base/a/a/d;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->e:I

    return v0
.end method

.method public static m()I
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->f:I

    return v0
.end method

.method public static n()I
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->g:I

    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget-object v0, v0, Lcom/tencent/mna/base/a/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static p()I
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->i:I

    return v0
.end method

.method public static q()I
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->j:I

    return v0
.end method

.method public static r()I
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->k:I

    return v0
.end method

.method public static s()I
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->l:I

    return v0
.end method

.method public static t()I
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->n:I

    return v0
.end method

.method public static u()I
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->o:I

    return v0
.end method

.method public static v()I
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->p:I

    return v0
.end method

.method public static w()I
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->r:I

    return v0
.end method

.method public static x()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 231
    sget-object v1, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v1, v1, Lcom/tencent/mna/base/a/a/d;->s:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static y()I
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->t:I

    return v0
.end method

.method public static z()I
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/tencent/mna/base/a/c;->a:Lcom/tencent/mna/base/a/a/d;

    iget v0, v0, Lcom/tencent/mna/base/a/a/d;->u:I

    return v0
.end method
