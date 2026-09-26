.class public Lcom/netease/mpay/f/ay;
.super Lcom/netease/mpay/f/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/ay$b;,
        Lcom/netease/mpay/f/ay$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/ay$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V
    .locals 8

    new-instance v0, Lcom/netease/mpay/f/ay$b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/ay$b;-><init>(Landroid/app/Activity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/ay$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/f/ak;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/f/a/b;)V

    invoke-super {p0}, Lcom/netease/mpay/f/ak;->c()Lcom/netease/mpay/f/a/d;

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
