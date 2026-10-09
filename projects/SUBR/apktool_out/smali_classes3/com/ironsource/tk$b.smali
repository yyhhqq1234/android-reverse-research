.class Lcom/ironsource/tk$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/tk;->b(J)V
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

    iput-object p1, p0, Lcom/ironsource/tk$b;->a:Lcom/ironsource/tk;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/tk$b;->a:Lcom/ironsource/tk;

    invoke-static {v0}, Lcom/ironsource/tk;->d(Lcom/ironsource/tk;)Lcom/ironsource/lifecycle/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/tk$b;->a:Lcom/ironsource/tk;

    invoke-static {v1}, Lcom/ironsource/tk;->c(Lcom/ironsource/tk;)Lcom/ironsource/kj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/kj;)V

    iget-object v0, p0, Lcom/ironsource/tk$b;->a:Lcom/ironsource/tk;

    invoke-static {v0}, Lcom/ironsource/tk;->a(Lcom/ironsource/tk;)Lcom/ironsource/st;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/st;->b()V

    iget-object v0, p0, Lcom/ironsource/tk$b;->a:Lcom/ironsource/tk;

    invoke-static {v0}, Lcom/ironsource/tk;->e(Lcom/ironsource/tk;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
