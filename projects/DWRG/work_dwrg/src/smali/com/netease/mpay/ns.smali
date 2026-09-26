.class Lcom/netease/mpay/ns;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/np;


# direct methods
.method constructor <init>(Lcom/netease/mpay/np;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ns;->a:Lcom/netease/mpay/np;

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
.method public a(Landroid/view/View;)I
    .locals 1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->aW:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method
