.class public Lcom/netease/mpay/widget/pull2refresh/a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/pull2refresh/a$a;,
        Lcom/netease/mpay/widget/pull2refresh/a$g;,
        Lcom/netease/mpay/widget/pull2refresh/a$d;,
        Lcom/netease/mpay/widget/pull2refresh/a$c;,
        Lcom/netease/mpay/widget/pull2refresh/a$h;,
        Lcom/netease/mpay/widget/pull2refresh/a$e;,
        Lcom/netease/mpay/widget/pull2refresh/a$f;,
        Lcom/netease/mpay/widget/pull2refresh/a$i;,
        Lcom/netease/mpay/widget/pull2refresh/a$b;
    }
.end annotation


# instance fields
.field public ANIMATION_DUR_MAX:J

.field public ANIMATION_DUR_MIN:J

.field public OVER_PULL_BACK_THRESHOLD:I

.field public OVER_PULL_THRESHOLD:I

.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:D

.field private h:D

.field private i:Ljava/lang/Double;

.field private j:Ljava/lang/Double;

.field private k:I

.field private l:Z

.field private m:Z

.field public mOffsetScaler:D

.field private n:Z

.field private o:Lcom/netease/mpay/widget/pull2refresh/a$b;

.field private p:Lcom/netease/mpay/widget/pull2refresh/a$i;

.field private q:Lcom/netease/mpay/widget/pull2refresh/a$e;

.field private r:Lcom/netease/mpay/widget/pull2refresh/a$f;

.field private s:Lcom/netease/mpay/widget/pull2refresh/a$h;

.field private t:Lcom/netease/mpay/widget/pull2refresh/a$c;

.field private u:Lcom/netease/mpay/widget/pull2refresh/a$d;

.field private v:Lcom/netease/mpay/widget/pull2refresh/a$g;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->c:Landroid/content/Context;

    const/16 v0, 0x8

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->OVER_PULL_THRESHOLD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->OVER_PULL_BACK_THRESHOLD:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MIN:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MAX:J

    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->mOffsetScaler:D

    iput v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    iput-boolean v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->m:Z

    iput-boolean v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->n:Z

    iput v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->w:I

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->c:Landroid/content/Context;

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->c:Landroid/content/Context;

    const/16 v0, 0x8

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->OVER_PULL_THRESHOLD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->OVER_PULL_BACK_THRESHOLD:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MIN:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MAX:J

    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->mOffsetScaler:D

    iput v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    iput-boolean v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->m:Z

    iput-boolean v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->n:Z

    iput v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->w:I

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaled_height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->o:Lcom/netease/mpay/widget/pull2refresh/a$b;

    iget-object v3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->b:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/netease/mpay/widget/pull2refresh/a$b;->c(Landroid/view/View;)V

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->a()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/pull2refresh/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "Flow"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfLoad: YOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->o:Lcom/netease/mpay/widget/pull2refresh/a$b;

    iget-object v3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->b:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/netease/mpay/widget/pull2refresh/a$b;->c(Landroid/view/View;)V

    double-to-int v2, v0

    iget v3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    if-gt v2, v3, :cond_0

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->o:Lcom/netease/mpay/widget/pull2refresh/a$b;

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/netease/mpay/widget/pull2refresh/a$b;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->o:Lcom/netease/mpay/widget/pull2refresh/a$b;

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/netease/mpay/widget/pull2refresh/a$b;->d(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v10, v1

    invoke-direct {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->b()Z

    move-result v12

    invoke-direct {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->c()Z

    move-result v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    :cond_0
    :goto_1
    iput-wide v8, p0, Lcom/netease/mpay/widget/pull2refresh/a;->h:D

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    if-eqz v12, :cond_1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    :goto_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->j:Ljava/lang/Double;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->j:Ljava/lang/Double;

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v12, :cond_4

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->j:Ljava/lang/Double;

    if-nez v0, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->j:Ljava/lang/Double;

    :cond_3
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    if-nez v0, :cond_5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    :cond_5
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double v0, v10, v0

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->h:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, v10, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->onStartPulling(Landroid/view/View;)V

    :cond_6
    if-eqz v12, :cond_9

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    iget-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->n:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->j:Ljava/lang/Double;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->n:Z

    invoke-virtual {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->load()V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->refresh()V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->onCancelPulling(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Landroid/view/View;I)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent (R) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v10, v1

    invoke-direct {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->b()Z

    move-result v12

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    iput-wide v8, p0, Lcom/netease/mpay/widget/pull2refresh/a;->h:D

    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->f:Ljava/lang/Boolean;

    if-eqz v12, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->getHeaderHeight()I

    move-result v0

    int-to-double v0, v0

    sub-double v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    goto :goto_0

    :pswitch_2
    if-nez v12, :cond_2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->getHeaderHeight()I

    move-result v0

    int-to-double v0, v0

    sub-double v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOffsetOnTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastOffsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double v0, v10, v0

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->h:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, v10, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->f:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->i:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v10

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    :goto_1
    if-nez v12, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->b(Landroid/view/MotionEvent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getHeaderHeight()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private setHeaderHeight(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(DD)D
    .locals 4

    sub-double v0, p3, p1

    iget-wide v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->mOffsetScaler:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method protected a()V
    .locals 6

    const/4 v5, 0x1

    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->getHeaderTopOffset(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->OVER_PULL_THRESHOLD:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->g:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    invoke-direct {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->getHeaderHeight()I

    move-result v1

    sub-int v0, v1, v0

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->onHeaderComplete(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->getHeaderTopOffset(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->OVER_PULL_THRESHOLD:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->g:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-ge v0, v1, :cond_0

    iput v5, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->onHeaderInComplete(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method protected a(Landroid/view/View;IZ)V
    .locals 7

    new-instance v2, Lcom/netease/mpay/widget/pull2refresh/a$a;

    invoke-direct {v2, p1, p2}, Lcom/netease/mpay/widget/pull2refresh/a$a;-><init>(Landroid/view/View;I)V

    iget-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MAX:J

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v0, v3

    long-to-double v0, v0

    const-wide v3, 0x405f800000000000L    # 126.0

    iget-wide v5, p0, Lcom/netease/mpay/widget/pull2refresh/a;->g:D

    mul-double/2addr v3, v5

    div-double/2addr v0, v3

    double-to-int v0, v0

    int-to-long v0, v0

    iget-wide v3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MAX:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    iget-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MAX:J

    :cond_0
    iget-wide v3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MIN:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->ANIMATION_DUR_MIN:J

    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Lcom/netease/mpay/widget/pull2refresh/c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/pull2refresh/c;-><init>(Lcom/netease/mpay/widget/pull2refresh/a;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    new-instance v0, Lcom/netease/mpay/widget/pull2refresh/d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/pull2refresh/d;-><init>(Lcom/netease/mpay/widget/pull2refresh/a;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public completeLoad()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->n:Z

    return-void
.end method

.method public completeRefresh()V
    .locals 3

    const/4 v2, 0x1

    iput v2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->getHeaderHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public disablePull2Refresh()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->m:Z

    return-void
.end method

.method public enablePull2Refresh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->m:Z

    return-void
.end method

.method public getHeaderTopOffset(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->o:Lcom/netease/mpay/widget/pull2refresh/a$b;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/a$b;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Lcom/netease/mpay/widget/pull2refresh/a$b;)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/netease/mpay/widget/pull2refresh/a;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/netease/mpay/widget/pull2refresh/a;->o:Lcom/netease/mpay/widget/pull2refresh/a$b;

    invoke-direct {p0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    iput v4, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->e:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->n:Z

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->c:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    div-float/2addr v0, v3

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->g:D

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->b:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/widget/pull2refresh/b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/pull2refresh/b;-><init>(Lcom/netease/mpay/widget/pull2refresh/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public load()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/mpay/widget/pull2refresh/a;->onLoad()V

    return-void
.end method

.method public onCancelPulling(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->t:Lcom/netease/mpay/widget/pull2refresh/a$c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->t:Lcom/netease/mpay/widget/pull2refresh/a$c;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/a$c;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onHeaderCollapsed(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->u:Lcom/netease/mpay/widget/pull2refresh/a$d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->u:Lcom/netease/mpay/widget/pull2refresh/a$d;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/a$d;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onHeaderComplete(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->q:Lcom/netease/mpay/widget/pull2refresh/a$e;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->q:Lcom/netease/mpay/widget/pull2refresh/a$e;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/a$e;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onHeaderInComplete(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->r:Lcom/netease/mpay/widget/pull2refresh/a$f;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->r:Lcom/netease/mpay/widget/pull2refresh/a$f;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/a$f;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLoad()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->v:Lcom/netease/mpay/widget/pull2refresh/a$g;

    invoke-interface {v0}, Lcom/netease/mpay/widget/pull2refresh/a$g;->a()V

    return-void
.end method

.method public onRefresh(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->s:Lcom/netease/mpay/widget/pull2refresh/a$h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->s:Lcom/netease/mpay/widget/pull2refresh/a$h;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/a$h;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStartPulling(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->p:Lcom/netease/mpay/widget/pull2refresh/a$i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->p:Lcom/netease/mpay/widget/pull2refresh/a$i;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/pull2refresh/a$i;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->w:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->w:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->w:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/pull2refresh/a;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public refresh()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->d:I

    iget v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->setHeaderHeight(I)V

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/pull2refresh/a;->onRefresh(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/pull2refresh/a;->a:Landroid/view/View;

    iget v1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/widget/pull2refresh/a;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setConfiguration(Lcom/netease/mpay/widget/pull2refresh/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->o:Lcom/netease/mpay/widget/pull2refresh/a$b;

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->l:Z

    return-void
.end method

.method public setOnCancelPullingListener(Lcom/netease/mpay/widget/pull2refresh/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->t:Lcom/netease/mpay/widget/pull2refresh/a$c;

    return-void
.end method

.method public setOnHeaderCollapsedListener(Lcom/netease/mpay/widget/pull2refresh/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->u:Lcom/netease/mpay/widget/pull2refresh/a$d;

    return-void
.end method

.method public setOnHeaderCompleteListener(Lcom/netease/mpay/widget/pull2refresh/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->q:Lcom/netease/mpay/widget/pull2refresh/a$e;

    return-void
.end method

.method public setOnHeaderIncompleteListener(Lcom/netease/mpay/widget/pull2refresh/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->r:Lcom/netease/mpay/widget/pull2refresh/a$f;

    return-void
.end method

.method public setOnLoadListener(Lcom/netease/mpay/widget/pull2refresh/a$g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->v:Lcom/netease/mpay/widget/pull2refresh/a$g;

    return-void
.end method

.method public setOnRefreshListener(Lcom/netease/mpay/widget/pull2refresh/a$h;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->s:Lcom/netease/mpay/widget/pull2refresh/a$h;

    return-void
.end method

.method public setOnStartPullingListener(Lcom/netease/mpay/widget/pull2refresh/a$i;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/pull2refresh/a;->p:Lcom/netease/mpay/widget/pull2refresh/a$i;

    return-void
.end method
