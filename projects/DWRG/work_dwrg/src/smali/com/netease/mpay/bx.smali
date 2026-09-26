.class Lcom/netease/mpay/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b;

.field final synthetic b:Lcom/netease/mpay/e/b/o;

.field final synthetic c:Lcom/netease/mpay/bu;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bu;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bx;->c:Lcom/netease/mpay/bu;

    iput-object p2, p0, Lcom/netease/mpay/bx;->a:Lcom/netease/mpay/e/b;

    iput-object p3, p0, Lcom/netease/mpay/bx;->b:Lcom/netease/mpay/e/b/o;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/bx;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bx;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/bx;->c:Lcom/netease/mpay/bu;

    invoke-static {v2}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netease/mpay/bx;->c:Lcom/netease/mpay/bu;

    invoke-static {v0, v3, v3}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;ZZ)V

    return-void
.end method
