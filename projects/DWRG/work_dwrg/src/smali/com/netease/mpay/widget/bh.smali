.class Lcom/netease/mpay/widget/bh;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/netease/mpay/widget/bf$a$a;

.field final synthetic c:Lcom/netease/mpay/widget/bf$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/bf$a;JJLandroid/widget/TextView;Lcom/netease/mpay/widget/bf$a$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/bh;->c:Lcom/netease/mpay/widget/bf$a;

    iput-object p6, p0, Lcom/netease/mpay/widget/bh;->a:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/netease/mpay/widget/bh;->b:Lcom/netease/mpay/widget/bf$a$a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

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
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/bh;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/bh;->b:Lcom/netease/mpay/widget/bf$a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/bh;->b:Lcom/netease/mpay/widget/bf$a$a;

    invoke-interface {v0}, Lcom/netease/mpay/widget/bf$a$a;->a()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/widget/bh;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0xf

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
