.class Lcom/netease/mpay/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ScrollView;

.field final synthetic b:I

.field final synthetic c:Lcom/netease/mpay/bc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bc;Landroid/widget/ScrollView;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bh;->c:Lcom/netease/mpay/bc;

    iput-object p2, p0, Lcom/netease/mpay/bh;->a:Landroid/widget/ScrollView;

    iput p3, p0, Lcom/netease/mpay/bh;->b:I

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
    .locals 3

    iget-object v1, p0, Lcom/netease/mpay/bh;->a:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    iget v0, p0, Lcom/netease/mpay/bh;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/bh;->b:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/bh;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getBottom()I

    move-result v0

    goto :goto_0
.end method
