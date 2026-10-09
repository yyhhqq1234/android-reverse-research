.class public final Lcom/applovin/impl/eb$a;
.super Lcom/applovin/impl/gb$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/applovin/impl/gb$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/impl/gb$b;
    .locals 0

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/eb$a;->b(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/impl/eb$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/impl/eb$a;
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/gb$b;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/applovin/impl/gb$b;

    return-object p0
.end method

.method public varargs b(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/applovin/impl/eb$a;
    .locals 0

    .line 357
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/gb$b;->a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/applovin/impl/gb$b;

    return-object p0
.end method

.method public c()Lcom/applovin/impl/eb;
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/applovin/impl/gb$b;->a()Lcom/applovin/impl/gb;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/eb;

    return-object v0
.end method
