.class Lcom/netease/mpay/f/a/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/a/d;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/f/a/d;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/a/d$b;->a:Lcom/netease/mpay/f/a/d;

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

.method synthetic constructor <init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/a/d$b;-><init>(Lcom/netease/mpay/f/a/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/f/a/d$b;->a:Lcom/netease/mpay/f/a/d;

    invoke-static {v0}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/d;)Lcom/netease/mpay/f/a/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$b;->a:Lcom/netease/mpay/f/a/d;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/a/d$b;->a:Lcom/netease/mpay/f/a/d;

    iget-object v1, v1, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/f/a/h;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/f/a/h;-><init>(Lcom/netease/mpay/f/a/d$b;Lcom/netease/mpay/f/a/a$b;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
