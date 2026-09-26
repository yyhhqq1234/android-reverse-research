.class public Lcom/netease/mpay/server/response/f;
.super Lcom/netease/mpay/server/response/ac;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/server/response/ac;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/server/response/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/response/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/response/f;->c:[B

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
