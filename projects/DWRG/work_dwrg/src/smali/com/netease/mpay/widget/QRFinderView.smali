.class public Lcom/netease/mpay/widget/QRFinderView;
.super Lcom/netease/codescanner/widget/ViewfinderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/codescanner/widget/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

.method private a(Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCornerWidth(Landroid/content/Context;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLineDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->e:I

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaskColor(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->e:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/widget/QRFinderView;->a(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getResultColor(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->c:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/widget/QRFinderView;->a(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getResultPointColor(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->e:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/widget/QRFinderView;->a(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
