.class Lcom/netease/mpay/gj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/gh;


# direct methods
.method constructor <init>(Lcom/netease/mpay/gh;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gj;->b:Lcom/netease/mpay/gh;

    iput-object p2, p0, Lcom/netease/mpay/gj;->a:Ljava/lang/String;

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
.method public run()V
    .locals 2

    const-string v0, "BackgroundAuthenticationCallback : onLoginFail"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/gj;->b:Lcom/netease/mpay/gh;

    iget-object v0, v0, Lcom/netease/mpay/gh;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/gj;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/BackgroundAuthenticationCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method
