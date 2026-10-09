.class final Lcom/applovin/impl/ee$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/de;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/applovin/impl/wc;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/ae;Z)V
    .locals 1

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Lcom/applovin/impl/wc;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/wc;-><init>(Lcom/applovin/impl/ae;Z)V

    iput-object v0, p0, Lcom/applovin/impl/ee$c;->a:Lcom/applovin/impl/wc;

    .line 485
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/ee$c;->c:Ljava/util/List;

    .line 486
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/ee$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/applovin/impl/ee$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 987
    iput p1, p0, Lcom/applovin/impl/ee$c;->d:I

    const/4 p1, 0x0

    .line 988
    iput-boolean p1, p0, Lcom/applovin/impl/ee$c;->e:Z

    .line 989
    iget-object p1, p0, Lcom/applovin/impl/ee$c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b()Lcom/applovin/impl/fo;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/applovin/impl/ee$c;->a:Lcom/applovin/impl/wc;

    invoke-virtual {v0}, Lcom/applovin/impl/wc;->i()Lcom/applovin/impl/fo;

    move-result-object v0

    return-object v0
.end method
