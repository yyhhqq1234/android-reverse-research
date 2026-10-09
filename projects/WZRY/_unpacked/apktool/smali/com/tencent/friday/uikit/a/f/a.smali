.class public Lcom/tencent/friday/uikit/a/f/a;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field protected b:Landroid/widget/ListAdapter;

.field protected c:I

.field protected d:I

.field protected e:Landroid/widget/Scroller;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/view/GestureDetector;

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private o:Z

.field private p:Landroid/database/DataSetObserver;

.field private q:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/a/f/a;->a:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    .line 28
    iput v1, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    .line 31
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    .line 32
    iput v1, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->k:Ljava/util/Queue;

    .line 39
    iput-boolean v1, p0, Lcom/tencent/friday/uikit/a/f/a;->o:Z

    .line 79
    new-instance v0, Lcom/tencent/friday/uikit/a/f/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/a/f/a$1;-><init>(Lcom/tencent/friday/uikit/a/f/a;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->p:Landroid/database/DataSetObserver;

    .line 345
    new-instance v0, Lcom/tencent/friday/uikit/a/f/a$3;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/a/f/a$3;-><init>(Lcom/tencent/friday/uikit/a/f/a;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->q:Landroid/view/GestureDetector$OnGestureListener;

    .line 44
    invoke-direct {p0}, Lcom/tencent/friday/uikit/a/f/a;->a()V

    .line 45
    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 49
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->c:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    .line 54
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    .line 55
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/friday/uikit/a/f/a;->q:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->j:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 223
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/tencent/friday/uikit/a/f/a;->a(II)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 231
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/tencent/friday/uikit/a/f/a;->b(II)V

    .line 233
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 237
    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    .line 238
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->k:Ljava/util/Queue;

    .line 242
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 243
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/friday/uikit/a/f/a;->a(Landroid/view/View;I)V

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 246
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 248
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    .line 251
    :cond_0
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    if-gez v0, :cond_1

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    .line 255
    :cond_1
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    goto :goto_0

    .line 258
    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 150
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/friday/uikit/a/f/a;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 152
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/a/f/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tencent/friday/uikit/a/f/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/a/f/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/friday/uikit/a/f/a;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/friday/uikit/a/f/a;->a()V

    .line 131
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->removeAllViewsInLayout()V

    .line 132
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 275
    invoke-virtual {p0, v3}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 278
    iget v1, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    .line 279
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->removeViewInLayout(Landroid/view/View;)V

    .line 281
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    .line 282
    invoke-virtual {p0, v3}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->removeViewInLayout(Landroid/view/View;)V

    .line 291
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->g:I

    .line 292
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_1
    return-void
.end method

.method private b(II)V
    .locals 3

    .prologue
    .line 262
    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    if-ltz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->k:Ljava/util/Queue;

    .line 265
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 264
    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/friday/uikit/a/f/a;->a(Landroid/view/View;I)V

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 268
    iget v1, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    .line 269
    iget v1, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/friday/uikit/a/f/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->f:I

    return v0
.end method

.method private c(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    .line 301
    iget v2, p0, Lcom/tencent/friday/uikit/a/f/a;->i:I

    move v0, v1

    .line 302
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 306
    add-int v5, v2, v4

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 306
    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 308
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 341
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 342
    return v1
.end method

.method protected a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    .line 330
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    iget v1, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 333
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->requestLayout()V

    .line 336
    const/4 v0, 0x1

    return v0

    .line 333
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->j:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 324
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 162
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/a/f/a;->o:Z

    if-eqz v0, :cond_2

    .line 169
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->c:I

    .line 170
    invoke-direct {p0}, Lcom/tencent/friday/uikit/a/f/a;->a()V

    .line 171
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/a/f/a;->removeAllViewsInLayout()V

    .line 172
    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/a/f/a;->o:Z

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 179
    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    .line 182
    :cond_3
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    if-gtz v0, :cond_4

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    .line 185
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 187
    :cond_4
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    iget v1, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    if-lt v0, v1, :cond_5

    .line 189
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->h:I

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    .line 190
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 193
    :cond_5
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->c:I

    iget v1, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    sub-int/2addr v0, v1

    .line 195
    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->b(I)V

    .line 196
    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->a(I)V

    .line 197
    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->c(I)V

    .line 199
    iget v0, p0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    iput v0, p0, Lcom/tencent/friday/uikit/a/f/a;->c:I

    .line 201
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/tencent/friday/uikit/a/f/a$2;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/a/f/a$2;-><init>(Lcom/tencent/friday/uikit/a/f/a;)V

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/a/f/a;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/friday/uikit/a/f/a;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    .line 124
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    invoke-direct {p0}, Lcom/tencent/friday/uikit/a/f/a;->b()V

    .line 126
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/f/a;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 70
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/f/a;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 77
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/f/a;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 64
    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
