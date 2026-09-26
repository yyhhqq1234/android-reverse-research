.class public Lcom/netease/mpay/kv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/kv$a;,
        Lcom/netease/mpay/kv$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;

.field private c:Lcom/netease/mpay/b/s;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/netease/mpay/kv$b;

.field private n:Lcom/netease/mpay/f/aa;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/b/s;Lcom/netease/mpay/kv$b;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mpay/kv;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/kv;->o:Z

    iput-object p1, p0, Lcom/netease/mpay/kv;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "QrcodePayCallback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/kw;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/kw;-><init>(Lcom/netease/mpay/kv;Lcom/netease/mpay/kv$b;)V

    iput-object v0, p0, Lcom/netease/mpay/kv;->m:Lcom/netease/mpay/kv$b;

    new-instance v0, Lcom/netease/mpay/f/aa;

    iget-object v1, p0, Lcom/netease/mpay/kv;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/netease/mpay/b/s;->q()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/kx;

    invoke-direct {v6, p0}, Lcom/netease/mpay/kx;-><init>(Lcom/netease/mpay/kv;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/aa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object v0, p0, Lcom/netease/mpay/kv;->n:Lcom/netease/mpay/f/aa;

    invoke-direct {p0}, Lcom/netease/mpay/kv;->b()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/kv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/kv;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iput p1, p0, Lcom/netease/mpay/kv;->l:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/kv;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->j:Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cA:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/kv;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->g:Landroid/widget/ImageView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->aH:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->h:Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cz:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->i:Landroid/widget/Button;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cF:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->i:Landroid/widget/Button;

    new-instance v1, Lcom/netease/mpay/lb;

    invoke-direct {v1, p0}, Lcom/netease/mpay/lb;-><init>(Lcom/netease/mpay/kv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/kv;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/netease/mpay/kv;->d()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/kv;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->j:Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/kv;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->g:Landroid/widget/ImageView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->R:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->h:Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cp:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->i:Landroid/widget/Button;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->i:Landroid/widget/Button;

    new-instance v1, Lcom/netease/mpay/lc;

    invoke-direct {v1, p0}, Lcom/netease/mpay/lc;-><init>(Lcom/netease/mpay/kv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/netease/mpay/kv;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->g:Landroid/widget/ImageView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->S:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->h:Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cr:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->i:Landroid/widget/Button;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->i:Landroid/widget/Button;

    new-instance v1, Lcom/netease/mpay/ld;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ld;-><init>(Lcom/netease/mpay/kv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/netease/mpay/kv;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/kv;->d()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/kv;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/kv;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/kv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/kv;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kv;->m:Lcom/netease/mpay/kv$b;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/mpay/kv;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$i;->a:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->Z:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ap:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kv;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$a;->a:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cC:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/ky;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ky;-><init>(Lcom/netease/mpay/kv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cF:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/kv;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cD:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/kv;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cE:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/kv;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cM:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/kv;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cN:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/kv;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cL:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/kv;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cG:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/kv;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cK:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cJ:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "weixinpayqr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->cC:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cI:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00a5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v2, "alipayqr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->cy:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/kv;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method private c()V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/netease/mpay/kv;->a(I)V

    iget-object v0, p0, Lcom/netease/mpay/kv;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/kv$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/kv$a;-><init>(Lcom/netease/mpay/kv;Lcom/netease/mpay/kw;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/kv$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/j;

    iget-object v1, p0, Lcom/netease/mpay/kv;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    invoke-virtual {v5}, Lcom/netease/mpay/b/s;->q()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/netease/mpay/kv;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/netease/mpay/kz;

    invoke-direct {v7, p0}, Lcom/netease/mpay/kz;-><init>(Lcom/netease/mpay/kv;)V

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/j;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/j;->h()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/netease/mpay/kv;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/kv;->l:I

    return v0
.end method

.method private d()V
    .locals 4

    iget-boolean v0, p0, Lcom/netease/mpay/kv;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/la;

    invoke-direct {v1, p0}, Lcom/netease/mpay/la;-><init>(Lcom/netease/mpay/kv;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/netease/mpay/kv;)Lcom/netease/mpay/f/aa;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kv;->n:Lcom/netease/mpay/f/aa;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/kv;->c:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weixinpayqr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "weixinpayqr"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "alipayqr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alipayqr"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/netease/mpay/kv;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/kv;->c()V

    return-void
.end method

.method static synthetic g(Lcom/netease/mpay/kv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kv;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kv;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/netease/mpay/kv;->c()V

    goto :goto_0
.end method
