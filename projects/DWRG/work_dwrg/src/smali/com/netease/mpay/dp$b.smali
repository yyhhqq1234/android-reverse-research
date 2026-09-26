.class Lcom/netease/mpay/dp$b;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/netease/mpay/dp;


# direct methods
.method constructor <init>(Lcom/netease/mpay/dp;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

    iput p2, p0, Lcom/netease/mpay/dp$b;->a:I

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
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/netease/mpay/dp$b;->a:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/mpay/dp$b;->a:I

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;I)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->m(Lcom/netease/mpay/dp;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/dp;->c(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/dp;->d(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/dp;->e(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;ZZLcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/netease/mpay/dp$b;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->n(Lcom/netease/mpay/dp;)V

    invoke-virtual {p0}, Lcom/netease/mpay/dp$b;->a()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x7 -> :sswitch_1
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x2711 -> :sswitch_8
    .end sparse-switch
.end method
