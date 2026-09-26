.class public Lcom/netease/mpay/widget/b/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/b/c;

.field private b:Lcom/netease/mpay/widget/b/c$d;

.field private c:Z

.field private d:Lcom/netease/mpay/f/an;

.field private e:Lcom/netease/mpay/widget/s;

.field private f:Lcom/netease/mpay/widget/b/c$b;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/widget/b/c;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/b/c$c;->a:Lcom/netease/mpay/widget/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/mpay/widget/b/c$d;->a:Lcom/netease/mpay/widget/b/c$d;

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->b:Lcom/netease/mpay/widget/b/c$d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/widget/b/c$c;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->d:Lcom/netease/mpay/f/an;

    new-instance v0, Lcom/netease/mpay/widget/b/c$b;

    invoke-direct {v0, p1}, Lcom/netease/mpay/widget/b/c$b;-><init>(Lcom/netease/mpay/widget/b/c;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->f:Lcom/netease/mpay/widget/b/c$b;

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

.method synthetic constructor <init>(Lcom/netease/mpay/widget/b/c;Lcom/netease/mpay/widget/b/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/b/c$c;-><init>(Lcom/netease/mpay/widget/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->f:Lcom/netease/mpay/widget/b/c$b;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/b/c$c;Lcom/netease/mpay/widget/b/c$d;)Lcom/netease/mpay/widget/b/c$d;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/b/c$c;->b:Lcom/netease/mpay/widget/b/c$d;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/widget/b/c$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/widget/b/c$c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$d;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->b:Lcom/netease/mpay/widget/b/c$d;

    return-object v0
.end method

.method private c()Lcom/netease/mpay/widget/s;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->e:Lcom/netease/mpay/widget/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c$c;->a:Lcom/netease/mpay/widget/b/c;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->e:Lcom/netease/mpay/widget/s;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->e:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/widget/b/c$c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/widget/b/c$c;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/f/an;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->d:Lcom/netease/mpay/f/an;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/s;
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/widget/b/c$c;->c()Lcom/netease/mpay/widget/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->f:Lcom/netease/mpay/widget/b/c$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/widget/b/c$b;->c:Z

    return-void
.end method

.method public a(Lcom/netease/mpay/f/an;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/widget/b/c$c;->c:Z

    iput-object p1, p0, Lcom/netease/mpay/widget/b/c$c;->d:Lcom/netease/mpay/f/an;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->a:Lcom/netease/mpay/widget/b/c;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    const-string v1, "file:///android_asset/netease_mpay/loading.html"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->f:Lcom/netease/mpay/widget/b/c$b;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iput-object p1, v0, Lcom/netease/mpay/widget/b/c$b$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c$c;->f:Lcom/netease/mpay/widget/b/c$b;

    iget-boolean v0, v0, Lcom/netease/mpay/widget/b/c$b;->a:Z

    return v0
.end method
