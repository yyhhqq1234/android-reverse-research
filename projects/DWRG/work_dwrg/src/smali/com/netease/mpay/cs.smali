.class Lcom/netease/mpay/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/cr;


# direct methods
.method constructor <init>(Lcom/netease/mpay/cr;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/cs;->a:Lcom/netease/mpay/cr;

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

    iget-object v0, p0, Lcom/netease/mpay/cs;->a:Lcom/netease/mpay/cr;

    invoke-static {v0}, Lcom/netease/mpay/cr;->a(Lcom/netease/mpay/cr;)Lcom/netease/forum/ForumApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/forum/ForumApi;->openGameForum(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/cs;->a:Lcom/netease/mpay/cr;

    invoke-static {v0}, Lcom/netease/mpay/cr;->a(Lcom/netease/mpay/cr;)Lcom/netease/forum/ForumApi;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/forum/ForumApi;->openGameForum(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/cs;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
