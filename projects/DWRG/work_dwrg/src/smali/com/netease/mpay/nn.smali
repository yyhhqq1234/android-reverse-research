.class public Lcom/netease/mpay/nn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/nn$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/e/b;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/mpay/e/b/aj;

.field private g:Lcom/netease/mpay/e/b/al;

.field private h:Lcom/netease/mpay/nn$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/aj;Lcom/netease/mpay/e/b/al;ILcom/netease/mpay/nn$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/nn;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mpay/nn;->b:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/e/b;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/nn;->c:Lcom/netease/mpay/e/b;

    iput p6, p0, Lcom/netease/mpay/nn;->d:I

    iput-object p3, p0, Lcom/netease/mpay/nn;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/nn;->f:Lcom/netease/mpay/e/b/aj;

    iput-object p5, p0, Lcom/netease/mpay/nn;->g:Lcom/netease/mpay/e/b/al;

    iput-object p7, p0, Lcom/netease/mpay/nn;->h:Lcom/netease/mpay/nn$a;

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

.method private a(Ljava/lang/String;Z)I
    .locals 1

    const-string v0, "forum"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ag:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ah:I

    goto :goto_0

    :cond_1
    const-string v0, "deposit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->an:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ao:I

    goto :goto_0

    :cond_3
    const-string v0, "guest_bind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ab:I

    goto :goto_0

    :cond_4
    const-string v0, "mobile_manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ak:I

    goto :goto_0

    :cond_5
    const-string v0, "mail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->al:I

    goto :goto_0

    :cond_6
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->am:I

    goto :goto_0

    :cond_7
    const-string v0, "feedback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ae:I

    goto :goto_0

    :cond_8
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->af:I

    goto :goto_0

    :cond_9
    const-string v0, "gamecenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_a

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ai:I

    goto :goto_0

    :cond_a
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->aj:I

    goto :goto_0

    :cond_b
    const-string v0, "forget_passwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->C:I

    goto :goto_0

    :cond_c
    const-string v0, "logout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ad:I

    goto :goto_0

    :cond_d
    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->ac:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/nn;)Lcom/netease/mpay/e/b/al;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nn;->g:Lcom/netease/mpay/e/b/al;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/nn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nn;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/nn;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nn;->c:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/nn;)Lcom/netease/mpay/nn$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nn;->h:Lcom/netease/mpay/nn$a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/view/b;
    .locals 15

    const/4 v10, 0x1

    const/4 v11, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/nn;->f:Lcom/netease/mpay/e/b/aj;

    iget-object v0, v0, Lcom/netease/mpay/e/b/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/netease/mpay/e/b/aj$a;

    iget-object v0, p0, Lcom/netease/mpay/nn;->g:Lcom/netease/mpay/e/b/al;

    iget-object v1, v9, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/b/al;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/al$a;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/e/b/aj$b;->b:Lcom/netease/mpay/e/b/aj$b;

    iget-object v2, v9, Lcom/netease/mpay/e/b/aj$a;->c:Lcom/netease/mpay/e/b/aj$b;

    if-eq v1, v2, :cond_0

    move v2, v10

    :goto_1
    const-string v1, "mail"

    iget-object v3, v9, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/nn;->c:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nn;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/r;->b()Z

    move-result v0

    :goto_2
    move v6, v0

    :goto_3
    const-string v0, "guest_bind"

    iget-object v1, v9, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/nn;->a:Landroid/content/Context;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->e:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v14, Lcom/netease/mpay/view/b$c;

    new-instance v0, Lcom/netease/mpay/view/b$b;

    iget-object v3, v9, Lcom/netease/mpay/e/b/aj$a;->f:Ljava/lang/String;

    iget-object v4, v9, Lcom/netease/mpay/e/b/aj$a;->g:Ljava/lang/String;

    iget-object v5, v9, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/netease/mpay/nn;->a(Ljava/lang/String;Z)I

    move-result v5

    const/4 v7, 0x0

    iget-object v8, v9, Lcom/netease/mpay/e/b/aj$a;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/view/b$b;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v14, v0, v9}, Lcom/netease/mpay/view/b$c;-><init>(Lcom/netease/mpay/view/b$b;Ljava/lang/Object;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v2, v11

    goto :goto_1

    :cond_1
    move v0, v11

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/netease/mpay/e/b/al$a;->b:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/al$a;->a:Z

    if-eqz v0, :cond_3

    move v0, v10

    :goto_5
    move v6, v0

    goto :goto_3

    :cond_3
    move v0, v11

    goto :goto_5

    :cond_4
    iget-object v1, v9, Lcom/netease/mpay/e/b/aj$a;->b:Ljava/lang/String;

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/netease/mpay/view/b;

    iget-object v1, p0, Lcom/netease/mpay/nn;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/nn;->b:Ljava/lang/String;

    iget v3, p0, Lcom/netease/mpay/nn;->d:I

    new-instance v5, Lcom/netease/mpay/no;

    invoke-direct {v5, p0}, Lcom/netease/mpay/no;-><init>(Lcom/netease/mpay/nn;)V

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/view/b;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;Lcom/netease/mpay/view/b$a;)V

    return-object v0
.end method
