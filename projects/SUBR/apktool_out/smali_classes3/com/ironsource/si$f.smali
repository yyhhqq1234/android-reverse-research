.class Lcom/ironsource/si$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/si;->b(Lcom/ironsource/oi;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/oi;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/si;


# direct methods
.method constructor <init>(Lcom/ironsource/si;Lcom/ironsource/oi;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    iput-object p2, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    iput-object p3, p0, Lcom/ironsource/si$f;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    invoke-virtual {v0}, Lcom/ironsource/oi;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/dg$e;->b:Lcom/ironsource/dg$e;

    :goto_0
    iget-object v1, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v1}, Lcom/ironsource/si;->b(Lcom/ironsource/si;)Lcom/ironsource/ma;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/ma;->a(Lcom/ironsource/dg$e;Lcom/ironsource/oi;)Lcom/ironsource/la;

    move-result-object v1

    new-instance v2, Lcom/ironsource/fg;

    invoke-direct {v2}, Lcom/ironsource/fg;-><init>()V

    iget-object v3, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    invoke-virtual {v3}, Lcom/ironsource/oi;->j()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isbiddinginstance"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    invoke-virtual {v4}, Lcom/ironsource/oi;->m()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isoneflow"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    invoke-virtual {v4}, Lcom/ironsource/oi;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, "demandsourcename"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    invoke-static {v4}, Lcom/ironsource/zi;->a(Lcom/ironsource/oi;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "producttype"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    move-result-object v3

    sget-object v4, Lcom/ironsource/j0;->a:Lcom/ironsource/j0;

    iget-object v5, p0, Lcom/ironsource/si$f;->a:Lcom/ironsource/oi;

    invoke-virtual {v5}, Lcom/ironsource/oi;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/j0;->b(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "custom_c"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/fg;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/fg;

    sget-object v3, Lcom/ironsource/zp;->h:Lcom/ironsource/zp$a;

    invoke-virtual {v2}, Lcom/ironsource/fg;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/kg;->a(Lcom/ironsource/zp$a;Ljava/util/Map;)V

    sget-object v2, Lcom/ironsource/dg$e;->a:Lcom/ironsource/dg$e;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v0}, Lcom/ironsource/si;->a(Lcom/ironsource/si;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v2}, Lcom/ironsource/si;->c(Lcom/ironsource/si;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v3}, Lcom/ironsource/si;->d(Lcom/ironsource/si;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/la;Lcom/ironsource/q9;)V

    iget-object v0, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v0}, Lcom/ironsource/si;->a(Lcom/ironsource/si;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/si$f;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/la;Ljava/util/Map;Lcom/ironsource/q9;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v0}, Lcom/ironsource/si;->a(Lcom/ironsource/si;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v2}, Lcom/ironsource/si;->c(Lcom/ironsource/si;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v3}, Lcom/ironsource/si;->d(Lcom/ironsource/si;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/la;Lcom/ironsource/r9;)V

    iget-object v0, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-static {v0}, Lcom/ironsource/si;->a(Lcom/ironsource/si;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/si$f;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/si$f;->c:Lcom/ironsource/si;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/e;->b(Lcom/ironsource/la;Ljava/util/Map;Lcom/ironsource/r9;)V

    :goto_1
    return-void
.end method
