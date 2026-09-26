.class public Lcom/netease/mpay/widget/l;
.super Landroid/widget/Toast;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/netease/mpay/widget/l;->a:I

    iput v1, p0, Lcom/netease/mpay/widget/l;->b:I

    iput v2, p0, Lcom/netease/mpay/widget/l;->c:I

    invoke-virtual {p0, p2}, Lcom/netease/mpay/widget/l;->setView(Landroid/view/View;)V

    const/16 v0, 0x37

    invoke-virtual {p0, v0, v1, v1}, Lcom/netease/mpay/widget/l;->setGravity(III)V

    invoke-virtual {p0, v2}, Lcom/netease/mpay/widget/l;->setDuration(I)V

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
.method public setView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method
