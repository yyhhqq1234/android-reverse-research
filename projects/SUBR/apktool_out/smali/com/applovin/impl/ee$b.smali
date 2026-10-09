.class final Lcom/applovin/impl/ee$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/applovin/impl/ae;

.field public final b:Lcom/applovin/impl/ae$b;

.field public final c:Lcom/applovin/impl/ee$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/ae;Lcom/applovin/impl/ae$b;Lcom/applovin/impl/ee$a;)V
    .locals 0

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/applovin/impl/ee$b;->a:Lcom/applovin/impl/ae;

    .line 517
    iput-object p2, p0, Lcom/applovin/impl/ee$b;->b:Lcom/applovin/impl/ae$b;

    .line 518
    iput-object p3, p0, Lcom/applovin/impl/ee$b;->c:Lcom/applovin/impl/ee$a;

    return-void
.end method
