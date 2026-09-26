.class Lcom/netease/mpay/codescanner/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/AuthenticationCallback;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/aa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/aa;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/ab;->a:Lcom/netease/mpay/codescanner/aa;

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
.method public onDialogFinish()V
    .locals 0

    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGuestBindSuccess(Lcom/netease/mpay/User;)V
    .locals 0

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/ab;->a:Lcom/netease/mpay/codescanner/aa;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/aa;->a:Lcom/netease/mpay/codescanner/y;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/y;->c(Lcom/netease/mpay/codescanner/y;)V

    return-void
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
