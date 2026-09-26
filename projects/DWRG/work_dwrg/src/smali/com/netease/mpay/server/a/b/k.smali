.class public Lcom/netease/mpay/server/a/b/k;
.super Lcom/netease/mpay/server/a/b/n;


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/register2"

    invoke-direct {p0, v0}, Lcom/netease/mpay/server/a/b/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/b/k;->c:Ljava/lang/String;

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
.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/a/b/k;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/server/a/b/k;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
