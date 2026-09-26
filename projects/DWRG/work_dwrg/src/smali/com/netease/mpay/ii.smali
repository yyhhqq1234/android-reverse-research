.class public Lcom/netease/mpay/ii;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/content/res/Resources;

.field c:Lcom/netease/mpay/widget/s;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/ii;->a:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ii;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/ii;->c:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/ii;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ii;->b:Landroid/content/res/Resources;

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


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$e;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$e;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ii;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$e;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$b;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$b;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ii;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public c()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$f;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$f;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ii;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$f;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public d()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$c;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$c;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ii;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$c;->a(Landroid/app/Activity;)V

    return-void
.end method
