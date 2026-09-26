.class public Lcom/netease/mpay/ig;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private a()Z
    .locals 1

    const-string v0, "It\'s not Patch"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/ig;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/ig;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mpay/ih;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/ih;-><init>(Lcom/netease/mpay/ig;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
