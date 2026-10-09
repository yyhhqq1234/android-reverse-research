.class Lcom/ironsource/si$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/si;->a(Landroid/app/Activity;Lcom/ironsource/oi;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/la;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/si;


# direct methods
.method constructor <init>(Lcom/ironsource/si;Lcom/ironsource/la;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/si$g;->c:Lcom/ironsource/si;

    iput-object p2, p0, Lcom/ironsource/si$g;->a:Lcom/ironsource/la;

    iput-object p3, p0, Lcom/ironsource/si$g;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ironsource/si$g;->c:Lcom/ironsource/si;

    invoke-static {v0}, Lcom/ironsource/si;->a(Lcom/ironsource/si;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/si$g;->a:Lcom/ironsource/la;

    iget-object v2, p0, Lcom/ironsource/si$g;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/si$g;->c:Lcom/ironsource/si;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/la;Ljava/util/Map;Lcom/ironsource/r9;)V

    return-void
.end method
