.class public Lcom/tencent/friday/uikit/d/d/f;
.super Lcom/tencent/b/a/a/f;
.source "JMapView.java"

# interfaces
.implements Lcom/tencent/b/a/a/i$a;
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Lcom/tencent/b/a/a/i;

.field private c:Lcom/tencent/b/a/a/h;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/friday/uikit/d/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/tencent/b/a/a/i$f;

.field private j:Lcom/tencent/b/a/a/i$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 68
    invoke-direct {p0, p1}, Lcom/tencent/b/a/a/f;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    .line 61
    iput v1, p0, Lcom/tencent/friday/uikit/d/d/f;->f:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/f;->g:I

    .line 63
    iput v1, p0, Lcom/tencent/friday/uikit/d/d/f;->h:I

    .line 115
    new-instance v0, Lcom/tencent/friday/uikit/d/d/f$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/f$1;-><init>(Lcom/tencent/friday/uikit/d/d/f;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->i:Lcom/tencent/b/a/a/i$f;

    .line 130
    new-instance v0, Lcom/tencent/friday/uikit/d/d/f$2;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/f$2;-><init>(Lcom/tencent/friday/uikit/d/d/f;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->j:Lcom/tencent/b/a/a/i$d;

    .line 69
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/f;->d:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->getMap()Lcom/tencent/b/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    .line 71
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->getProjection()Lcom/tencent/b/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->c:Lcom/tencent/b/a/a/h;

    .line 72
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V

    .line 73
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->e()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/f;)Lcom/tencent/b/a/a/i;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    return-object v0
.end method

.method private a(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, p0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;II)V

    return-object v0
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;
    .locals 7

    .prologue
    .line 431
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/friday/uikit/d/d/f;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/tencent/friday/uikit/d/d/f;->h:I

    return v0
.end method


# virtual methods
.method public a(Lcom/tencent/a/a/a/g;)Landroid/view/View;
    .locals 3

    .prologue
    .line 459
    invoke-virtual {p1}, Lcom/tencent/a/a/a/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 460
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/d/a/a;

    .line 461
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/a/a;->b()Landroid/view/View;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marker id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map marker click error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0}, Lcom/tencent/b/a/a/f;->a()V

    .line 442
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 443
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 444
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 445
    return-void
.end method

.method public a(DDI)V
    .locals 15

    .prologue
    .line 393
    new-instance v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;-><init>(Ljava/lang/String;)V

    .line 394
    new-instance v4, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;-><init>(Ljava/lang/String;)V

    .line 395
    new-instance v3, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-direct {v3, v2, v4}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)V

    .line 396
    new-instance v4, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    .line 398
    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/f;->c:Lcom/tencent/b/a/a/h;

    invoke-virtual {v2}, Lcom/tencent/b/a/a/h;->a()Lcom/tencent/a/a/a/m;

    move-result-object v2

    .line 399
    new-instance v5, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    new-instance v6, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    invoke-virtual {v2}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/a/a/a/f;->c()Lcom/tencent/a/a/a/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    .line 400
    invoke-virtual {v2}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/a/a/a/f;->b()Lcom/tencent/a/a/a/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)V

    .line 401
    new-instance v6, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    new-instance v7, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    invoke-virtual {v2}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/a/a/a/f;->b()Lcom/tencent/a/a/a/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    .line 402
    invoke-virtual {v2}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/a/a/a/f;->c()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)V

    .line 404
    const/4 v2, 0x0

    .line 405
    iget-object v7, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    invoke-virtual {v7}, Lcom/tencent/b/a/a/i;->b()D

    move-result-wide v8

    .line 406
    iget v7, p0, Lcom/tencent/friday/uikit/d/d/f;->g:I

    int-to-double v10, v7

    sub-double v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v10, v12

    if-gez v7, :cond_0

    .line 407
    const/4 v2, 0x1

    .line 410
    :cond_0
    const/4 v7, 0x0

    .line 411
    iget v10, p0, Lcom/tencent/friday/uikit/d/d/f;->f:I

    int-to-double v10, v10

    sub-double v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 412
    const/4 v7, 0x1

    move v9, v7

    .line 415
    :goto_0
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v10

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/tencent/friday/uikit/d/d/f;->a(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v11

    new-instance v7, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v7, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>(Z)V

    new-instance v8, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v8, v9}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>(Z)V

    move-object v2, p0

    .line 416
    invoke-direct/range {v2 .. v8}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_ValueChanged;

    move-result-object v2

    .line 415
    invoke-virtual {v10, v11, v2}, Lcom/tencent/friday/uikit/c/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 418
    return-void

    :cond_1
    move v9, v7

    goto :goto_0
.end method

.method public a(Lcom/tencent/a/a/a/c;)V
    .locals 7

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v4

    .line 389
    invoke-virtual {p1}, Lcom/tencent/a/a/a/c;->c()F

    move-result v0

    float-to-int v6, v0

    move-object v1, p0

    .line 388
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/friday/uikit/d/d/f;->a(DDI)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/a/a/a/g;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 2

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->getUiSettings()Lcom/tencent/b/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/b/a/a/j;->a(Z)V

    .line 191
    :cond_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Z)V
    .locals 7

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;->getLatitude()Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 160
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;->getLongitude()Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set center coordinate,lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    new-instance v1, Lcom/tencent/a/a/a/e;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/i;->a(Lcom/tencent/a/a/a/e;)V

    .line 163
    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->b()D

    move-result-wide v0

    double-to-int v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/friday/uikit/d/d/f;->a(DDI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v0, "parameter format is wrong"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Z)V
    .locals 7

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/f;->h:I

    .line 180
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/f;->h:I

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/i;->c(I)V

    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->a()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->a()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v4

    iget v6, p0, Lcom/tencent/friday/uikit/d/d/f;->h:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/friday/uikit/d/d/f;->a(DDI)V

    .line 185
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 86
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    .line 86
    invoke-static/range {v0 .. v5}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Z)V

    .line 90
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getCenterCoordinate()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Z)V

    .line 92
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getMaxZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->setMaxZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 93
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getMinZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->setMinZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 94
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getZoomLevel()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Z)V

    .line 96
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->hideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 97
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 98
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->disableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->c(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 101
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;->getMarkers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->a(Ljava/util/ArrayList;)V

    .line 104
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->d()V

    .line 107
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f;->j:Lcom/tencent/b/a/a/i$d;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/i;->a(Lcom/tencent/b/a/a/i$d;)V

    .line 108
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f;->i:Lcom/tencent/b/a/a/i$f;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/i;->a(Lcom/tencent/b/a/a/i$f;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v0, "start add marker"

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->a(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;

    .line 237
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getPosition()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;->getLatitude()Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;->getVal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 238
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getPosition()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;->getLongitude()Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;->getVal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 239
    new-instance v3, Lcom/tencent/friday/uikit/d/d/a/a;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f;->d:Landroid/content/Context;

    iget v8, p0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-direct {v3, v1, v0, v8}, Lcom/tencent/friday/uikit/d/d/a/a;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;I)V

    .line 240
    new-instance v1, Lcom/tencent/a/a/a/h;

    invoke-direct {v1}, Lcom/tencent/a/a/a/h;-><init>()V

    new-instance v8, Lcom/tencent/a/a/a/e;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    .line 241
    invoke-virtual {v1, v8}, Lcom/tencent/a/a/a/h;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/h;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/d/d/a/a;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/a/a/a/h;->a(Landroid/view/View;)Lcom/tencent/a/a/a/h;

    move-result-object v4

    .line 243
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getIcon()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getIcon()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;->getOffset()Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 246
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getIcon()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;->getOffset()Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/d/a/d;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;)Landroid/graphics/PointF;

    move-result-object v1

    .line 250
    :goto_2
    invoke-virtual {v4, v1}, Lcom/tencent/a/a/a/h;->a(Landroid/graphics/PointF;)Lcom/tencent/a/a/a/h;

    .line 253
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getInfoWindow()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 255
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getInfoWindow()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;->getOffset()Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 256
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getInfoWindow()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;->getOffset()Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/d/a/d;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;)Landroid/graphics/PointF;

    move-result-object v1

    .line 260
    :goto_3
    invoke-virtual {v4, v1}, Lcom/tencent/a/a/a/h;->b(Landroid/graphics/PointF;)Lcom/tencent/a/a/a/h;

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    invoke-virtual {v1, v4}, Lcom/tencent/b/a/a/i;->a(Lcom/tencent/a/a/a/h;)Lcom/tencent/a/a/a/g;

    move-result-object v1

    .line 264
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/a/a/a/g;->a(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v3, v1}, Lcom/tencent/friday/uikit/d/d/a/a;->a(Lcom/tencent/a/a/a/g;)V

    .line 267
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map marker add error  id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getIcon()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/d/d/a/d;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)Landroid/graphics/PointF;

    move-result-object v1

    goto :goto_2

    .line 258
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getIcon()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->getInfoWindow()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;->getTableView()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/friday/uikit/d/d/a/d;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)Landroid/graphics/PointF;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_3

    .line 274
    :cond_6
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current size of marker list :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a([B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 334
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;

    .line 335
    if-eqz v0, :cond_b

    .line 336
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1, v2}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Z)V

    .line 339
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 342
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 346
    :cond_2
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    if-eqz v1, :cond_3

    .line 347
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setCenterCoordinate:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Z)V

    .line 349
    :cond_3
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v1, :cond_4

    .line 350
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setZoomLevel:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Z)V

    .line 352
    :cond_4
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_5

    .line 353
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableScroll:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/f;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 355
    :cond_5
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_6

    .line 356
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setDisableZoom:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/f;->c(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 358
    :cond_6
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_7

    .line 359
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setHideScale:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/f;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 363
    :cond_7
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 364
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->removeMarkerByIDs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/f;->b(Ljava/util/ArrayList;)V

    .line 366
    :cond_8
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->clearAllMarkers:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_clearAllMarkers;

    if-eqz v1, :cond_9

    .line 367
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->c()V

    .line 370
    :cond_9
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 371
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->addMarkers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/f;->a(Ljava/util/ArrayList;)V

    .line 373
    :cond_a
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    if-eqz v1, :cond_b

    .line 374
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod;->setMarkerPosition:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/f;->setMarkerPosition(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;)V

    .line 378
    :cond_b
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->a()V

    .line 451
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 453
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 2

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->getUiSettings()Lcom/tencent/b/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/b/a/a/j;->b(Z)V

    .line 197
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 285
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    .line 286
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/d/a/a;

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/a/a;->c()V

    .line 289
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 292
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 300
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/d/a/a;

    .line 303
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    monitor-exit p0

    return-void
.end method

.method public c(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 2

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/f;->getUiSettings()Lcom/tencent/b/a/a/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/b/a/a/j;->c(Z)V

    .line 203
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0, p0}, Lcom/tencent/b/a/a/i;->a(Lcom/tencent/b/a/a/i$a;)V

    .line 326
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 437
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    goto :goto_0
.end method

.method public setMarkerPosition(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;)V
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;->getMarkerID()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewMethod_setMarkerPosition;->getPosition()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/d/a/a;

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;->getLatitude()Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;->getLongitude()Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/friday/uikit/d/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;Lcom/tencent/friday/uikit/jce/UnityKit/UKDouble;)V

    .line 319
    :cond_0
    return-void
.end method

.method public setMaxZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 2

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/f;->f:I

    .line 211
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/f;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/i;->a(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public setMinZoomLevel(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 2

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/f;->g:I

    .line 221
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/f;->b:Lcom/tencent/b/a/a/i;

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/f;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/i;->b(I)V

    .line 223
    :cond_0
    return-void
.end method
