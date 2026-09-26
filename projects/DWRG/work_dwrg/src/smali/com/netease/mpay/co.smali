.class Lcom/netease/mpay/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ck;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ck;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/co;->a:Lcom/netease/mpay/ck;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/co;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->e(Lcom/netease/mpay/ck;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/co;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/co;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->e(Lcom/netease/mpay/ck;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/co;->a:Lcom/netease/mpay/ck;

    invoke-static {v1}, Lcom/netease/mpay/ck;->b(Lcom/netease/mpay/ck;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->B:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/co;->a:Lcom/netease/mpay/ck;

    invoke-static {v2}, Lcom/netease/mpay/ck;->b(Lcom/netease/mpay/ck;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/cp;

    invoke-direct {v3, p0}, Lcom/netease/mpay/cp;-><init>(Lcom/netease/mpay/co;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
