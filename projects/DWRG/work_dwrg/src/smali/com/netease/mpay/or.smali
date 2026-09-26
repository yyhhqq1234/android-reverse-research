.class public Lcom/netease/mpay/or;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/or$c;,
        Lcom/netease/mpay/or$b;,
        Lcom/netease/mpay/or$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/k;

.field private e:Lcom/netease/mpay/or$a;

.field private f:Lcom/netease/mpay/or$c;

.field private g:Z

.field private h:Lcom/netease/mpay/widget/av;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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

.method static synthetic a(Lcom/netease/mpay/or;)Lcom/netease/mpay/b/k;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/or;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/or;Lcom/netease/mpay/or$a;)Lcom/netease/mpay/or$a;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/or;->e:Lcom/netease/mpay/or$a;

    return-object p1
.end method

.method private a(Lcom/netease/mpay/or$c;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/or;->f:Lcom/netease/mpay/or$c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/or;Lcom/netease/mpay/or$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or$c;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/or;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/or;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/or;)Lcom/netease/mpay/widget/av;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ou;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ou;-><init>(Lcom/netease/mpay/or;)V

    iget-object v1, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/ov;

    invoke-direct {v5, p0}, Lcom/netease/mpay/ov;-><init>(Lcom/netease/mpay/or;)V

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/or;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/or;->s()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/or;)Lcom/netease/mpay/or$c;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/or;->f:Lcom/netease/mpay/or$c;

    return-object v0
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/netease/mpay/auth/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/auth/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    const-string v2, "snsapi_userinfo"

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    new-instance v2, Lcom/netease/mpay/auth/b$a;

    iget-object v3, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, v3}, Lcom/netease/mpay/auth/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/netease/mpay/auth/b$a;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    sget-object v2, Lcom/netease/mpay/or$a;->b:Lcom/netease/mpay/or$a;

    iput-object v2, p0, Lcom/netease/mpay/or;->e:Lcom/netease/mpay/or$a;

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/or$c;

    new-instance v1, Lcom/netease/mpay/os;

    invoke-direct {v1, p0}, Lcom/netease/mpay/os;-><init>(Lcom/netease/mpay/or;)V

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/or$c;-><init>(Lcom/netease/mpay/or;Lcom/netease/mpay/or$b;)V

    iput-object v0, p0, Lcom/netease/mpay/or;->f:Lcom/netease/mpay/or$c;

    iget-object v0, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/or;->f:Lcom/netease/mpay/or$c;

    invoke-static {}, Lcom/netease/mpay/auth/b$c;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/k;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/or;->d:Lcom/netease/mpay/b/k;

    iget-object v0, p0, Lcom/netease/mpay/or;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/or$a;->a:Lcom/netease/mpay/or$a;

    iput-object v0, p0, Lcom/netease/mpay/or;->e:Lcom/netease/mpay/or$a;

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/or;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v0}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/or;->g:Z

    goto :goto_0
.end method

.method public f()V
    .locals 4

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    iget-boolean v0, p0, Lcom/netease/mpay/or;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/or;->g:Z

    iget-object v0, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/ow;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ow;-><init>(Lcom/netease/mpay/or;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netease/mpay/or$a;->b:Lcom/netease/mpay/or$a;

    iget-object v1, p0, Lcom/netease/mpay/or;->e:Lcom/netease/mpay/or$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/or;->f:Lcom/netease/mpay/or$c;

    invoke-direct {p0, v0}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or$c;)V

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->i()V

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->j()V

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/or;->h:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/or;->f:Lcom/netease/mpay/or$c;

    invoke-direct {p0, v0}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or$c;)V

    return-void
.end method
