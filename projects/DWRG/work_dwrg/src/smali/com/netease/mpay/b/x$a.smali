.class public Lcom/netease/mpay/b/x$a;
.super Lcom/netease/mpay/b/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/netease/mpay/server/response/ab;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/server/response/ab;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/b/x$c;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/b/x$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/b/x$a;->b:Lcom/netease/mpay/server/response/ab;

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

    iget-object v0, p0, Lcom/netease/mpay/b/x$a;->a:Ljava/lang/String;

    return-object v0
.end method
