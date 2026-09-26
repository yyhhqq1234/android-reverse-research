.class public Lcom/netease/mpay/e/c/a/h;
.super Lcom/netease/mpay/e/c/a/b;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->aH:I

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/e/c/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

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
