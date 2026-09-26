.class Lcom/netease/mpay/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/forum/ForumApiCallback;


# instance fields
.field final synthetic a:Lcom/netease/mpay/cr;


# direct methods
.method constructor <init>(Lcom/netease/mpay/cr;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/cu;->a:Lcom/netease/mpay/cr;

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
.method public onRequestTicket(Lcom/netease/forum/ForumApiCallback$OnTicketGotCallback;)V
    .locals 5

    new-instance v0, Lcom/netease/mpay/f/ad;

    iget-object v1, p0, Lcom/netease/mpay/cu;->a:Lcom/netease/mpay/cr;

    invoke-static {v1}, Lcom/netease/mpay/cr;->b(Lcom/netease/mpay/cr;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/cu;->a:Lcom/netease/mpay/cr;

    invoke-static {v2}, Lcom/netease/mpay/cr;->c(Lcom/netease/mpay/cr;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/cu;->a:Lcom/netease/mpay/cr;

    invoke-static {v3}, Lcom/netease/mpay/cr;->d(Lcom/netease/mpay/cr;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/cv;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/cv;-><init>(Lcom/netease/mpay/cu;Lcom/netease/forum/ForumApiCallback$OnTicketGotCallback;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/f/ad;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ad;->h()V

    return-void
.end method
