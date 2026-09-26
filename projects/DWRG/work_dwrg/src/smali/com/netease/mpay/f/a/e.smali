.class Lcom/netease/mpay/f/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/an$a;

.field final synthetic b:Lcom/netease/mpay/f/a/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/an$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/a/e;->b:Lcom/netease/mpay/f/a/d;

    iput-object p2, p0, Lcom/netease/mpay/f/a/e;->a:Lcom/netease/mpay/f/an$a;

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
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/netease/mpay/f/a/e;->b:Lcom/netease/mpay/f/a/d;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/f/a/e;->b:Lcom/netease/mpay/f/a/d;

    iget-object v4, v4, Lcom/netease/mpay/f/a/d;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/a/e;->b:Lcom/netease/mpay/f/a/d;

    iget-object v5, v5, Lcom/netease/mpay/f/a/d;->e:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mpay/hk;->a()Lcom/netease/mpay/hk;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/f/a/e;->b:Lcom/netease/mpay/f/a/d;

    iget-object v7, v7, Lcom/netease/mpay/f/a/d;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/netease/mpay/hk;->a(Ljava/lang/String;)Lcom/netease/mpay/MpayConfig;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v4, p0, Lcom/netease/mpay/f/a/e;->a:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    invoke-static {v0, v1, v2, v8, v8}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method
