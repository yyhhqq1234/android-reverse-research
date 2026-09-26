.class Lcom/netease/mpay/gp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/ay$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b/f;

.field final synthetic b:Lcom/netease/mpay/e/b/o;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/e/b/f;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gp;->d:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gp;->a:Lcom/netease/mpay/e/b/f;

    iput-object p3, p0, Lcom/netease/mpay/gp;->b:Lcom/netease/mpay/e/b/o;

    iput-object p4, p0, Lcom/netease/mpay/gp;->c:Ljava/lang/Integer;

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
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/gp;->d:Lcom/netease/mpay/MpayApi;

    iget-object v1, p0, Lcom/netease/mpay/gp;->a:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/gp;->b:Lcom/netease/mpay/e/b/o;

    iget-object v3, p0, Lcom/netease/mpay/gp;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    return-void
.end method
