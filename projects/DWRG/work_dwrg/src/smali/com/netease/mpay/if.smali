.class Lcom/netease/mpay/if;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lcom/netease/mpay/hy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/if;->f:Lcom/netease/mpay/hy;

    iput-object p2, p0, Lcom/netease/mpay/if;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/if;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/if;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/netease/mpay/if;->d:J

    iput-wide p7, p0, Lcom/netease/mpay/if;->e:J

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
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/if;->f:Lcom/netease/mpay/hy;

    iget-object v1, p0, Lcom/netease/mpay/if;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/if;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/if;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/netease/mpay/if;->d:J

    iget-wide v6, p0, Lcom/netease/mpay/if;->e:J

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/hy;->a(Lcom/netease/mpay/hy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method
