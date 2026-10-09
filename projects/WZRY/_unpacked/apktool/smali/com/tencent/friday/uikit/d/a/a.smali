.class public Lcom/tencent/friday/uikit/d/a/a;
.super Landroid/widget/AbsoluteLayout;
.source "Page.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/friday/uikit/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput v1, p0, Lcom/tencent/friday/uikit/d/a/a;->b:I

    .line 59
    iput v1, p0, Lcom/tencent/friday/uikit/d/a/a;->c:I

    .line 60
    iput v1, p0, Lcom/tencent/friday/uikit/d/a/a;->d:I

    .line 61
    iput v1, p0, Lcom/tencent/friday/uikit/d/a/a;->e:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    .line 70
    invoke-virtual {p0, v2, v2, v1, v1}, Lcom/tencent/friday/uikit/d/a/a;->layout(IIII)V

    .line 71
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/a;

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Lcom/tencent/friday/uikit/d/a;->b()V

    .line 414
    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/tencent/friday/uikit/d/d/a;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/a;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V

    .line 243
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/b;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 307
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lcom/tencent/friday/uikit/d/d/c;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/friday/uikit/d/d/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 253
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;)V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Lcom/tencent/friday/uikit/d/d/d;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/friday/uikit/d/d/d;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;Z)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 235
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Lcom/tencent/friday/uikit/d/d/e;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/e;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 289
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lcom/tencent/friday/uikit/d/d/f;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/f;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 262
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;)V
    .locals 1

    .prologue
    .line 367
    if-eqz p1, :cond_8

    .line 368
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getLabel()Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getLabel()Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;)V

    .line 372
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getButton()Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getButton()Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V

    .line 380
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getMapView()Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 381
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getMapView()Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V

    .line 384
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getTextBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 385
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getTextBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V

    .line 388
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getTableView()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getTableView()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 392
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getLoadingView()Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 393
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getLoadingView()Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V

    .line 396
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getViewGroup()Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 397
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getViewGroup()Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V

    .line 400
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getCheckBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 401
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->getCheckBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V

    .line 404
    :cond_8
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Lcom/tencent/friday/uikit/d/d/g;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/g;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 270
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/g;->b()Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 271
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/g;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/g;->a()Lcom/tencent/friday/uikit/d/d/b/a;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V
    .locals 3

    .prologue
    .line 278
    new-instance v0, Lcom/tencent/friday/uikit/d/d/h;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/h;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 280
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/h;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Lcom/tencent/friday/uikit/d/d/i;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/i;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    .line 298
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/i;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/a/a;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 320
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/a;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0}, Lcom/tencent/friday/uikit/d/a;->a()V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 329
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 80
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 81
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 82
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 83
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setRec(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getMapViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getMapViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 89
    new-instance v3, Lcom/tencent/friday/uikit/d/d/f;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/f;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getLabels()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getLabels()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 98
    new-instance v3, Lcom/tencent/friday/uikit/d/d/d;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v6}, Lcom/tencent/friday/uikit/d/d/d;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;Z)V

    .line 99
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getButtons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getButtons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 106
    new-instance v3, Lcom/tencent/friday/uikit/d/d/a;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/a;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getImageViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getImageViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 114
    new-instance v3, Lcom/tencent/friday/uikit/d/d/c;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v6}, Lcom/tencent/friday/uikit/d/d/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V

    .line 115
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getTableViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getTableViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 124
    new-instance v3, Lcom/tencent/friday/uikit/d/d/g;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/g;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/d/d/g;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/d/d/g;->a()Lcom/tencent/friday/uikit/d/d/b/a;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v3}, Lcom/tencent/friday/uikit/d/d/g;->b()Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getTextBoxes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getTextBoxes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 132
    new-instance v3, Lcom/tencent/friday/uikit/d/d/h;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/h;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/h;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 138
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getLoadingViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 139
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getLoadingViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 140
    new-instance v3, Lcom/tencent/friday/uikit/d/d/e;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/e;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/e;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 146
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getCheckBoxes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getCheckBoxes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 148
    new-instance v3, Lcom/tencent/friday/uikit/d/d/b;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/b;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V

    .line 149
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 154
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getViewGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 155
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getViewGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 156
    new-instance v3, Lcom/tencent/friday/uikit/d/d/i;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/a/a;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/i;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V

    .line 157
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/a/a;->g:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/i;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 165
    :cond_8
    new-instance v0, Lcom/tencent/friday/uikit/d/a/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/a/a$1;-><init>(Lcom/tencent/friday/uikit/d/a/a;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 175
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->addView(Landroid/view/View;)V

    goto :goto_9

    .line 179
    :cond_9
    invoke-virtual {p0, v6}, Lcom/tencent/friday/uikit/d/a/a;->setClickable(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/a/a;->c()V

    .line 183
    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 342
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;

    .line 343
    if-eqz v0, :cond_4

    .line 344
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/a/a;->setRec(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 347
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/a/a;->setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 350
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/a/a;->setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 353
    :cond_2
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    if-eqz v1, :cond_3

    .line 354
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    invoke-direct {p0, v1}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;)V

    .line 357
    :cond_3
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v1, :cond_4

    .line 358
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->a(I)V

    .line 361
    :cond_4
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/a/a;->a()V

    .line 334
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/a/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/a/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 336
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 338
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/a/a;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 314
    return-void
.end method

.method public setBackgroundColor(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V
    .locals 1

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-static {p1}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setBackgroundColor(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/a/a;->a:I

    goto :goto_0
.end method

.method public setInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 1

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->val:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setRec(Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V
    .locals 1

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->x:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/a/a;->b:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setX(F)V

    .line 214
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->y:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/a/a;->c:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/a/a;->setY(F)V

    .line 215
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->width:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/a/a;->d:I

    .line 216
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->height:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/a/a;->e:I

    goto :goto_0
.end method
