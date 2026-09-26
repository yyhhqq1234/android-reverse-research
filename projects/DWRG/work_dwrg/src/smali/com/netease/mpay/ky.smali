.class Lcom/netease/mpay/ky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kv;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kv;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

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
    .locals 5

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

    invoke-static {v3}, Lcom/netease/mpay/kv;->d(Lcom/netease/mpay/kv;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

    invoke-static {v1}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

    invoke-static {v1}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/mpay/kv$b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->c(Lcom/netease/mpay/kv;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

    invoke-static {v3}, Lcom/netease/mpay/kv;->d(Lcom/netease/mpay/kv;)I

    move-result v3

    if-ne v3, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

    invoke-static {v3}, Lcom/netease/mpay/kv;->d(Lcom/netease/mpay/kv;)I

    move-result v3

    if-eq v3, v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/ky;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->d(Lcom/netease/mpay/kv;)I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
