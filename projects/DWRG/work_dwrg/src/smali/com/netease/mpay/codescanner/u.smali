.class Lcom/netease/mpay/codescanner/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/m;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/u;->a:Lcom/netease/mpay/codescanner/m;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/u;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/u;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/e/b/o;)V

    return-void
.end method
