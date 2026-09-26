.class Lcom/netease/mpay/social/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/social/k;


# direct methods
.method constructor <init>(Lcom/netease/mpay/social/k;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/social/l;->a:Lcom/netease/mpay/social/k;

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
.method public onComplete(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/netease/mpay/social/i;->a(Ljava/lang/String;)Lcom/netease/mpay/social/i;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/social/l;->a:Lcom/netease/mpay/social/k;

    invoke-static {v1, v0}, Lcom/netease/mpay/social/k;->a(Lcom/netease/mpay/social/k;Lcom/netease/mpay/social/i;)V

    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/social/l;->a:Lcom/netease/mpay/social/k;

    invoke-static {v0}, Lcom/netease/mpay/social/k;->a(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/k$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/k$a;->a(I)V

    return-void
.end method
