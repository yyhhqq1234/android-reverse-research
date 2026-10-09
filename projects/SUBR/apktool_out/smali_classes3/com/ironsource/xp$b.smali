.class Lcom/ironsource/xp$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/xp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/xp;


# direct methods
.method constructor <init>(Lcom/ironsource/xp;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/xp$b;->a:Lcom/ironsource/xp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/xp$b;->a:Lcom/ironsource/xp;

    invoke-static {v0}, Lcom/ironsource/xp;->a(Lcom/ironsource/xp;)Lcom/ironsource/yp;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/yp;->a()V

    return-void
.end method
