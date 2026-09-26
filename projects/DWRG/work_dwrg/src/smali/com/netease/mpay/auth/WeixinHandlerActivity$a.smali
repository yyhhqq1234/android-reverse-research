.class Lcom/netease/mpay/auth/WeixinHandlerActivity$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/auth/WeixinHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/auth/WeixinHandlerActivity;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/auth/WeixinHandlerActivity;ILjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;->c:Lcom/netease/mpay/auth/WeixinHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;->a:I

    iput-object p3, p0, Lcom/netease/mpay/auth/WeixinHandlerActivity$a;->b:Ljava/lang/String;

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
