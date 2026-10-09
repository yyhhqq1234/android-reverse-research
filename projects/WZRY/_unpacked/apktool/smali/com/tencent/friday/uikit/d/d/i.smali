.class public Lcom/tencent/friday/uikit/d/d/i;
.super Landroid/widget/AbsoluteLayout;
.source "JViewGroup.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
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
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    .line 48
    invoke-virtual {p0, v1, v1, v2, v2}, Lcom/tencent/friday/uikit/d/d/i;->layout(IIII)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V

    .line 50
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/i;->c()V

    .line 51
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/a;

    .line 350
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lcom/tencent/friday/uikit/d/a;->b()V

    .line 353
    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/tencent/friday/uikit/d/d/a;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/a;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 184
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V
    .locals 3

    .prologue
    .line 245
    new-instance v0, Lcom/tencent/friday/uikit/d/d/b;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/b;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 247
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/tencent/friday/uikit/d/d/c;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/friday/uikit/d/d/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;)V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Lcom/tencent/friday/uikit/d/d/d;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/friday/uikit/d/d/d;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;Z)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 175
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lcom/tencent/friday/uikit/d/d/e;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/e;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/tencent/friday/uikit/d/d/f;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/f;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Lcom/tencent/friday/uikit/d/d/g;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/g;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 210
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/g;->b()Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 211
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/g;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/d/g;->a()Lcom/tencent/friday/uikit/d/d/b/a;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Lcom/tencent/friday/uikit/d/d/h;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/h;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/h;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;)V
    .locals 1

    .prologue
    .line 307
    if-eqz p1, :cond_8

    .line 308
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getLabel()Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getLabel()Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;)V

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getButton()Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getButton()Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V

    .line 320
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getMapView()Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getMapView()Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V

    .line 324
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getTextBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 325
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getTextBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V

    .line 328
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getTableView()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 329
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getTableView()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 332
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getLoadingView()Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 333
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getLoadingView()Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V

    .line 335
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getViewGroup()Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getViewGroup()Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->b(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V

    .line 338
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getCheckBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 339
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;->getCheckBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V

    .line 343
    :cond_8
    return-void
.end method

.method private b(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Lcom/tencent/friday/uikit/d/d/i;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/friday/uikit/d/d/i;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/d/i;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/i;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 260
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/a;

    .line 264
    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/tencent/friday/uikit/d/a;->a()V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 269
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 60
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 61
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 61
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getLabels()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getLabels()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 69
    new-instance v3, Lcom/tencent/friday/uikit/d/d/d;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v6}, Lcom/tencent/friday/uikit/d/d/d;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;Z)V

    .line 70
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/d;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getButtons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getButtons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 77
    new-instance v3, Lcom/tencent/friday/uikit/d/d/a;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/a;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V

    .line 78
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getImageViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getImageViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 85
    new-instance v3, Lcom/tencent/friday/uikit/d/d/c;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v6}, Lcom/tencent/friday/uikit/d/d/c;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Z)V

    .line 86
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getMapViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getMapViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 93
    new-instance v3, Lcom/tencent/friday/uikit/d/d/f;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/f;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/f;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getTableViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getTableViews()Ljava/util/ArrayList;

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

    .line 101
    new-instance v3, Lcom/tencent/friday/uikit/d/d/g;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/g;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 102
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/d/d/g;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/d/d/g;->a()Lcom/tencent/friday/uikit/d/d/b/a;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v3}, Lcom/tencent/friday/uikit/d/d/g;->b()Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 107
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getTextBoxes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getTextBoxes()Ljava/util/ArrayList;

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

    .line 109
    new-instance v3, Lcom/tencent/friday/uikit/d/d/h;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/h;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/h;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 115
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getLoadingViews()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getLoadingViews()Ljava/util/ArrayList;

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

    .line 117
    new-instance v3, Lcom/tencent/friday/uikit/d/d/e;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/e;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V

    .line 118
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/e;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 123
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getCheckBoxes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getCheckBoxes()Ljava/util/ArrayList;

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

    .line 125
    new-instance v3, Lcom/tencent/friday/uikit/d/d/b;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/b;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 131
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getViewGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 132
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;->getViewGroups()Ljava/util/ArrayList;

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

    .line 133
    new-instance v3, Lcom/tencent/friday/uikit/d/d/i;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/i;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/friday/uikit/d/d/i;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/i;->c:Ljava/util/HashMap;

    iget v4, v3, Lcom/tencent/friday/uikit/d/d/i;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 142
    :cond_8
    new-instance v0, Lcom/tencent/friday/uikit/d/d/i$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/i$1;-><init>(Lcom/tencent/friday/uikit/d/d/i;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 152
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->addView(Landroid/view/View;)V

    goto :goto_9

    .line 156
    :cond_9
    invoke-virtual {p0, v6}, Lcom/tencent/friday/uikit/d/d/i;->setClickable(Z)V

    .line 157
    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 282
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;

    .line 283
    if-eqz v0, :cond_4

    .line 284
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 287
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 290
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 293
    :cond_2
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->addView:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;

    invoke-direct {p0, v1}, Lcom/tencent/friday/uikit/d/d/i;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod_addView;)V

    .line 297
    :cond_3
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v1, :cond_4

    .line 298
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroupMethod;->removeViewByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/i;->a(I)V

    .line 301
    :cond_4
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/i;->a()V

    .line 274
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 276
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/i;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 254
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/i;->a:I

    goto :goto_0
.end method
