.class public Lcom/netease/mpay/kd;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/kd$a;,
        Lcom/netease/mpay/kd$c;,
        Lcom/netease/mpay/kd$b;,
        Lcom/netease/mpay/kd$d;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/s;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/widget/s;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/netease/mpay/widget/GridViewNoScroll;

.field private n:Lcom/netease/mpay/eu;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Lcom/netease/mpay/e/b/af;

.field private w:Lcom/netease/mpay/e/b/o;

.field private x:Lcom/netease/mpay/kd$d;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/kd;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/kd;->s:Z

    new-instance v0, Lcom/netease/mpay/kd$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/kd$d;-><init>(Lcom/netease/mpay/kd;)V

    iput-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

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

.method static synthetic a(Lcom/netease/mpay/kd;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/kd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/kd;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/kd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/kd;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/kd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/kd;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/kd;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/kd;->m:Lcom/netease/mpay/widget/GridViewNoScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kd;->m:Lcom/netease/mpay/widget/GridViewNoScroll;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/widget/GridViewNoScroll;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/netease/mpay/kd;->r:Z

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cs:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cq:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/kd;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/kd;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cx:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/kd;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/kd;->s:Z

    iget-object v0, p0, Lcom/netease/mpay/kd;->i:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/kd;->t()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/kd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/kd;->b(I)V

    return-void
.end method

.method private c(I)V
    .locals 11

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iget-boolean v0, v0, Lcom/netease/mpay/kd$d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iput-boolean v9, v0, Lcom/netease/mpay/kd$d;->a:Z

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_sjcz"

    const-string v7, "cz_sjcz_mz"

    iget-object v8, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v10, "cz_sjcz"

    invoke-static {v8, v10}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iget-boolean v0, v0, Lcom/netease/mpay/kd$d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iput-boolean v9, v0, Lcom/netease/mpay/kd$d;->b:Z

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-object v3, v0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget v6, v0, Lcom/netease/mpay/e/b/o;->f:I

    const-string v7, "cz_sjcz"

    const-string v8, "cz_sjcz_kh"

    invoke-virtual/range {v1 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iget-boolean v0, v0, Lcom/netease/mpay/kd$d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iput-boolean v9, v0, Lcom/netease/mpay/kd$d;->c:Z

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-object v3, v0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget v6, v0, Lcom/netease/mpay/e/b/o;->f:I

    const-string v7, "cz_sjcz"

    const-string v8, "cz_sjcz_mm"

    invoke-virtual/range {v1 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iget-boolean v0, v0, Lcom/netease/mpay/kd$d;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kd;->x:Lcom/netease/mpay/kd$d;

    iput-boolean v9, v0, Lcom/netease/mpay/kd$d;->d:Z

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_sjcz"

    const-string v7, "cz_sjcz_cz"

    iget-object v8, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v10, "cz_sjcz"

    invoke-static {v8, v10}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_sjcz"

    const-string v7, "cz_sjcz_cz"

    iget-object v8, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v9, "cz_sjcz"

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

.method static synthetic c(Lcom/netease/mpay/kd;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/kd;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/netease/mpay/kd;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/kd;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/kd;->v()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/kd;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/kd;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->f:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/kd;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/kd;->u()V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/kd;)Lcom/netease/mpay/widget/GridViewNoScroll;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->m:Lcom/netease/mpay/widget/GridViewNoScroll;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/kd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/kd;->r:Z

    return v0
.end method

.method static synthetic k(Lcom/netease/mpay/kd;)Lcom/netease/mpay/eu;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->n:Lcom/netease/mpay/eu;

    return-object v0
.end method

.method private s()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ab:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/kd;->f:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cp:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/kd;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cj:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ck:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cn:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/kd;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cU:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/GridViewNoScroll;

    iput-object v0, p0, Lcom/netease/mpay/kd;->m:Lcom/netease/mpay/widget/GridViewNoScroll;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/kd;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/kd;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cP:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/kd;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/kd;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->p:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%s%s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "0"

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$h;->cv:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/kd;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/server/response/OrderInit;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->m:Lcom/netease/mpay/widget/GridViewNoScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kd;->m:Lcom/netease/mpay/widget/GridViewNoScroll;

    new-instance v1, Lcom/netease/mpay/kd$a;

    iget-object v2, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netease/mpay/kd$a;-><init>(Lcom/netease/mpay/kd;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/GridViewNoScroll;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    new-instance v0, Lcom/netease/mpay/kd$c;

    invoke-direct {v0, p0, v7}, Lcom/netease/mpay/kd$c;-><init>(Lcom/netease/mpay/kd;Lcom/netease/mpay/ke;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->i:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/kd;->t()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    new-instance v0, Lcom/netease/mpay/kd$b;

    invoke-direct {v0, p0, v7}, Lcom/netease/mpay/kd$b;-><init>(Lcom/netease/mpay/kd;Lcom/netease/mpay/ke;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/kf;

    invoke-direct {v2, p0}, Lcom/netease/mpay/kf;-><init>(Lcom/netease/mpay/kd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/kh;

    invoke-direct {v2, p0}, Lcom/netease/mpay/kh;-><init>(Lcom/netease/mpay/kd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/kj;

    invoke-direct {v2, p0}, Lcom/netease/mpay/kj;-><init>(Lcom/netease/mpay/kd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/kl;

    invoke-direct {v2, p0}, Lcom/netease/mpay/kl;-><init>(Lcom/netease/mpay/kd;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private t()Z
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    iget-boolean v2, p0, Lcom/netease/mpay/kd;->s:Z

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
    iget-object v0, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

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
    .locals 13

    const/4 v1, 0x4

    iget v0, p0, Lcom/netease/mpay/kd;->t:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iget-boolean v0, p0, Lcom/netease/mpay/kd;->s:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/netease/mpay/kd;->c(I)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->f:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/netease/mpay/kd;->c(I)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->f:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/netease/mpay/kd;->c(I)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->f:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->H:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/h;

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v6}, Lcom/netease/mpay/b/s;->s()I

    move-result v6

    iget-object v7, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v7}, Lcom/netease/mpay/b/s;->k()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v12, Lcom/netease/mpay/kn;

    invoke-direct {v12, p0}, Lcom/netease/mpay/kn;-><init>(Lcom/netease/mpay/kd;)V

    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/f/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/h$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/h;->h()V

    goto :goto_0
.end method

.method private v()V
    .locals 5

    new-instance v0, Lcom/netease/mpay/b/ar$a;

    iget-object v1, p0, Lcom/netease/mpay/kd;->g:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v3, v3, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v3, v3, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v4, "cz_sjcz"

    invoke-static {v3, v4}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cz_sjcz_cz"

    invoke-static {v3, v4}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/b/ar$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v0, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->n:Lcom/netease/mpay/eu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/kd;->n:Lcom/netease/mpay/eu;

    invoke-virtual {v0}, Lcom/netease/mpay/eu;->b()V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/kd;->u:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/kd;->u:Z

    invoke-direct {p0}, Lcom/netease/mpay/kd;->s()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/kd;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/kd;->u:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kd;->v:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/kd;->w:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_sjcz"

    iget-object v7, p0, Lcom/netease/mpay/kd;->d:Lcom/netease/mpay/b/s;

    iget-object v7, v7, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v7, v7, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v8, "cz_sjcz"

    invoke-static {v7, v8}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/netease/mpay/eu;

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kd;->e:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->ct:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ke;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ke;-><init>(Lcom/netease/mpay/kd;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/eu;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/eu$b;)V

    iput-object v0, p0, Lcom/netease/mpay/kd;->n:Lcom/netease/mpay/eu;

    invoke-direct {p0}, Lcom/netease/mpay/kd;->w()V

    invoke-direct {p0}, Lcom/netease/mpay/kd;->s()V

    goto/16 :goto_0
.end method

.method public l()Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/kd;->j:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/kd;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method
