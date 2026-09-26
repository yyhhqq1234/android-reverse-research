.class public Lcom/netease/mpay/server/a/bg$a;
.super Lcom/netease/mpay/server/a/bg$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/server/a/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/server/a/bg$c;-><init>()V

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
.method a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netease/mpay/server/b$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/netease/mpay/server/b$c;->f:Lcom/netease/mpay/server/b$c;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netease/mpay/server/b;->a([Lcom/netease/mpay/server/b$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
