.class Lcom/applovin/impl/qe$b$b;
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

    .line 185
    iput-object p1, p0, Lcom/applovin/impl/qe$b$b;->a:Lcom/applovin/impl/qe$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 185
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerTcfInfoListActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/qe$b$b;->a(Lcom/applovin/mediation/MaxDebuggerTcfInfoListActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerTcfInfoListActivity;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/applovin/impl/qe$b$b;->a:Lcom/applovin/impl/qe$b;

    iget-object v0, v0, Lcom/applovin/impl/qe$b;->b:Lcom/applovin/impl/qe;

    invoke-static {v0}, Lcom/applovin/impl/qe;->b(Lcom/applovin/impl/qe;)Lcom/applovin/impl/se;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/se;->s()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/pn;->initialize(Lcom/applovin/impl/sdk/j;)V

    return-void
.end method
