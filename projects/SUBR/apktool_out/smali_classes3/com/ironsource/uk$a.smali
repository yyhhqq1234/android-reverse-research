.class Lcom/ironsource/uk$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/uk;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/uk;


# direct methods
.method constructor <init>(Lcom/ironsource/uk;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/uk$a;->a:Lcom/ironsource/uk;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/uk$a;->a:Lcom/ironsource/uk;

    invoke-static {v0}, Lcom/ironsource/uk;->a(Lcom/ironsource/uk;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
