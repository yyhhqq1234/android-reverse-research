.class Lcom/netease/mpay/ag;
.super Lcom/netease/mpay/a;


# instance fields
.field final synthetic d:Lcom/netease/mpay/af;


# direct methods
.method constructor <init>(Lcom/netease/mpay/af;Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ag;->d:Lcom/netease/mpay/af;

    invoke-direct {p0, p2}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
