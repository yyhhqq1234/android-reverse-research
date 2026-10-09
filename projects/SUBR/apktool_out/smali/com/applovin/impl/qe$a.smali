.class Lcom/applovin/impl/qe$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/qe;->setListAdapter(Lcom/applovin/impl/se;Lcom/applovin/impl/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/qe;


# direct methods
.method constructor <init>(Lcom/applovin/impl/qe;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/applovin/impl/qe$a;->a:Lcom/applovin/impl/qe;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/applovin/impl/qe$a;->a:Lcom/applovin/impl/qe;

    invoke-static {v0}, Lcom/applovin/impl/qe;->a(Lcom/applovin/impl/qe;)V

    .line 142
    iget-object v0, p0, Lcom/applovin/impl/qe$a;->a:Lcom/applovin/impl/qe;

    invoke-static {v0, v0}, Lcom/applovin/impl/qe;->a(Lcom/applovin/impl/qe;Landroid/content/Context;)V

    return-void
.end method
