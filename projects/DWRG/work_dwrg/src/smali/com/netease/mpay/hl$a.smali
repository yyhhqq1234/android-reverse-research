.class Lcom/netease/mpay/hl$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/hl$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/hl;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/netease/mpay/hx;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/hl;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/hl;Lcom/netease/mpay/hm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/hl$a;-><init>(Lcom/netease/mpay/hl;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/hl$a;)Lcom/netease/mpay/hx;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->c:Lcom/netease/mpay/hx;

    return-object v0
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    new-instance v1, Lcom/netease/mpay/widget/am;

    invoke-direct {v1}, Lcom/netease/mpay/widget/am;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/mpay/hl;->a(Lcom/netease/mpay/hl;Lcom/netease/mpay/widget/am;)Lcom/netease/mpay/widget/am;

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->d(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/am;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/hs;

    invoke-direct {v1, p0}, Lcom/netease/mpay/hs;-><init>(Lcom/netease/mpay/hl$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/am;->a(Lcom/netease/mpay/widget/am$c;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/netease/mpay/hl$a$a;

    const/4 v2, 0x1

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3e4ccccc    # 0.19999999f

    const/16 v5, 0x2ee

    new-instance v6, Lcom/netease/mpay/ht;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ht;-><init>(Lcom/netease/mpay/hl$a;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hl$a$a;-><init>(Lcom/netease/mpay/hl$a;IFFILcom/netease/mpay/hl$c;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(FFILcom/netease/mpay/hl$b;)V
    .locals 8

    const/4 v3, 0x1

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    mul-int/lit16 v0, p3, 0x3e8

    div-int/lit8 v4, v0, 0x14

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mpay/ho;

    invoke-direct {v1, p0, p4}, Lcom/netease/mpay/ho;-><init>(Lcom/netease/mpay/hl$a;Lcom/netease/mpay/hl$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v2, v3

    :goto_0
    const/16 v0, 0x14

    if-gt v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/hl$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Float;

    const/4 v1, 0x0

    sub-float v5, p1, p2

    int-to-float v6, v2

    mul-float/2addr v6, p2

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lcom/netease/mpay/hl$a;->publishProgress([Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p4}, Lcom/netease/mpay/hl$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x64

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    int-to-long v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-static {v1}, Lcom/netease/mpay/hl;->e(Lcom/netease/mpay/hl;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-static {v1}, Lcom/netease/mpay/hl;->f(Lcom/netease/mpay/hl;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/hl$a;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/mpay/hl$a;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private b()V
    .locals 8

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mpay/hu;

    invoke-direct {v1, p0}, Lcom/netease/mpay/hu;-><init>(Lcom/netease/mpay/hl$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/netease/mpay/hl$a$a;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccc    # 0.19999999f

    const/16 v5, 0x1f4

    new-instance v6, Lcom/netease/mpay/hv;

    invoke-direct {v6, p0}, Lcom/netease/mpay/hv;-><init>(Lcom/netease/mpay/hl$a;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/hl$a$a;-><init>(Lcom/netease/mpay/hl$a;IFFILcom/netease/mpay/hl$c;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/hl$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/hl$a;->b()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const/16 v4, 0xa

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netease/mpay/hl$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v0, Lcom/netease/mpay/hp;

    invoke-direct {v0, p0}, Lcom/netease/mpay/hp;-><init>(Lcom/netease/mpay/hl$a;)V

    invoke-direct {p0, v2, v2, v4, v0}, Lcom/netease/mpay/hl$a;->a(FFILcom/netease/mpay/hl$b;)V

    invoke-virtual {p0}, Lcom/netease/mpay/hl$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    new-instance v1, Lcom/netease/mpay/hq;

    invoke-direct {v1, p0}, Lcom/netease/mpay/hq;-><init>(Lcom/netease/mpay/hl$a;)V

    invoke-direct {p0, v0, v2, v4, v1}, Lcom/netease/mpay/hl$a;->a(FFILcom/netease/mpay/hl$b;)V

    invoke-virtual {p0}, Lcom/netease/mpay/hl$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3e4cccce    # 0.20000002f

    new-instance v2, Lcom/netease/mpay/hr;

    invoke-direct {v2, p0}, Lcom/netease/mpay/hr;-><init>(Lcom/netease/mpay/hl$a;)V

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/netease/mpay/hl$a;->a(FFILcom/netease/mpay/hl$b;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/netease/mpay/hl$a;->a()V

    return-void
.end method

.method protected varargs a([Ljava/lang/Float;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-static {v1}, Lcom/netease/mpay/hl;->c(Lcom/netease/mpay/hl;)Lcom/netease/mpay/hl$d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/hl$d;->a(F)V

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bA:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bx:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/hl$a;->a(II)V

    goto :goto_0

    :cond_2
    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v0

    if-nez v1, :cond_3

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bx:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bz:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/hl$a;->a(II)V

    goto :goto_0

    :cond_3
    const v1, 0x3f19999a    # 0.6f

    cmpl-float v1, v1, v0

    if-nez v1, :cond_4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bz:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bC:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/hl$a;->a(II)V

    goto :goto_0

    :cond_4
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v1, v0

    if-nez v1, :cond_5

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bC:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bB:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/hl$a;->a(II)V

    goto :goto_0

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bB:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->by:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/hl$a;->a(II)V

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cu:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bD:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$c;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Lcom/netease/mpay/hw;

    invoke-direct {v1, p0}, Lcom/netease/mpay/hw;-><init>(Lcom/netease/mpay/hl$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bG:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$d;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v2, v2, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->F:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-static {v2}, Lcom/netease/mpay/hl;->b(Lcom/netease/mpay/hl;)Lcom/netease/mpay/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->c:Lcom/netease/mpay/hx;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-static {v2}, Lcom/netease/mpay/hl;->b(Lcom/netease/mpay/hl;)Lcom/netease/mpay/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v3, v3, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3}, Lcom/netease/mpay/widget/az;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/hl$a;->c:Lcom/netease/mpay/hx;

    invoke-virtual {v4}, Lcom/netease/mpay/hx;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.14.1"

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ay;->b(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/hl$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/hl$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v0, v0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bF:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/hl$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->b:Landroid/widget/TextView;

    const-string v1, "1%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->c(Lcom/netease/mpay/hl;)Lcom/netease/mpay/hl$d;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hl$d;->a(F)V

    new-instance v0, Lcom/netease/mpay/hx;

    iget-object v1, p0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v1, v1, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/hx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/hl$a;->c:Lcom/netease/mpay/hx;

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/hl$a;->a([Ljava/lang/Float;)V

    return-void
.end method
