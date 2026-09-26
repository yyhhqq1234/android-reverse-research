.class public Lcom/netease/mpay/codescanner/e$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/codescanner/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/e;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/codescanner/e;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/e$a;->a:Lcom/netease/mpay/codescanner/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netease/mpay/bj;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e$a;->a:Lcom/netease/mpay/codescanner/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e$a;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->g(Lcom/netease/mpay/codescanner/e;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e$a;->a:Lcom/netease/mpay/codescanner/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e$a;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->g(Lcom/netease/mpay/codescanner/e;)V

    goto :goto_0
.end method
