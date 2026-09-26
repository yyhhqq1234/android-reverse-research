.class Lcom/netease/mpay/or$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/or;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/or;

.field private b:Lcom/netease/mpay/or$b;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/or;Lcom/netease/mpay/or$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/or$c;->a:Lcom/netease/mpay/or;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/or$c;->b:Lcom/netease/mpay/or$b;

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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/or$c;->a:Lcom/netease/mpay/or;

    sget-object v1, Lcom/netease/mpay/or$a;->c:Lcom/netease/mpay/or$a;

    invoke-static {v0, v1}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or;Lcom/netease/mpay/or$a;)Lcom/netease/mpay/or$a;

    iget-object v0, p0, Lcom/netease/mpay/or$c;->a:Lcom/netease/mpay/or;

    iget-object v1, p0, Lcom/netease/mpay/or$c;->a:Lcom/netease/mpay/or;

    invoke-static {v1}, Lcom/netease/mpay/or;->d(Lcom/netease/mpay/or;)Lcom/netease/mpay/or$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or;Lcom/netease/mpay/or$c;)V

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/or$c;->b:Lcom/netease/mpay/or$b;

    invoke-static {p2}, Lcom/netease/mpay/auth/b$c;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/or$b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/netease/mpay/auth/b$b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/mpay/or$c;->b:Lcom/netease/mpay/or$b;

    invoke-virtual {v0}, Lcom/netease/mpay/auth/b$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netease/mpay/or$b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
