.class public Lcom/tencent/tp/a/ad;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIII)I
    .locals 2

    and-int/lit16 v0, p3, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static a()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tp/a/p;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Lcom/tencent/tp/a/r;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/tencent/tp/a/u;->a:[B

    invoke-static {v1}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tp/a/n;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tp/a/q;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Lcom/tencent/tp/a/s;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/tencent/tp/a/t;->a:[B

    invoke-static {v1}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tp/a/n;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static c()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tp/a/v;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tp/a/w;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static d()I
    .locals 2

    const/16 v1, 0x7c

    const/16 v0, 0xff

    invoke-static {v1, v1, v1, v0}, Lcom/tencent/tp/a/ad;->a(IIII)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tp/a/x;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static e()I
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, v0, v0, v0}, Lcom/tencent/tp/a/ad;->a(IIII)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tencent/tp/a/y;->a:[B

    invoke-static {v0}, Lcom/tencent/tp/a/n;->a([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static f()I
    .locals 4

    const/16 v0, 0x31

    const/16 v1, 0x94

    const/16 v2, 0xd8

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tp/a/ad;->a(IIII)I

    move-result v0

    return v0
.end method

.method public static g()I
    .locals 4

    const/16 v0, 0x40

    const/16 v1, 0xc1

    const/16 v2, 0x44

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tp/a/ad;->a(IIII)I

    move-result v0

    return v0
.end method

.method public static h()I
    .locals 4

    const/16 v0, 0x14

    const/16 v1, 0x92

    const/16 v2, 0xdf

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tp/a/ad;->a(IIII)I

    move-result v0

    return v0
.end method
