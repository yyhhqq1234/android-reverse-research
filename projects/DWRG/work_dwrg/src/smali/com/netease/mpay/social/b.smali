.class public Lcom/netease/mpay/social/b;
.super Ljava/lang/Object;


# static fields
.field private static k:Z


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/mpay/e/b/af;

.field private e:Lcom/netease/mpay/social/a;

.field private f:Lcom/netease/mpay/social/k;

.field private g:Lcom/netease/mpay/social/a$a;

.field private h:Lcom/netease/mpay/social/GetFriendsCallback;

.field private i:I

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/mpay/social/b;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/social/GetFriendsCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/social/b;->i:I

    iput-object p1, p0, Lcom/netease/mpay/social/b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/social/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/social/b;->c:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/social/k;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/netease/mpay/social/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/social/b;->f:Lcom/netease/mpay/social/k;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/social/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/social/b;->d:Lcom/netease/mpay/e/b/af;

    new-instance v0, Lcom/netease/mpay/social/a;

    iget-object v1, p0, Lcom/netease/mpay/social/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p3, p4}, Lcom/netease/mpay/social/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/social/b;->e:Lcom/netease/mpay/social/a;

    iput-object p5, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

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

.method static synthetic a(Lcom/netease/mpay/social/b;Lcom/netease/mpay/social/a$a;)Lcom/netease/mpay/social/a$a;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/mpay/social/b;->k:Z

    iget-object v0, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/social/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/social/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/social/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/social/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/social/b;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/social/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/mpay/social/b;->k:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/GetFriendsCallback;->onSuccessed([Lcom/netease/mpay/social/Friend;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/mpay/social/Friend;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/social/Friend;

    invoke-interface {v1, v0}, Lcom/netease/mpay/social/GetFriendsCallback;->onSuccessed([Lcom/netease/mpay/social/Friend;)V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/f/ac;

    iget-object v1, p0, Lcom/netease/mpay/social/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/social/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/social/b;->c:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/social/d;

    invoke-direct {v6, p0}, Lcom/netease/mpay/social/d;-><init>(Lcom/netease/mpay/social/b;)V

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/ac;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ac;->h()V

    iget v0, p0, Lcom/netease/mpay/social/b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/mpay/social/b;->i:I

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/netease/mpay/social/b;->k:Z

    return p0
.end method

.method static synthetic b(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    return-object v0
.end method

.method private b()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    iget-object v0, v0, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, v10}, Lcom/netease/mpay/social/b;->a(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    iget-object v1, v0, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, p0, Lcom/netease/mpay/social/b;->j:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/social/b;->i:I

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/social/m;

    iget-wide v6, p0, Lcom/netease/mpay/social/b;->j:J

    iget-object v8, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    iget-wide v8, v8, Lcom/netease/mpay/social/a$a;->c:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    iget-boolean v6, v0, Lcom/netease/mpay/social/m;->f:Z

    if-nez v6, :cond_7

    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v6, p0, Lcom/netease/mpay/social/b;->d:Lcom/netease/mpay/e/b/af;

    iget v6, v6, Lcom/netease/mpay/e/b/af;->C:I

    if-ne v0, v6, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v10}, Lcom/netease/mpay/social/b;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v6, p0, Lcom/netease/mpay/social/b;->d:Lcom/netease/mpay/e/b/af;

    iget v6, v6, Lcom/netease/mpay/e/b/af;->C:I

    if-ne v0, v6, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v11}, Lcom/netease/mpay/social/b;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_7
    iget-wide v6, p0, Lcom/netease/mpay/social/b;->j:J

    iget-object v8, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    iget-wide v8, v8, Lcom/netease/mpay/social/a$a;->b:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    iget-boolean v6, v0, Lcom/netease/mpay/social/m;->f:Z

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/netease/mpay/social/m;->a()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v10}, Lcom/netease/mpay/social/b;->a(Ljava/util/ArrayList;I)V

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v11}, Lcom/netease/mpay/social/b;->a(Ljava/util/ArrayList;I)V

    :cond_a
    iget v0, p0, Lcom/netease/mpay/social/b;->i:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/social/b;->g:Lcom/netease/mpay/social/a$a;

    iget-object v3, v3, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/social/m;

    invoke-virtual {v0}, Lcom/netease/mpay/social/m;->a()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v0}, Lcom/netease/mpay/social/Friend;->a(Lcom/netease/mpay/social/m;)Lcom/netease/mpay/social/Friend;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-direct {p0, v1}, Lcom/netease/mpay/social/b;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/social/b;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/social/b;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/mpay/social/b;->i:I

    return v0
.end method

.method static synthetic d(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/GetFriendsCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/social/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/netease/mpay/social/b;->j:J

    return-wide v0
.end method

.method static synthetic f(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/b;->d:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/social/b;)Lcom/netease/mpay/social/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/b;->e:Lcom/netease/mpay/social/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/netease/mpay/social/b;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/social/b;->h:Lcom/netease/mpay/social/GetFriendsCallback;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/mpay/social/b;->k:Z

    new-instance v0, Lcom/netease/mpay/social/c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/social/c;-><init>(Lcom/netease/mpay/social/b;)V

    iget-object v1, p0, Lcom/netease/mpay/social/b;->f:Lcom/netease/mpay/social/k;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/social/k;->a(Lcom/netease/mpay/social/k$a;)V

    goto :goto_0
.end method
