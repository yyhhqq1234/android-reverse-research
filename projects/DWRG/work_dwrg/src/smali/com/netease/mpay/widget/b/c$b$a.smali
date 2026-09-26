.class Lcom/netease/mpay/widget/b/c$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/b/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/widget/b/c$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/b/c$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mpay/widget/b/c$b$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c$b$a;->b:Ljava/lang/String;

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
.method a(Z)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/netease/mpay/widget/b/c$b$a;->a:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_2

    const-string v0, "cz_weizhi"

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p1, :cond_0

    const-string v0, "cz_success"

    goto :goto_0

    :cond_0
    const-string v0, "zf_success"

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    const-string v0, "cz_fail"

    goto :goto_0

    :cond_1
    const-string v0, "zf_fail"

    goto :goto_0

    :cond_2
    const-string v0, "zf_weizhi"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/b/c$b$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/b/l;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/widget/b/l;-><init>(Lcom/netease/mpay/widget/b/c$b$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
