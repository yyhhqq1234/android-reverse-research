.class Lcom/netease/mpay/d/a/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/a$b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/d/a/af;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/af;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/ai;->b:Lcom/netease/mpay/d/a/af;

    iput-object p2, p0, Lcom/netease/mpay/d/a/ai;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/ai;->b:Lcom/netease/mpay/d/a/af;

    iget-object v1, p0, Lcom/netease/mpay/d/a/ai;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/d/a/af;->a(Lcom/netease/mpay/d/a/af;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
