.class Lcom/netease/mpay/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/server/response/i;

.field final synthetic b:Lcom/netease/mpay/bp;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bp;Lcom/netease/mpay/server/response/i;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bq;->b:Lcom/netease/mpay/bp;

    iput-object p2, p0, Lcom/netease/mpay/bq;->a:Lcom/netease/mpay/server/response/i;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/bq;->b:Lcom/netease/mpay/bp;

    iget-object v0, v0, Lcom/netease/mpay/bp;->a:Lcom/netease/mpay/bm;

    iget-object v1, p0, Lcom/netease/mpay/bq;->a:Lcom/netease/mpay/server/response/i;

    invoke-static {v0, v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;Lcom/netease/mpay/server/response/i;)V

    return-void
.end method
