.class Lcom/netease/mpay/widget/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/widget/b/q;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/b/q;Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/b/s;->b:Lcom/netease/mpay/widget/b/q;

    iput-object p2, p0, Lcom/netease/mpay/widget/b/s;->a:Landroid/app/Activity;

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

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/s;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    return-void
.end method
