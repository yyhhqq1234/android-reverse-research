.class public abstract Lcom/netease/mpay/b/x$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

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
.method public abstract a()Ljava/lang/String;
.end method

.method public b()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p0, Lcom/netease/mpay/b/x$b;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/netease/mpay/b/x$b;

    iget-object v0, v0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/netease/mpay/b/x$b;

    iget-object v0, p0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    iget-object v0, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/netease/mpay/b/x$a;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/netease/mpay/b/x$a;

    iget-object v0, p0, Lcom/netease/mpay/b/x$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method
