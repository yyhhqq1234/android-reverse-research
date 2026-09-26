.class Lcom/netease/mpay/widget/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/mpay/widget/AlerterWindowService;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/AlerterWindowService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/o;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    iput-object p2, p0, Lcom/netease/mpay/widget/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/widget/o;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/widget/o;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/widget/o;->d:Ljava/lang/String;

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
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/widget/o;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    iget-object v1, p0, Lcom/netease/mpay/widget/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/widget/o;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/widget/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/widget/o;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/widget/AlerterWindowService;->a(Lcom/netease/mpay/widget/AlerterWindowService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
