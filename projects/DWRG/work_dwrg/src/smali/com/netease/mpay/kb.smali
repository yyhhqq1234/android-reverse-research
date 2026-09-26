.class Lcom/netease/mpay/kb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jy;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kb;->a:Lcom/netease/mpay/jy;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/kb;->a:Lcom/netease/mpay/jy;

    iget-object v0, v0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    const/4 v1, 0x1

    new-instance v2, Lcom/netease/mpay/b/ar$h;

    iget-object v3, p0, Lcom/netease/mpay/kb;->a:Lcom/netease/mpay/jy;

    iget-object v3, v3, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v3}, Lcom/netease/mpay/jt;->l(Lcom/netease/mpay/jt;)Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->cu:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netease/mpay/b/ar$h;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/jt;->a(Lcom/netease/mpay/jt;ILcom/netease/mpay/b/al;)V

    return-void
.end method
