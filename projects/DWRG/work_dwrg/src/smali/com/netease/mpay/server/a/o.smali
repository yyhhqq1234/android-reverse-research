.class public abstract Lcom/netease/mpay/server/a/o;
.super Lcom/netease/mpay/server/a/d;


# instance fields
.field a:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/server/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/netease/mpay/server/a/o;->a:[B

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
.method a(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/mpay/server/a/o;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/server/a/o;->a:[B

    invoke-static {v0, v1}, Lcom/netease/mpay/lp;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "params"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract b()Lorg/json/JSONObject;
.end method
