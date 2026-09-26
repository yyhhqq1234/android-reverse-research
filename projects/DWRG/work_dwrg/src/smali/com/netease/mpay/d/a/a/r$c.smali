.class Lcom/netease/mpay/d/a/a/r$c;
.super Lcom/netease/mpay/d/a/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/r;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Lcom/netease/mpay/widget/bf$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/r;Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/r$c;->a:Lcom/netease/mpay/d/a/a/r;

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/k$a;-><init>()V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->ay:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->b:Ljava/lang/String;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->C:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->c:Ljava/lang/String;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->au:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->d:Landroid/widget/EditText;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aX:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->e:Landroid/widget/TextView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->av:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->f:Landroid/widget/TextView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/d/a/a/u;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/d/a/a/u;-><init>(Lcom/netease/mpay/d/a/a/r$c;Lcom/netease/mpay/d/a/a/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/netease/mpay/widget/bf$a;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/r$c;->f:Landroid/widget/TextView;

    const/16 v2, 0x3c

    new-instance v3, Lcom/netease/mpay/d/a/a/v;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/d/a/a/v;-><init>(Lcom/netease/mpay/d/a/a/r$c;Lcom/netease/mpay/d/a/a/r;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/netease/mpay/widget/bf$a;-><init>(Landroid/widget/TextView;IILcom/netease/mpay/widget/bf$a$a;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->h:Lcom/netease/mpay/widget/bf$a;

    new-instance v0, Lcom/netease/mpay/d/a/a/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/d/a/a/w;-><init>(Lcom/netease/mpay/d/a/a/r$c;Lcom/netease/mpay/d/a/a/r;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/r$c;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/r$c;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-direct {p0, v4}, Lcom/netease/mpay/d/a/a/r$c;->b(Z)V

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/r$c;->b()V

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

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a/r$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/r$c;->a()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a/r$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/a/r$c;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/a/r$c;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->h:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->a()V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->a:Lcom/netease/mpay/d/a/a/r;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/a/r;->a()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->h:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->b()V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/r$c;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/mpay/d/a/a/x;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/x;-><init>(Lcom/netease/mpay/d/a/a/r$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/a/r$c;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/r$c;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/d/a/a/r$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/r$c;->b()V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    return-void
.end method
