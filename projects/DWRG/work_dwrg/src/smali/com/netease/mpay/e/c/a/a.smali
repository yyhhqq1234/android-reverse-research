.class public Lcom/netease/mpay/e/c/a/a;
.super Lcom/netease/mpay/e/c/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/e/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a([BII[BI)[B
    .locals 3

    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    const/4 p4, 0x0

    :cond_0
    return-object p4

    :cond_1
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, v0, p2

    add-int/2addr v1, p5

    aget-byte v2, p1, v0

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a([B)[B
    .locals 13

    const/4 v5, 0x0

    const/4 v12, 0x0

    new-instance v0, Lcom/netease/mpay/e/c/q;

    iget-object v1, p0, Lcom/netease/mpay/e/c/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/c/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/widget/ac;->d([BLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    move-object v4, v12

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0xf

    add-int/lit8 v0, v0, -0x11

    add-int/lit8 v0, v0, -0x10

    add-int/lit8 v0, v0, -0x10

    if-gtz v0, :cond_2

    move-object v4, v12

    goto :goto_0

    :cond_2
    div-int/lit8 v11, v0, 0x3

    new-array v4, v0, [B

    const/16 v2, 0xf

    add-int/lit8 v3, v11, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    add-int/lit8 v0, v11, 0xf

    add-int/lit8 v8, v0, 0x11

    array-length v0, v1

    add-int/lit8 v0, v0, -0x10

    add-int/lit8 v9, v0, -0x10

    move-object v6, p0

    move-object v7, v1

    move-object v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    const/16 v0, 0x10

    new-array v10, v0, [B

    array-length v0, v1

    add-int/lit8 v8, v0, -0x10

    array-length v9, v1

    move-object v6, p0

    move-object v7, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    invoke-static {v4}, Lcom/netease/mpay/widget/bd;->a([B)[B

    move-result-object v0

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v4, v12

    goto :goto_0
.end method

.method protected b([B)[B
    .locals 10

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a([B)[B

    move-result-object v6

    array-length v0, p1

    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x11

    add-int/lit8 v0, v0, 0x10

    new-array v4, v0, [B

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a(I)[B

    move-result-object v1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a(I)[B

    move-result-object v7

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a(I)[B

    move-result-object v8

    array-length v0, p1

    div-int/lit8 v9, v0, 0x3

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    const/4 v2, 0x0

    const/16 v5, 0xf

    move-object v0, p0

    move-object v1, p1

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    const/4 v2, 0x0

    const/16 v3, 0x11

    add-int/lit8 v5, v9, 0xf

    move-object v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    array-length v3, p1

    add-int/lit8 v0, v9, 0xf

    add-int/lit8 v5, v0, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    array-length v0, p1

    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v5, v0, 0x11

    move-object v0, p0

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    array-length v0, p1

    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x11

    add-int/lit8 v5, v0, 0x10

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/e/c/a/a;->a([BII[BI)[B

    new-instance v0, Lcom/netease/mpay/e/c/q;

    iget-object v1, p0, Lcom/netease/mpay/e/c/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/c/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/mpay/widget/ac;->c([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
