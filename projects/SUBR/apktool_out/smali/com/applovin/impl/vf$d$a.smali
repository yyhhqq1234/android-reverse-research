.class Lcom/applovin/impl/vf$d$a;
.super Lcom/applovin/impl/vf$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/vf$d;->a(I)Lcom/applovin/impl/vf$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/impl/vf$d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/vf$d;I)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/applovin/impl/vf$d$a;->b:Lcom/applovin/impl/vf$d;

    iput p2, p0, Lcom/applovin/impl/vf$d$a;->a:I

    invoke-direct {p0}, Lcom/applovin/impl/vf$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/applovin/impl/ec;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/applovin/impl/vf$d$a;->b:Lcom/applovin/impl/vf$d;

    .line 298
    invoke-virtual {v0}, Lcom/applovin/impl/vf$d;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/vf$b;

    iget v2, p0, Lcom/applovin/impl/vf$d$a;->a:I

    invoke-direct {v1, v2}, Lcom/applovin/impl/vf$b;-><init>(I)V

    .line 299
    invoke-static {v0, v1}, Lcom/applovin/impl/wf;->a(Ljava/util/Map;Lcom/applovin/exoplayer2/common/base/Supplier;)Lcom/applovin/impl/ec;

    move-result-object v0

    return-object v0
.end method
