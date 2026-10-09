.class Lcom/ironsource/tk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/kj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/tk;


# direct methods
.method constructor <init>(Lcom/ironsource/tk;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/tk$a;->a:Lcom/ironsource/tk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/tk$a;->a:Lcom/ironsource/tk;

    invoke-static {v0}, Lcom/ironsource/tk;->a(Lcom/ironsource/tk;)Lcom/ironsource/st;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/st;->c(J)V

    iget-object v0, p0, Lcom/ironsource/tk$a;->a:Lcom/ironsource/tk;

    invoke-static {v0}, Lcom/ironsource/tk;->b(Lcom/ironsource/tk;)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/tk$a;->a:Lcom/ironsource/tk;

    invoke-static {v0}, Lcom/ironsource/tk;->a(Lcom/ironsource/tk;)Lcom/ironsource/st;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/st;->b(J)V

    iget-object v0, p0, Lcom/ironsource/tk$a;->a:Lcom/ironsource/tk;

    invoke-static {v0}, Lcom/ironsource/tk;->a(Lcom/ironsource/tk;)Lcom/ironsource/st;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/st;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/tk;->a(Lcom/ironsource/tk;J)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
