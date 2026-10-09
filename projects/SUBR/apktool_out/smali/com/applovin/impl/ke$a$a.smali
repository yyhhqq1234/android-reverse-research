.class Lcom/applovin/impl/ke$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/ke$a;->a(Lcom/applovin/impl/kb;Lcom/applovin/impl/cc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/ke$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/ke$a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/applovin/impl/ke$a$a;->a:Lcom/applovin/impl/ke$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerMultiAdActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/ke$a$a;->a(Lcom/applovin/mediation/MaxDebuggerMultiAdActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerMultiAdActivity;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/applovin/impl/ke$a$a;->a:Lcom/applovin/impl/ke$a;

    iget-object v0, v0, Lcom/applovin/impl/ke$a;->a:Lcom/applovin/impl/je;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/a;->initialize(Lcom/applovin/impl/je;)V

    return-void
.end method
