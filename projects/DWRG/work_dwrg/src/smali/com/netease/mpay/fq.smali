.class Lcom/netease/mpay/fq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/fm;


# direct methods
.method constructor <init>(Lcom/netease/mpay/fm;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fq;->a:Lcom/netease/mpay/fm;

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
    .locals 1

    const-string v0, "AuthenticationCallback : onDialogFinish"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/fq;->a:Lcom/netease/mpay/fm;

    iget-object v0, v0, Lcom/netease/mpay/fm;->b:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    return-void
.end method
