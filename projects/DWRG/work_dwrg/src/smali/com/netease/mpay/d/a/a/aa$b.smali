.class Lcom/netease/mpay/d/a/a/aa$b;
.super Lcom/netease/mpay/d/a/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/aa;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/netease/mpay/view/LoginTabView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Lcom/netease/mpay/widget/bf$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/aa;Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 5

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/aa$b;->a:Lcom/netease/mpay/d/a/a/aa;

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/k$a;-><init>()V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->ay:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->b:Ljava/lang/String;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->C:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->c:Ljava/lang/String;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->db:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/LoginTabView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->d:Lcom/netease/mpay/view/LoginTabView;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->d:Lcom/netease/mpay/view/LoginTabView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->br:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setLabel(Ljava/lang/String;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bW:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->e:Landroid/widget/LinearLayout;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->au:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->f:Landroid/widget/EditText;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aX:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->g:Landroid/widget/TextView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->av:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->h:Landroid/widget/TextView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bX:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/d/a/a/ai;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/d/a/a/ai;-><init>(Lcom/netease/mpay/d/a/a/aa$b;Lcom/netease/mpay/d/a/a/aa;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/netease/mpay/widget/bf$a;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa$b;->h:Landroid/widget/TextView;

    const/16 v2, 0x3c

    const/4 v3, 0x1

    new-instance v4, Lcom/netease/mpay/d/a/a/aj;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/d/a/a/aj;-><init>(Lcom/netease/mpay/d/a/a/aa$b;Lcom/netease/mpay/d/a/a/aa;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/widget/bf$a;-><init>(Landroid/widget/TextView;IILcom/netease/mpay/widget/bf$a$a;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->j:Lcom/netease/mpay/widget/bf$a;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->d:Lcom/netease/mpay/view/LoginTabView;

    new-instance v1, Lcom/netease/mpay/d/a/a/ak;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/d/a/a/ak;-><init>(Lcom/netease/mpay/d/a/a/aa$b;Lcom/netease/mpay/d/a/a/aa;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/d/a/a/al;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/d/a/a/al;-><init>(Lcom/netease/mpay/d/a/a/aa$b;Lcom/netease/mpay/d/a/a/aa;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa$b;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa$b;->f:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {p1}, Lcom/netease/mpay/d/a/a/aa;->a(Lcom/netease/mpay/d/a/a/aa;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/d/a/a/aa$b;->b(Z)V

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/aa$b;->b()V

    :cond_0
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

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a/aa$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/aa$b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a/aa$b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/a/aa$b;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/a/aa$b;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->a:Lcom/netease/mpay/d/a/a/aa;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/d/a/a/aa;->a(Lcom/netease/mpay/d/a/a/aa;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->j:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->a()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->a:Lcom/netease/mpay/d/a/a/aa;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a/aa;->a()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->j:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->b()V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa$b;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/mpay/d/a/a/am;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/am;-><init>(Lcom/netease/mpay/d/a/a/aa$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/a/aa$b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/d/a/a/aa$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/aa$b;->b()V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->d:Lcom/netease/mpay/view/LoginTabView;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/view/LoginTabView;->setSelected(Z)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa$b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/d/a/a/aa$b;->a(Landroid/view/View;Z)V

    return-void
.end method
