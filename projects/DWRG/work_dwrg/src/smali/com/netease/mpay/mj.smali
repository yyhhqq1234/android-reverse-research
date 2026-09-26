.class Lcom/netease/mpay/mj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/mb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/mb;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/mj;->a:Lcom/netease/mpay/mb;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mj;->a:Lcom/netease/mpay/mb;

    const/16 v1, 0x7d0

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/mb;->a(Lcom/netease/mpay/mb;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/mpay/mj;->a:Lcom/netease/mpay/mb;

    invoke-static {v0}, Lcom/netease/mpay/mb;->e(Lcom/netease/mpay/mb;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    iget-object v1, p0, Lcom/netease/mpay/mj;->a:Lcom/netease/mpay/mb;

    iget-object v1, v1, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    return-void
.end method
