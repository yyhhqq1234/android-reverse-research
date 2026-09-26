.class Lcom/netease/mpay/lq$a;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/lq;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/lq;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/lq$a;->a:Lcom/netease/mpay/lq;

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

.method synthetic constructor <init>(Lcom/netease/mpay/lq;Lcom/netease/mpay/lr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/lq$a;-><init>(Lcom/netease/mpay/lq;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/lq$a;->a:Lcom/netease/mpay/lq;

    iget-object v0, v0, Lcom/netease/mpay/lq;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/netease/mpay/lq$a;->a:Lcom/netease/mpay/lq;

    invoke-static {v0}, Lcom/netease/mpay/lq;->k(Lcom/netease/mpay/lq;)V

    return-void
.end method
