.class Lcom/applovin/impl/qe$b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/qe$b;->a(Lcom/applovin/impl/kb;Lcom/applovin/impl/cc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/qe$b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/qe$b;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/applovin/impl/qe$b$e;->a:Lcom/applovin/impl/qe$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 242
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/qe$b$e;->a(Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;)V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/applovin/impl/qe$b$e;->a:Lcom/applovin/impl/qe$b;

    iget-object v0, v0, Lcom/applovin/impl/qe$b;->b:Lcom/applovin/impl/qe;

    invoke-static {v0}, Lcom/applovin/impl/qe;->b(Lcom/applovin/impl/qe;)Lcom/applovin/impl/se;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/se;->j()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/qe$b$e;->a:Lcom/applovin/impl/qe$b;

    iget-object v1, v1, Lcom/applovin/impl/qe$b;->b:Lcom/applovin/impl/qe;

    invoke-static {v1}, Lcom/applovin/impl/qe;->b(Lcom/applovin/impl/qe;)Lcom/applovin/impl/se;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/se;->u()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/qe$b$e;->a:Lcom/applovin/impl/qe$b;

    iget-object v2, v2, Lcom/applovin/impl/qe$b;->b:Lcom/applovin/impl/qe;

    invoke-static {v2}, Lcom/applovin/impl/qe;->b(Lcom/applovin/impl/qe;)Lcom/applovin/impl/se;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/se;->s()Lcom/applovin/impl/sdk/j;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/un;->initialize(Ljava/util/List;Ljava/util/List;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method
