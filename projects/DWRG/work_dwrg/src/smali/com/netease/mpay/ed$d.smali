.class Lcom/netease/mpay/ed$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field final synthetic e:Lcom/netease/mpay/ed;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/ed;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/netease/mpay/ed$d;->e:Lcom/netease/mpay/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/netease/mpay/ed$d;->a:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ed$d;->b:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ed$d;->c:Z

    iput-boolean v0, p0, Lcom/netease/mpay/ed$d;->d:Z

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
