.class Lcom/ironsource/n2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/n2;->c()Lcom/ironsource/tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/n2;


# direct methods
.method constructor <init>(Lcom/ironsource/n2;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/n2$a;->a:Lcom/ironsource/n2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/n2$a;->a:Lcom/ironsource/n2;

    invoke-static {v0}, Lcom/ironsource/n2;->a(Lcom/ironsource/n2;)Lcom/ironsource/cl;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/cl;->a()V

    return-void
.end method
