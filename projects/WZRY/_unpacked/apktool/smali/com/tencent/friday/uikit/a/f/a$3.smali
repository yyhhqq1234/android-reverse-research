.class Lcom/tencent/friday/uikit/a/f/a$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/friday/uikit/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/friday/uikit/a/f/a;


# direct methods
.method constructor <init>(Lcom/tencent/friday/uikit/a/f/a;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 427
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 428
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 429
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 430
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 431
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 432
    const/4 v4, 0x1

    aget v1, v1, v4

    .line 433
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 434
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/friday/uikit/a/f/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    .line 359
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/friday/uikit/a/f/a;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    .line 406
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->getChildCount()I

    move-result v1

    .line 407
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0, v4}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 410
    invoke-direct {p0, p1, v2}, Lcom/tencent/friday/uikit/a/f/a$3;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/f/a;->e(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/f/a;->e(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    iget-object v3, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    .line 415
    invoke-static {v3}, Lcom/tencent/friday/uikit/a/f/a;->c(Lcom/tencent/friday/uikit/a/f/a;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v4

    iget-object v5, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    iget-object v5, v5, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    iget-object v6, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    .line 417
    invoke-static {v6}, Lcom/tencent/friday/uikit/a/f/a;->c(Lcom/tencent/friday/uikit/a/f/a;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 414
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 423
    :cond_0
    return-void

    .line 407
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    .line 367
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    iget v2, v0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/tencent/friday/uikit/a/f/a;->d:I

    .line 370
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->requestLayout()V

    .line 373
    const/4 v0, 0x1

    return v0

    .line 370
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    .line 379
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/f/a;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-virtual {v0, v6}, Lcom/tencent/friday/uikit/a/f/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 382
    invoke-direct {p0, p1, v2}, Lcom/tencent/friday/uikit/a/f/a$3;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/f/a;->b(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/f/a;->b(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    iget-object v3, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    .line 387
    invoke-static {v3}, Lcom/tencent/friday/uikit/a/f/a;->c(Lcom/tencent/friday/uikit/a/f/a;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    iget-object v4, v4, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    .line 388
    invoke-static {v5}, Lcom/tencent/friday/uikit/a/f/a;->c(Lcom/tencent/friday/uikit/a/f/a;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 386
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/f/a;->d(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/f/a;->d(Lcom/tencent/friday/uikit/a/f/a;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    iget-object v3, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    .line 393
    invoke-static {v3}, Lcom/tencent/friday/uikit/a/f/a;->c(Lcom/tencent/friday/uikit/a/f/a;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    iget-object v4, v4, Lcom/tencent/friday/uikit/a/f/a;->b:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/tencent/friday/uikit/a/f/a$3;->a:Lcom/tencent/friday/uikit/a/f/a;

    .line 394
    invoke-static {v5}, Lcom/tencent/friday/uikit/a/f/a;->c(Lcom/tencent/friday/uikit/a/f/a;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 392
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 400
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 379
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method
