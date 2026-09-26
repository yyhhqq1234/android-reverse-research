.class public Lcom/netease/mpay/cw;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/widget/s;

.field private g:Lcom/netease/mpay/f/aq;

.field private h:Lcom/netease/mpay/f/au$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/cw;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/cw;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/cw;->d:Z

    iget-object v0, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/cw;->e:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/cw;->f:Lcom/netease/mpay/widget/s;

    iput-object p5, p0, Lcom/netease/mpay/cw;->h:Lcom/netease/mpay/f/au$a;

    new-instance v0, Lcom/netease/mpay/f/aq;

    iget-object v1, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/cw;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/cw;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p5}, Lcom/netease/mpay/f/aq;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/au$a;)V

    iput-object v0, p0, Lcom/netease/mpay/cw;->g:Lcom/netease/mpay/f/aq;

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

.method static synthetic a(Lcom/netease/mpay/cw;)Lcom/netease/mpay/f/aq;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/cw;->g:Lcom/netease/mpay/f/aq;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/cw;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/u;->a(I)Lcom/netease/mpay/server/response/s;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mpay/server/response/s;->b:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/cw;->h:Lcom/netease/mpay/f/au$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cw;->h:Lcom/netease/mpay/f/au$a;

    sget-object v1, Lcom/netease/mpay/f/a/b$a;->i:Lcom/netease/mpay/f/a/b$a;

    iget-object v2, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->ah:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/f/au$a;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, p0, Lcom/netease/mpay/cw;->d:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/cw;->g:Lcom/netease/mpay/f/aq;

    invoke-virtual {v0}, Lcom/netease/mpay/f/aq;->h()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netease/mpay/e/b;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->az:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/cw;->f:Lcom/netease/mpay/widget/s;

    iget-object v3, p0, Lcom/netease/mpay/cw;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/cw;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/netease/mpay/cx;

    invoke-direct {v3, p0}, Lcom/netease/mpay/cx;-><init>(Lcom/netease/mpay/cw;)V

    iget-object v4, p0, Lcom/netease/mpay/cw;->e:Landroid/content/res/Resources;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->J:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/cy;

    invoke-direct {v5, p0}, Lcom/netease/mpay/cy;-><init>(Lcom/netease/mpay/cw;)V

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->aA:I

    move v1, v0

    goto :goto_1
.end method
