.class Lcom/netease/mpay/hi$c;
.super Lcom/netease/mpay/hi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field c:Z

.field final synthetic d:Lcom/netease/mpay/hi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hi;ZLcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hi$c;->d:Lcom/netease/mpay/hi;

    invoke-direct {p0, p1, p3}, Lcom/netease/mpay/hi$a;-><init>(Lcom/netease/mpay/hi;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-boolean p2, p0, Lcom/netease/mpay/hi$c;->c:Z

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
