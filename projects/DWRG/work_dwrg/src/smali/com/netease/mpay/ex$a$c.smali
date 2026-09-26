.class Lcom/netease/mpay/ex$a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/ex$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/ew;

.field b:Lcom/netease/mpay/widget/ae$a;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/netease/mpay/ex$a;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/ex$a;Lcom/netease/mpay/ew;Lcom/netease/mpay/widget/ae$a;ZZ)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ex$a$c;->e:Lcom/netease/mpay/ex$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/ex$a$c;->a:Lcom/netease/mpay/ew;

    iput-object p3, p0, Lcom/netease/mpay/ex$a$c;->b:Lcom/netease/mpay/widget/ae$a;

    iput-boolean p4, p0, Lcom/netease/mpay/ex$a$c;->c:Z

    iput-boolean p5, p0, Lcom/netease/mpay/ex$a$c;->d:Z

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
