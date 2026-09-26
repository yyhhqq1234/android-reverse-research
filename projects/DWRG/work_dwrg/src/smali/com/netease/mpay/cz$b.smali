.class Lcom/netease/mpay/cz$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/Boolean;

.field d:Lcom/netease/mpay/e/b/af;

.field e:Lcom/netease/mpay/server/response/u;

.field final synthetic f:Lcom/netease/mpay/cz;


# direct methods
.method constructor <init>(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netease/mpay/cz$b;->f:Lcom/netease/mpay/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/cz$b;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/cz$b;->b:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/cz$b;->c:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/netease/mpay/cz$b;->d:Lcom/netease/mpay/e/b/af;

    iput-object v2, p0, Lcom/netease/mpay/cz$b;->e:Lcom/netease/mpay/server/response/u;

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
