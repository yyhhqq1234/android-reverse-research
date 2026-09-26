.class public Lcom/netease/mpay/server/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/server/e$b;,
        Lcom/netease/mpay/server/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/Boolean;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/server/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/server/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/e;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/server/e;->d:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/server/e;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/server/e;->f:Ljava/lang/String;

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

.method static synthetic a(Lcom/netease/mpay/server/e;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/e;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/server/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/server/e;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/server/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/server/e;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/server/e;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/e;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/server/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/server/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/e;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/server/e;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/server/e$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/server/e$b;-><init>(Lcom/netease/mpay/server/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netease/mpay/server/e;->d:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/server/e;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Lcom/netease/mpay/server/e;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/server/e;->f:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Lcom/netease/mpay/server/a$o;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a$o;-><init>(Ljava/lang/String;)V

    throw v0
.end method
