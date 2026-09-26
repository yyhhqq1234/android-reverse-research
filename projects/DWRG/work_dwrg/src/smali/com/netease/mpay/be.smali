.class Lcom/netease/mpay/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/netease/mpay/bc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bc;Ljava/util/ArrayList;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/be;->b:Lcom/netease/mpay/bc;

    iput-object p2, p0, Lcom/netease/mpay/be;->a:Ljava/util/ArrayList;

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
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/be;->b:Lcom/netease/mpay/bc;

    iget-object v1, p0, Lcom/netease/mpay/be;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/netease/mpay/bc;->a(Lcom/netease/mpay/bc;Ljava/util/ArrayList;)V

    return-void
.end method
