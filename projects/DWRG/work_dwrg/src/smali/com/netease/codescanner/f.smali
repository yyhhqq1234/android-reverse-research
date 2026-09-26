.class public Lcom/netease/codescanner/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/codescanner/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/netease/codescanner/f;


# instance fields
.field private b:Landroid/hardware/Camera;

.field private c:Z

.field private d:F

.field private e:I

.field private f:I

.field private g:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/codescanner/f;->c:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/codescanner/f;->d:F

    iput v4, p0, Lcom/netease/codescanner/f;->f:I

    :try_start_0
    iput-object p2, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/codescanner/f;->c:Z

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/netease/codescanner/f;->e:I

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/netease/codescanner/f$a;

    invoke-direct {v1, p0}, Lcom/netease/codescanner/f$a;-><init>(Lcom/netease/codescanner/f;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/netease/codescanner/f;->g:Landroid/view/GestureDetector;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/netease/codescanner/f;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    iput v4, p0, Lcom/netease/codescanner/f;->e:I

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    invoke-direct {v0}, Lcom/netease/codescanner/f;->d()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 1

    sget-object v0, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/codescanner/f;

    invoke-direct {v0, p0, p1}, Lcom/netease/codescanner/f;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    sput-object v0, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    :cond_0
    sget-object v0, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    invoke-direct {v0}, Lcom/netease/codescanner/f;->d()V

    return-void
.end method

.method static synthetic a(Lcom/netease/codescanner/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/codescanner/f;->c()V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    iget-boolean v0, p0, Lcom/netease/codescanner/f;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    div-int/lit8 v2, p2, 0x8

    add-int/2addr v0, v2

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/netease/codescanner/f;->e:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/netease/codescanner/f;->e:I

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/f;->c:Z

    goto :goto_0

    :cond_3
    :try_start_1
    iget v2, p0, Lcom/netease/codescanner/f;->f:I

    if-gt v0, v2, :cond_2

    iget v0, p0, Lcom/netease/codescanner/f;->f:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    iget-boolean v1, v1, Lcom/netease/codescanner/f;->c:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v0, :cond_2

    sget-object v1, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    iget-object v1, v1, Lcom/netease/codescanner/f;->g:Landroid/view/GestureDetector;

    invoke-virtual {v1, p0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    invoke-direct {v1, p0}, Lcom/netease/codescanner/f;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    iput-object v1, v0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    :cond_0
    sput-object v1, Lcom/netease/codescanner/f;->a:Lcom/netease/codescanner/f;

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netease/codescanner/f;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/netease/codescanner/f;->d:F

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netease/codescanner/f;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/netease/codescanner/f;->d:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/netease/codescanner/f;->d:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    invoke-direct {p0, v3, v1}, Lcom/netease/codescanner/f;->a(ZI)V

    :cond_0
    :goto_1
    iput v0, p0, Lcom/netease/codescanner/f;->d:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/netease/codescanner/f;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/codescanner/f;->d:F

    sub-float v2, v0, v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/netease/codescanner/f;->a(ZI)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private c()V
    .locals 3

    iget-boolean v0, p0, Lcom/netease/codescanner/f;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    iget v2, p0, Lcom/netease/codescanner/f;->e:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/netease/codescanner/f;->e:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/f;->c:Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/netease/codescanner/f;->f:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private d()V
    .locals 3

    iget-boolean v0, p0, Lcom/netease/codescanner/f;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    iget v2, p0, Lcom/netease/codescanner/f;->f:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/netease/codescanner/f;->f:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v1, p0, Lcom/netease/codescanner/f;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/f;->c:Z

    goto :goto_0
.end method
