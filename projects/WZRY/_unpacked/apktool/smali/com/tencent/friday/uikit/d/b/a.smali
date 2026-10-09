.class public Lcom/tencent/friday/uikit/d/b/a;
.super Landroid/widget/FrameLayout;
.source "Scene.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/friday/uikit/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/b/a;->a:Ljava/util/HashMap;

    .line 37
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/b/a;->b:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/b/a;->d()V

    .line 39
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/b/a;->c()V

    .line 40
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/tencent/friday/uikit/d/b/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/b/a$1;-><init>(Lcom/tencent/friday/uikit/d/b/a;)V

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/b/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/a/a;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/a/a;->a()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 129
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    const v1, -0x133a256

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 107
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/b/a;->e()V

    .line 108
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/b/a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/d/a/a;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/b/a;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/b/a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/a/a;->a()V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 67
    new-instance v0, Lcom/tencent/friday/uikit/d/a/a;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/b/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/friday/uikit/d/a/a;-><init>(Landroid/content/Context;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->width:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    .line 70
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->height:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    .line 72
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->x:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v3, v3, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/tencent/friday/uikit/d/a/a;->setX(F)V

    .line 73
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->y:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v3, v3, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/tencent/friday/uikit/d/a/a;->setY(F)V

    .line 74
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/friday/uikit/d/c/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/friday/uikit/d/a/a;->setBackgroundColor(I)V

    .line 75
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 77
    int-to-float v1, v2

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 78
    invoke-virtual {p0, v0, v3}, Lcom/tencent/friday/uikit/d/b/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {v0, p1}, Lcom/tencent/friday/uikit/d/a/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;)V

    .line 81
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/b/a;->a:Ljava/util/HashMap;

    iget v2, v0, Lcom/tencent/friday/uikit/d/a/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 133
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/d/b/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;)V

    .line 138
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v1, :cond_1

    .line 139
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/b/a;->a(I)V

    .line 142
    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    const v1, -0x133a256

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 102
    return-void
.end method
