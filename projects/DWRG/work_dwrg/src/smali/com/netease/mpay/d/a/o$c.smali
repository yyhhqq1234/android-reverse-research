.class Lcom/netease/mpay/d/a/o$c;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/d/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/o;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/d/a/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/o$c;->a:Lcom/netease/mpay/d/a/o;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

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

.method synthetic constructor <init>(Lcom/netease/mpay/d/a/o;Lcom/netease/mpay/d/a/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/d/a/o$c;-><init>(Lcom/netease/mpay/d/a/o;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/o$c;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/o$c;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->i(Lcom/netease/mpay/d/a/o;)V

    return-void
.end method
