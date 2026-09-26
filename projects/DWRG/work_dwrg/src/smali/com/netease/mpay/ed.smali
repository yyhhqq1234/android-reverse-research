.class public Lcom/netease/mpay/ed;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ed$a;,
        Lcom/netease/mpay/ed$c;,
        Lcom/netease/mpay/ed$b;,
        Lcom/netease/mpay/ed$d;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/s;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/e/b;

.field private g:Lcom/netease/mpay/e/b/af;

.field private h:Lcom/netease/mpay/ii;

.field private i:Lcom/netease/mpay/widget/s;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Lcom/netease/mpay/widget/GridViewNoScroll;

.field private m:Landroid/widget/Button;

.field private n:Lcom/netease/mpay/eu;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/ArrayList;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Lcom/netease/mpay/ed$d;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/ed;->q:Z

    iput-boolean v1, p0, Lcom/netease/mpay/ed;->r:Z

    iput-boolean v1, p0, Lcom/netease/mpay/ed;->t:Z

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

.method static synthetic a(Lcom/netease/mpay/ed;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/ed;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ed;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ed;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ed;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v9, Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v9, v0}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    iget v0, v2, Lcom/netease/mpay/e/b/o;->f:I

    if-eq v0, v7, :cond_1

    iget v0, v2, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v7

    :goto_1
    iget-object v1, p0, Lcom/netease/mpay/ed;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/e/b/af;->u:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/netease/mpay/es;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/es;-><init>(Lcom/netease/mpay/ed;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/ef;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ef;-><init>(Lcom/netease/mpay/ed;)V

    move-object v1, v9

    move-object v2, v8

    move-object v3, v10

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bt:I

    invoke-static {v0, v1, v3}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/netease/mpay/ed;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/ed;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/ed;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(I)V
    .locals 11

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iget-boolean v0, v0, Lcom/netease/mpay/ed$d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iput-boolean v9, v0, Lcom/netease/mpay/ed$d;->a:Z

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v3, v3, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v5, v5, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v5, v5, Lcom/netease/mpay/b/p$a;->e:I

    const-string v6, "zf_sjcz"

    const-string v7, "zf_sjcz_mz"

    iget-object v8, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v8, v8, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    const-string v10, "zf_sjcz"

    invoke-static {v8, v10}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iget-boolean v0, v0, Lcom/netease/mpay/ed$d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iput-boolean v9, v0, Lcom/netease/mpay/ed$d;->b:Z

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-object v3, v0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v0, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v5, v0, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v6, v0, Lcom/netease/mpay/b/p$a;->e:I

    const-string v7, "zf_sjcz"

    const-string v8, "zf_sjcz_kh"

    invoke-virtual/range {v1 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iget-boolean v0, v0, Lcom/netease/mpay/ed$d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iput-boolean v9, v0, Lcom/netease/mpay/ed$d;->c:Z

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-object v3, v0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v0, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v5, v0, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v6, v0, Lcom/netease/mpay/b/p$a;->e:I

    const-string v7, "zf_sjcz"

    const-string v8, "zf_sjcz_mm"

    invoke-virtual/range {v1 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iget-boolean v0, v0, Lcom/netease/mpay/ed$d;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    iput-boolean v9, v0, Lcom/netease/mpay/ed$d;->d:Z

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v3, v3, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v5, v5, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v5, v5, Lcom/netease/mpay/b/p$a;->e:I

    const-string v6, "zf_sjcz"

    const-string v7, "zf_sjcz_zf"

    iget-object v8, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v8, v8, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    const-string v10, "zf_sjcz"

    invoke-static {v8, v10}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v3, v3, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v5, v5, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v5, v5, Lcom/netease/mpay/b/p$a;->e:I

    const-string v6, "zf_sjcz"

    const-string v7, "zf_sjcz_zf"

    iget-object v8, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v8, v8, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    const-string v9, "zf_sjcz"

    invoke-static {v8, v9}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/ed;->l:Lcom/netease/mpay/widget/GridViewNoScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->l:Lcom/netease/mpay/widget/GridViewNoScroll;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/widget/GridViewNoScroll;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/netease/mpay/ed;->q:Z

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cs:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cq:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cx:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/ed;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/ed;->r:Z

    iget-object v0, p0, Lcom/netease/mpay/ed;->m:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/ed;->t()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/ed;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/ed;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/netease/mpay/ed;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/ed;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/ed;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/netease/mpay/ed;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/ed;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ed;->u()V

    return-void
.end method

.method static synthetic g(Lcom/netease/mpay/ed;)Lcom/netease/mpay/widget/GridViewNoScroll;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->l:Lcom/netease/mpay/widget/GridViewNoScroll;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/ed;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/ed;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/netease/mpay/ed;)Lcom/netease/mpay/eu;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->n:Lcom/netease/mpay/eu;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/ed;)Lcom/netease/mpay/ii;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->h:Lcom/netease/mpay/ii;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method static synthetic l(Lcom/netease/mpay/ed;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->f:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic m(Lcom/netease/mpay/ed;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ed;->v()V

    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/ed;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/ed;->t:Z

    return v0
.end method

.method static synthetic o(Lcom/netease/mpay/ed;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->i:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method private s()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/mpay/ed;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cj:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ck:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cU:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/GridViewNoScroll;

    iput-object v0, p0, Lcom/netease/mpay/ed;->l:Lcom/netease/mpay/widget/GridViewNoScroll;

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cn:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/ed;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/ed;->m:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/ed;->t()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    invoke-direct {p0}, Lcom/netease/mpay/ed;->x()V

    invoke-direct {p0}, Lcom/netease/mpay/ed;->w()V

    iget-object v0, p0, Lcom/netease/mpay/ed;->l:Lcom/netease/mpay/widget/GridViewNoScroll;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ed;->l:Lcom/netease/mpay/widget/GridViewNoScroll;

    new-instance v1, Lcom/netease/mpay/ed$a;

    iget-object v2, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ed;->p:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/mpay/ed$a;-><init>(Lcom/netease/mpay/ed;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/GridViewNoScroll;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cp:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/ed$c;

    invoke-direct {v1, p0, v4}, Lcom/netease/mpay/ed$c;-><init>(Lcom/netease/mpay/ed;Lcom/netease/mpay/ee;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/netease/mpay/ed$b;

    invoke-direct {v1, p0, v4}, Lcom/netease/mpay/ed$b;-><init>(Lcom/netease/mpay/ed;Lcom/netease/mpay/ee;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/netease/mpay/ed;->m:Landroid/widget/Button;

    iget-object v3, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v0, v0, Lcom/netease/mpay/b/p$a;->e:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v0, v0, Lcom/netease/mpay/b/p$a;->e:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_3

    :cond_2
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->cs:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/eh;

    invoke-direct {v2, p0}, Lcom/netease/mpay/eh;-><init>(Lcom/netease/mpay/ed;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/ej;

    invoke-direct {v2, p0}, Lcom/netease/mpay/ej;-><init>(Lcom/netease/mpay/ed;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/el;

    invoke-direct {v2, p0}, Lcom/netease/mpay/el;-><init>(Lcom/netease/mpay/ed;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/en;

    invoke-direct {v2, p0}, Lcom/netease/mpay/en;-><init>(Lcom/netease/mpay/ed;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v1}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->co:I

    goto :goto_1
.end method

.method private t()Z
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    iget-boolean v2, p0, Lcom/netease/mpay/ed;->r:Z

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private u()V
    .locals 5

    const/4 v4, 0x4

    iget v0, p0, Lcom/netease/mpay/ed;->s:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netease/mpay/ed;->r:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v4}, Lcom/netease/mpay/ed;->b(I)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->i:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v4}, Lcom/netease/mpay/ed;->b(I)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->i:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v4}, Lcom/netease/mpay/ed;->b(I)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->i:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->H:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mpay/ed;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private v()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/mpay/b/ar$a;

    iget-object v1, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v1, v1, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v1, v1, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    const-string v2, "zf_sjcz"

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zf_sjcz_zf"

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v3, v1}, Lcom/netease/mpay/b/ar$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private w()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ed;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->f()Lcom/netease/mpay/e/c/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v1, v1, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v1, v1, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v2, v2, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v2, v2, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/e/b/s;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/e/b/s;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/s;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/s;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/s;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/ed;->o:Ljava/lang/String;

    iget-object v2, v0, Lcom/netease/mpay/e/b/s;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/netease/mpay/e/b/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/netease/mpay/e/b/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/netease/mpay/e/b/s;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/ed;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->m:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/ed;->b(I)V

    :cond_2
    invoke-direct {p0, v3}, Lcom/netease/mpay/ed;->b(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/netease/mpay/ed;->b(I)V

    goto :goto_0
.end method

.method private x()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ad:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ae:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v1, v1, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v1, v1, Lcom/netease/mpay/b/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cQ:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v1, v1, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v1, v1, Lcom/netease/mpay/b/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cw:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$h;->cw:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/netease/mpay/ed;->o:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->co:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bw:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cT:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    new-instance v1, Lcom/netease/mpay/ep;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/ep;-><init>(Lcom/netease/mpay/ed;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->n()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private z()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/ed;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/ed;->j:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->by:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->l:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/eq;

    invoke-direct {v3, p0}, Lcom/netease/mpay/eq;-><init>(Lcom/netease/mpay/ed;)V

    iget-object v4, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/er;

    invoke-direct {v5, p0}, Lcom/netease/mpay/er;-><init>(Lcom/netease/mpay/ed;)V

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->n:Lcom/netease/mpay/eu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/ed;->n:Lcom/netease/mpay/eu;

    invoke-virtual {v0}, Lcom/netease/mpay/eu;->b()V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/ed;->u:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/ed;->u:Z

    invoke-direct {p0}, Lcom/netease/mpay/ed;->s()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mpay/ed;->h:Lcom/netease/mpay/ii;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/ed;->i:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/ed;->u:Z

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v0, v0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/ed;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v0, v0, Lcom/netease/mpay/b/p$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v0, v0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ed;->h:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/ed;->h:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/ed;->f:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/ed;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-object v0, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ed;->g:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v3, v3, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v5, v5, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget v5, v5, Lcom/netease/mpay/b/p$a;->e:I

    const-string v6, "zf_sjcz"

    iget-object v7, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v7, v7, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v7, v7, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    const-string v8, "zf_sjcz"

    invoke-static {v7, v8}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object v9, p0, Lcom/netease/mpay/ed;->p:Ljava/util/ArrayList;

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/netease/mpay/ed;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->b:Lcom/netease/mpay/b/o$a;

    iget-object v0, v0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->m:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/ed;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/netease/mpay/ed;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v9, p0, Lcom/netease/mpay/ed;->p:Ljava/util/ArrayList;

    :cond_4
    new-instance v0, Lcom/netease/mpay/ed$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ed$d;-><init>(Lcom/netease/mpay/ed;)V

    iput-object v0, p0, Lcom/netease/mpay/ed;->v:Lcom/netease/mpay/ed$d;

    new-instance v0, Lcom/netease/mpay/eu;

    iget-object v1, p0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ed;->e:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bx:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ed;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/ed;->p:Ljava/util/ArrayList;

    new-instance v5, Lcom/netease/mpay/ee;

    invoke-direct {v5, p0}, Lcom/netease/mpay/ee;-><init>(Lcom/netease/mpay/ed;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/eu;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/mpay/eu$b;)V

    iput-object v0, p0, Lcom/netease/mpay/ed;->n:Lcom/netease/mpay/eu;

    invoke-direct {p0}, Lcom/netease/mpay/ed;->y()V

    invoke-direct {p0}, Lcom/netease/mpay/ed;->s()V

    goto/16 :goto_0
.end method

.method public l()Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/ed;->z()V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    invoke-direct {p0}, Lcom/netease/mpay/ed;->z()V

    const/4 v0, 0x1

    return v0
.end method
