.class public Lcom/netease/mpay/widget/am;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/am$a;,
        Lcom/netease/mpay/widget/am$b;,
        Lcom/netease/mpay/widget/am$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/netease/mpay/widget/am$a;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/netease/mpay/widget/am;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/mpay/widget/am;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/widget/am;->c:I

    const-string v0, "service.mkey.163.com"

    iput-object v0, p0, Lcom/netease/mpay/widget/am;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    iput-object v1, p0, Lcom/netease/mpay/widget/am;->i:Ljava/util/ArrayList;

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

.method static synthetic a(Lcom/netease/mpay/widget/am;I)I
    .locals 0

    iput p1, p0, Lcom/netease/mpay/widget/am;->b:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/widget/am;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/am;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/am;->f:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/widget/am;Lcom/netease/mpay/widget/am$a;)Lcom/netease/mpay/widget/am$a;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/widget/am;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/am;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/widget/am;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    const-string v0, "From"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "From"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/widget/am;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/widget/am;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/am;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "PING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/widget/am;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/widget/am;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/widget/am;->c:I

    return v0
.end method

.method static synthetic c(Lcom/netease/mpay/widget/am;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/mpay/widget/am;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/widget/am;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/am;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/widget/am;->j:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/widget/am;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/widget/am;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/widget/am;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->j:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/widget/am;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/widget/am;->b:I

    return v0
.end method

.method static synthetic h(Lcom/netease/mpay/widget/am;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/widget/am;)I
    .locals 2

    iget v0, p0, Lcom/netease/mpay/widget/am;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/mpay/widget/am;->b:I

    return v0
.end method

.method static synthetic j(Lcom/netease/mpay/widget/am;)Lcom/netease/mpay/widget/am$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/widget/am;)I
    .locals 2

    iget v0, p0, Lcom/netease/mpay/widget/am;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/mpay/widget/am;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/am$a;->a(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/am$a;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/widget/am$c;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/netease/mpay/widget/am;->b()V

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/am$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/am$a;->a(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/am$a;->cancel(Z)Z

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/widget/am;->c()V

    new-instance v0, Lcom/netease/mpay/widget/am$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/widget/am$a;-><init>(Lcom/netease/mpay/widget/am;Lcom/netease/mpay/widget/am$c;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    iget-object v0, p0, Lcom/netease/mpay/widget/am;->h:Lcom/netease/mpay/widget/am$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/am$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
