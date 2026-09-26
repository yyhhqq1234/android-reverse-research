.class Lcom/netease/mpay/ah$a$a;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ah$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/ah$b;

.field final synthetic b:Lcom/netease/mpay/ah$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ah$a;Lcom/netease/mpay/ah$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ah$a$a;->b:Lcom/netease/mpay/ah$a;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/ah$a$a;->a:Lcom/netease/mpay/ah$b;

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
.method protected a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ah$a$a;->a:Lcom/netease/mpay/ah$b;

    iget v0, v0, Lcom/netease/mpay/ah$b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/ah$a$a;->b:Lcom/netease/mpay/ah$a;

    iget-object v0, v0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->b(Lcom/netease/mpay/ah;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/ah$a$a;->b:Lcom/netease/mpay/ah$a;

    iget-object v0, v0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->c(Lcom/netease/mpay/ah;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/ah$a$a;->b:Lcom/netease/mpay/ah$a;

    iget-object v0, v0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->d(Lcom/netease/mpay/ah;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/ah$a$a;->b:Lcom/netease/mpay/ah$a;

    iget-object v0, v0, Lcom/netease/mpay/ah$a;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->e(Lcom/netease/mpay/ah;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
