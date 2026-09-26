.class public Lcom/netease/mpay/e/c/a/e;
.super Lcom/netease/mpay/e/c/a/b;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->x:I

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

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/bk;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->y:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->x:I

    invoke-static {p0, p1, v1, v0}, Lcom/netease/mpay/e/c/a/e;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->w:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
