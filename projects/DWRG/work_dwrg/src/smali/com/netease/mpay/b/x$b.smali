.class public Lcom/netease/mpay/b/x$b;
.super Lcom/netease/mpay/b/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/server/response/aa;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/server/response/aa;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/b/x$c;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

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
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    iget-object v0, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    iget-object v0, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    iget-object v0, v0, Lcom/netease/mpay/server/response/aa$b;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
