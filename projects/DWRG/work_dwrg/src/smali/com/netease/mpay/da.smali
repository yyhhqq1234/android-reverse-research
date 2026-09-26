.class Lcom/netease/mpay/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/cz;


# direct methods
.method constructor <init>(Lcom/netease/mpay/cz;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/da;->c:Lcom/netease/mpay/cz;

    iput-object p2, p0, Lcom/netease/mpay/da;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/da;->b:Ljava/lang/String;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/z;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/da;->c:Lcom/netease/mpay/cz;

    iget-object v1, p0, Lcom/netease/mpay/da;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/da;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/cz$b;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/z;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/da;->a(Lcom/netease/mpay/server/response/z;)V

    return-void
.end method
