.class Lcom/netease/mpay/fy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/MpayApi$a;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fy;->b:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/fy;->a:Ljava/lang/Integer;

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
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/fy;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, p0, Lcom/netease/mpay/fy;->b:Lcom/netease/mpay/MpayApi;

    invoke-static {v1}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/fy;->a:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method
