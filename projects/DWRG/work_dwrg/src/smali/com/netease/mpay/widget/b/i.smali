.class Lcom/netease/mpay/widget/b/i;
.super Lcom/netease/mpay/widget/b/q;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/b/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/b/c;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/b/i;->a:Lcom/netease/mpay/widget/b/c;

    invoke-direct {p0}, Lcom/netease/mpay/widget/b/q;-><init>()V

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
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/i;->a:Lcom/netease/mpay/widget/b/c;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    return-void
.end method
