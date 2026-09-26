.class Lcom/netease/mpay/n$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/bm$a;

.field b:Ljava/util/HashMap;

.field c:Lcom/netease/mpay/EnterGameActivity$a;

.field d:Lcom/netease/mpay/n$a;

.field final synthetic e:Lcom/netease/mpay/n;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/n;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netease/mpay/n$b;->e:Lcom/netease/mpay/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/n$b;->a:Lcom/netease/mpay/bm$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/n$b;->b:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/netease/mpay/n$b;->c:Lcom/netease/mpay/EnterGameActivity$a;

    sget-object v0, Lcom/netease/mpay/n$a;->a:Lcom/netease/mpay/n$a;

    iput-object v0, p0, Lcom/netease/mpay/n$b;->d:Lcom/netease/mpay/n$a;

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
