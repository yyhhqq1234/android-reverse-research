.class public Lcom/netease/mpay/server/a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/server/a$j;,
        Lcom/netease/mpay/server/a$p;,
        Lcom/netease/mpay/server/a$q;,
        Lcom/netease/mpay/server/a$o;,
        Lcom/netease/mpay/server/a$n;,
        Lcom/netease/mpay/server/a$e;,
        Lcom/netease/mpay/server/a$h;,
        Lcom/netease/mpay/server/a$g;,
        Lcom/netease/mpay/server/a$c;,
        Lcom/netease/mpay/server/a$d;,
        Lcom/netease/mpay/server/a$k;,
        Lcom/netease/mpay/server/a$l;,
        Lcom/netease/mpay/server/a$m;,
        Lcom/netease/mpay/server/a$f;,
        Lcom/netease/mpay/server/a$a;,
        Lcom/netease/mpay/server/a$b;,
        Lcom/netease/mpay/server/a$i;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/server/a;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/netease/mpay/server/a;->a:Ljava/lang/String;

    return-object v0
.end method
