.class public Lcom/netease/mpay/widget/b/c$e;
.super Lcom/netease/mpay/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field d:Lcom/netease/mpay/widget/b/c$a;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/b/a$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/widget/b/c$a;)V

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

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/widget/b/c$a;)V
    .locals 3

    iget-object v0, p1, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/b/a$a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/b/a$a;->c:Lcom/netease/mpay/MpayConfig;

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iput-object p2, p0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    return-void
.end method
