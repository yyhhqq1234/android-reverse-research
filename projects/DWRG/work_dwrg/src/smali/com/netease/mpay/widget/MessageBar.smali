.class public Lcom/netease/mpay/widget/MessageBar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/MessageBar$Message;
    }
.end annotation


# static fields
.field private static d:Landroid/util/SparseArray;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/util/LinkedList;

.field private e:Lcom/netease/mpay/widget/MessageBar$Message;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Landroid/view/animation/AlphaAnimation;

.field private i:Landroid/view/animation/AlphaAnimation;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/mpay/widget/MessageBar;->d:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->c:Ljava/util/LinkedList;

    new-instance v0, Lcom/netease/mpay/widget/aj;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/aj;-><init>(Lcom/netease/mpay/widget/MessageBar;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->j:Ljava/lang/Runnable;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->ak:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v1}, Lcom/netease/mpay/widget/MessageBar;->a(Landroid/view/View;)V

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

.method public static declared-synchronized a(Landroid/app/Activity;)Lcom/netease/mpay/widget/MessageBar;
    .locals 5

    const-class v1, Lcom/netease/mpay/widget/MessageBar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/widget/MessageBar;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/MessageBar;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/MessageBar;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/MessageBar;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lcom/netease/mpay/widget/MessageBar;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/MessageBar;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->do:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->dn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->b:Landroid/widget/TextView;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->h:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->i:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->i:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->i:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/netease/mpay/widget/ai;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/ai;-><init>(Lcom/netease/mpay/widget/MessageBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->g:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/netease/mpay/widget/MessageBar$Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/widget/MessageBar;->a(Lcom/netease/mpay/widget/MessageBar$Message;Z)V

    return-void
.end method

.method private a(Lcom/netease/mpay/widget/MessageBar$Message;Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/widget/MessageBar;->f:Z

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/netease/mpay/widget/MessageBar;->e:Lcom/netease/mpay/widget/MessageBar$Message;

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/widget/MessageBar$Message;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/netease/mpay/widget/MessageBar$Message;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->b:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->h:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/mpay/widget/MessageBar;->h:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/mpay/widget/MessageBar;->j:Ljava/lang/Runnable;

    iget v2, p1, Lcom/netease/mpay/widget/MessageBar$Message;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->h:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/netease/mpay/widget/MessageBar;Lcom/netease/mpay/widget/MessageBar$Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/MessageBar;->a(Lcom/netease/mpay/widget/MessageBar$Message;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/widget/MessageBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/widget/MessageBar;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/widget/MessageBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/widget/MessageBar;Lcom/netease/mpay/widget/MessageBar$Message;)Lcom/netease/mpay/widget/MessageBar$Message;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/MessageBar;->e:Lcom/netease/mpay/widget/MessageBar$Message;

    return-object p1
.end method

.method static synthetic c(Lcom/netease/mpay/widget/MessageBar;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->i:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-gez p3, :cond_0

    if-gez p4, :cond_0

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/netease/mpay/widget/MessageBar$Message;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/MessageBar$Message;-><init>(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/netease/mpay/widget/MessageBar;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/mpay/widget/MessageBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    if-gez p3, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    if-gez p4, :cond_2

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/MessageBar;->a(Lcom/netease/mpay/widget/MessageBar$Message;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mpay/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/mpay/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Parcelable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Parcelable;)V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/netease/mpay/widget/MessageBar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/netease/mpay/widget/MessageBar$Message;

    const/16 v2, 0x7d0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/MessageBar$Message;-><init>(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/netease/mpay/widget/MessageBar;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/widget/MessageBar;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/MessageBar;->a(Lcom/netease/mpay/widget/MessageBar$Message;)V

    goto :goto_0
.end method
