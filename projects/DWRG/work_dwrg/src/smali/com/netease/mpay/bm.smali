.class public Lcom/netease/mpay/bm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/bm$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/mpay/MpayConfig;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/netease/mpay/AuthenticationCallback;

.field private i:Lcom/netease/mpay/f/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/mpay/bp;

    invoke-direct {v0, p0}, Lcom/netease/mpay/bp;-><init>(Lcom/netease/mpay/bm;)V

    iput-object v0, p0, Lcom/netease/mpay/bm;->i:Lcom/netease/mpay/f/a/b;

    iput-object p1, p0, Lcom/netease/mpay/bm;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/bm;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/bm;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/bm;->d:Lcom/netease/mpay/MpayConfig;

    iput-object p5, p0, Lcom/netease/mpay/bm;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/bm;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/netease/mpay/bm;->g:Z

    iput-object p8, p0, Lcom/netease/mpay/bm;->h:Lcom/netease/mpay/AuthenticationCallback;

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

.method static synthetic a(Lcom/netease/mpay/bm;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bm;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/n;->b()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/mpay/bm$a;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/netease/mpay/n;->a(Ljava/lang/String;Lcom/netease/mpay/bm$a;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/n;->e()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/bm;Lcom/netease/mpay/server/response/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/server/response/i;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/server/response/i;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget-object v0, v0, Lcom/netease/mpay/server/response/i$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/bm;->h:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p1, Lcom/netease/mpay/server/response/i;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/server/response/i;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/AuthenticationCallback;->onEnterGame(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/bm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/bm;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/bm;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget-object v2, v2, Lcom/netease/mpay/server/response/i$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/bm;->h:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/netease/mpay/bm;->a:Landroid/app/Activity;

    sget-object v7, Lcom/netease/mpay/b$a;->V:Lcom/netease/mpay/b$a;

    new-instance v0, Lcom/netease/mpay/b/e;

    new-instance v1, Lcom/netease/mpay/b/a$a;

    iget-object v2, p0, Lcom/netease/mpay/bm;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/bm;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/bm;->d:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v2, p1, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget-object v2, v2, Lcom/netease/mpay/server/response/i$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget-object v3, v3, Lcom/netease/mpay/server/response/i$a;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget v4, v4, Lcom/netease/mpay/server/response/i$a;->b:I

    new-instance v5, Lcom/netease/mpay/bt;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/bt;-><init>(Lcom/netease/mpay/bm;Lcom/netease/mpay/server/response/i;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/e;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/bu$b;)V

    invoke-static {v6, v7, v0, v8, v8}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/bm;->h:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p1, Lcom/netease/mpay/server/response/i;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/server/response/i;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/AuthenticationCallback;->onEnterGame(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/bm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bm;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/bm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bm;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/bm;)Lcom/netease/mpay/f/a/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bm;->i:Lcom/netease/mpay/f/a/b;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/bm;)Lcom/netease/mpay/AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bm;->h:Lcom/netease/mpay/AuthenticationCallback;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/EnterGameActivity$a;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/bm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/cz;->a(Landroid/content/Context;)Lcom/netease/mpay/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bm;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/bm;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v4, Lcom/netease/mpay/bn;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/bn;-><init>(Lcom/netease/mpay/bm;Lcom/netease/mpay/EnterGameActivity$a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/cz;->a(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/cz$a;)V

    return-void
.end method
