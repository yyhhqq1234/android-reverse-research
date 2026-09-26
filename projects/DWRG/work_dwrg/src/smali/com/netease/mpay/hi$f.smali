.class Lcom/netease/mpay/hi$f;
.super Lcom/netease/mpay/hi$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/netease/mpay/hi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hi;ZLjava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hi$f;->f:Lcom/netease/mpay/hi;

    invoke-direct {p0, p1, p5}, Lcom/netease/mpay/hi$e;-><init>(Lcom/netease/mpay/hi;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-boolean p2, p0, Lcom/netease/mpay/hi$f;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/hi$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/hi$f;->e:Ljava/lang/String;

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
