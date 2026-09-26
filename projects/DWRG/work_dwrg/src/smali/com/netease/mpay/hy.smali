.class public Lcom/netease/mpay/hy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/hy$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/netease/mpay/hy;


# instance fields
.field private final a:I

.field private d:Landroid/content/Context;

.field private e:Lcom/netease/mpay/e/b;

.field private f:I

.field private g:Lcom/netease/mpay/hy$a;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/Handler;

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;

.field private r:Ljava/lang/Runnable;

.field private s:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.netease.mpay.MpayLoginActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.netease.mpay.MpayLoginActionBarActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.netease.mpay.MpayActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.unionpay.uppay.PayActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.alipay.android.mini.window.sdk.MiniPayActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.alipay.android.mini.window.sdk.MiniWebActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/hy;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/hy;->f:I

    new-instance v0, Lcom/netease/mpay/hz;

    invoke-direct {v0, p0}, Lcom/netease/mpay/hz;-><init>(Lcom/netease/mpay/hy;)V

    iput-object v0, p0, Lcom/netease/mpay/hy;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/netease/mpay/ia;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ia;-><init>(Lcom/netease/mpay/hy;)V

    iput-object v0, p0, Lcom/netease/mpay/hy;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/netease/mpay/ib;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ib;-><init>(Lcom/netease/mpay/hy;)V

    iput-object v0, p0, Lcom/netease/mpay/hy;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/netease/mpay/ic;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ic;-><init>(Lcom/netease/mpay/hy;)V

    iput-object v0, p0, Lcom/netease/mpay/hy;->s:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object p2, p0, Lcom/netease/mpay/hy;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/hy;->j:Ljava/lang/String;

    mul-int/lit16 v0, p4, 0x3e8

    iput v0, p0, Lcom/netease/mpay/hy;->a:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hy;->o:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/hy;->d:Landroid/content/Context;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/hy;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/hy;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/hy;->e:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/hy;->s:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hy;->h:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "track-online-thread"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netease/mpay/hy;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netease/mpay/hy;->n:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/id;

    invoke-direct {v1, p0}, Lcom/netease/mpay/id;-><init>(Lcom/netease/mpay/hy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

.method public static a()V
    .locals 2

    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    invoke-direct {v0}, Lcom/netease/mpay/hy;->d()Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/netease/mpay/hy;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/hy$a;)V

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/hy$a;)V
    .locals 1

    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/hy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/mpay/hy;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    :cond_0
    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    invoke-direct {v0, p4}, Lcom/netease/mpay/hy;->a(Lcom/netease/mpay/hy$a;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/hy$a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/hy;->g:Lcom/netease/mpay/hy$a;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/hy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/netease/mpay/hy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    invoke-direct {v0, p0}, Lcom/netease/mpay/hy;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/hy;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9

    cmp-long v0, p4, p6

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/hy;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/hy;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/hy;->j:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[J

    const/4 v0, 0x0

    aget-object v0, v7, v0

    const/4 v1, 0x0

    aput-wide p4, v0, v1

    const/4 v0, 0x0

    aget-object v0, v7, v0

    const/4 v1, 0x1

    aput-wide p6, v0, v1

    iget-object v0, p0, Lcom/netease/mpay/hy;->d:Landroid/content/Context;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hy;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/hy;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/hy;->j:Ljava/lang/String;

    const-string v8, "a2.14.1"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[JLjava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/hy;->d:Landroid/content/Context;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hy;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ay;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/hy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/hy;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/netease/mpay/hy;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/hy;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/netease/mpay/hy;->d()Z

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/netease/mpay/hy;->f:I

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/netease/mpay/hy;->f:I

    invoke-direct {p0}, Lcom/netease/mpay/hy;->c()V

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/netease/mpay/hy;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/hy;->l:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/hy;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/hy;->d()Z

    invoke-direct {p0}, Lcom/netease/mpay/hy;->c()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/widget/bd;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/mpay/hy;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/hy;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/mpay/hy;->f:I

    invoke-direct {p0}, Lcom/netease/mpay/hy;->f()J

    move-result-wide v5

    iget-object v0, p0, Lcom/netease/mpay/hy;->g:Lcom/netease/mpay/hy$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/hy;->g:Lcom/netease/mpay/hy$a;

    invoke-interface {v0, v5, v6}, Lcom/netease/mpay/hy$a;->a(J)V

    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/hy;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/hy;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/hy;->l:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/hy;->n:Landroid/os/Handler;

    new-instance v0, Lcom/netease/mpay/ie;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/ie;-><init>(Lcom/netease/mpay/hy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/netease/mpay/hy;->f:I

    iput-object p1, p0, Lcom/netease/mpay/hy;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mpay/hy;->c()V

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/netease/mpay/hy;->m:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/netease/mpay/hy;->f:I

    :cond_4
    invoke-direct {p0, p1}, Lcom/netease/mpay/hy;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/netease/mpay/hy;->d()Z

    iput-object p1, p0, Lcom/netease/mpay/hy;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mpay/hy;->c()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/netease/mpay/hy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/hy;->e()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/hy;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/hy;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()Z
    .locals 12

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v9, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/hy;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/t;->a()Lcom/netease/mpay/e/b/y;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/hy;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/t;->b()V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b/y;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/e/b/y;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/netease/mpay/e/b/y;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/netease/mpay/e/b/y;->c:Ljava/lang/String;

    iget-wide v5, v1, Lcom/netease/mpay/e/b/y;->d:J

    invoke-direct {p0}, Lcom/netease/mpay/hy;->f()J

    move-result-wide v7

    iget-object v0, p0, Lcom/netease/mpay/hy;->g:Lcom/netease/mpay/hy$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/hy;->g:Lcom/netease/mpay/hy$a;

    iget-wide v10, v1, Lcom/netease/mpay/e/b/y;->d:J

    invoke-interface {v0, v10, v11, v7, v8}, Lcom/netease/mpay/hy$a;->a(JJ)V

    :cond_2
    iget-object v10, p0, Lcom/netease/mpay/hy;->n:Landroid/os/Handler;

    new-instance v0, Lcom/netease/mpay/if;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/if;-><init>(Lcom/netease/mpay/hy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/netease/mpay/hy;->f:I

    iget-object v0, p0, Lcom/netease/mpay/hy;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/mpay/hy;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/mpay/hy;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/mpay/hy;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v0, v9

    goto :goto_0
.end method

.method static synthetic e(Lcom/netease/mpay/hy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private e()Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/mpay/hy;->f:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/hy;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/t;->a()Lcom/netease/mpay/e/b/y;

    move-result-object v3

    invoke-direct {p0}, Lcom/netease/mpay/hy;->f()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/netease/mpay/e/b/y;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hy;->e:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v0

    iget-object v1, v3, Lcom/netease/mpay/e/b/y;->a:Ljava/lang/String;

    iget-object v2, v3, Lcom/netease/mpay/e/b/y;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/netease/mpay/e/b/y;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/e/c/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method private f()J
    .locals 2

    invoke-static {}, Lcom/netease/mpay/widget/aw$b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/hy;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/hy;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/hy;->f:I

    return v0
.end method

.method static synthetic i(Lcom/netease/mpay/hy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/hy;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->s:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/hy;)Lcom/netease/mpay/hy;
    .locals 0

    sput-object p0, Lcom/netease/mpay/hy;->c:Lcom/netease/mpay/hy;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/hy;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->e:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic m(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hy;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic n(Lcom/netease/mpay/hy;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/hy;->a:I

    return v0
.end method
