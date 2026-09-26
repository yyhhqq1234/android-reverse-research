.class Lcom/netease/mpay/d/a/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/bf$a$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/r;

.field final synthetic b:Lcom/netease/mpay/d/a/a/r$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/r$c;Lcom/netease/mpay/d/a/a/r;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/v;->b:Lcom/netease/mpay/d/a/a/r$c;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/v;->a:Lcom/netease/mpay/d/a/a/r;

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


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/v;->b:Lcom/netease/mpay/d/a/a/r$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/d/a/a/r$c;->a(Lcom/netease/mpay/d/a/a/r$c;Z)V

    return-void
.end method
