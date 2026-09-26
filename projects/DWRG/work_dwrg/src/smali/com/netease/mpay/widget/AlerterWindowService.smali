.class public Lcom/netease/mpay/widget/AlerterWindowService;
.super Landroid/app/IntentService;


# instance fields
.field private a:I

.field private b:Lcom/netease/mpay/widget/be;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AlerterWindowService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->c:Landroid/os/Handler;

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

.method static synthetic a(Lcom/netease/mpay/widget/AlerterWindowService;)Lcom/netease/mpay/widget/be;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->b:Lcom/netease/mpay/widget/be;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/widget/AlerterWindowService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/widget/AlerterWindowService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/netease/mpay/widget/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/netease/mpay/widget/AlerterWindowService;->c:Landroid/os/Handler;

    new-instance v0, Lcom/netease/mpay/widget/o;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/o;-><init>(Lcom/netease/mpay/widget/AlerterWindowService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/netease/mpay/widget/AlerterWindowService;->c:Landroid/os/Handler;

    new-instance v0, Lcom/netease/mpay/widget/p;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/p;-><init>(Lcom/netease/mpay/widget/AlerterWindowService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/widget/AlerterWindowService;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->a:I

    return v0
.end method

.method static synthetic c(Lcom/netease/mpay/widget/AlerterWindowService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    const-wide/16 v7, -0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->a:I

    :goto_0
    const-string v0, "5"

    invoke-virtual {p1, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->b:Lcom/netease/mpay/widget/be;

    :goto_1
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/netease/mpay/widget/AlerterWindowService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->a:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netease/mpay/widget/m;->a:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, v5, v6}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/be;

    iput-object v0, p0, Lcom/netease/mpay/widget/AlerterWindowService;->b:Lcom/netease/mpay/widget/be;

    goto :goto_1
.end method
