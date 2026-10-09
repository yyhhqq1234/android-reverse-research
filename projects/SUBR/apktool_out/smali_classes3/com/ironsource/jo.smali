.class public final Lcom/ironsource/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J(\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J(\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J8\u0010\u000c\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\u0012J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0014R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/ironsource/jo;",
        "",
        "Lcom/ironsource/af$a;",
        "cappingService",
        "",
        "placementName",
        "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
        "adFormat",
        "Lcom/ironsource/s$d;",
        "features",
        "",
        "b",
        "a",
        "c",
        "Lkotlin/Result;",
        "result",
        "Lcom/ironsource/k8;",
        "cappingType",
        "(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;)V",
        "Lcom/ironsource/sk;",
        "Lcom/ironsource/sk;",
        "tools",
        "",
        "Lcom/ironsource/s;",
        "Ljava/util/Map;",
        "adFormatsConfigurations",
        "<init>",
        "(Lcom/ironsource/sk;Ljava/util/Map;)V",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/sk;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/sk;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sk;",
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormatsConfigurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/jo;->a:Lcom/ironsource/sk;

    iput-object p2, p0, Lcom/ironsource/jo;->b:Ljava/util/Map;

    return-void
.end method

.method private final a(Lcom/ironsource/af$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/s$d;)V
    .locals 4

    invoke-virtual {p4}, Lcom/ironsource/s$d;->b()Lcom/ironsource/e8;

    move-result-object p4

    if-eqz p4, :cond_0

    sget-object v0, Lcom/ironsource/k8;->b:Lcom/ironsource/k8;

    new-instance v1, Lcom/ironsource/b8;

    invoke-virtual {p4}, Lcom/ironsource/e8;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4}, Lcom/ironsource/e8;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4}, Lcom/ironsource/e8;->c()Lcom/ironsource/j8;

    move-result-object p4

    invoke-direct {v1, v2, v3, p4}, Lcom/ironsource/b8;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/j8;)V

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/ironsource/af$a;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;Lcom/ironsource/ge;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/jo;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;)V
    .locals 1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ironsource/f8;

    invoke-direct {v0}, Lcom/ironsource/f8;-><init>()V

    invoke-virtual {v0, p4}, Lcom/ironsource/f8;->a(Lcom/ironsource/k8;)I

    move-result p4

    iget-object v0, p0, Lcom/ironsource/jo;->a:Lcom/ironsource/sk;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/ironsource/sk;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final b(Lcom/ironsource/af$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/s$d;)V
    .locals 8

    sget-object v0, Lcom/ironsource/k8;->c:Lcom/ironsource/k8;

    new-instance v7, Lcom/ironsource/b8;

    invoke-virtual {p4}, Lcom/ironsource/s$d;->c()Lcom/ironsource/ea;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/ironsource/ea;->a()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/b8;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/j8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2, p3, v0, v7}, Lcom/ironsource/af$a;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;Lcom/ironsource/ge;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/jo;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;)V

    return-void
.end method

.method private final c(Lcom/ironsource/af$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/s$d;)V
    .locals 4

    invoke-virtual {p4}, Lcom/ironsource/s$d;->e()Lcom/ironsource/yn;

    move-result-object p4

    if-eqz p4, :cond_0

    sget-object v0, Lcom/ironsource/k8;->a:Lcom/ironsource/k8;

    new-instance v1, Lcom/ironsource/b8;

    invoke-virtual {p4}, Lcom/ironsource/yn;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4}, Lcom/ironsource/yn;->b()Ljava/lang/Integer;

    move-result-object p4

    sget-object v3, Lcom/ironsource/j8;->f:Lcom/ironsource/j8;

    invoke-direct {v1, v2, p4, v3}, Lcom/ironsource/b8;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/j8;)V

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/ironsource/af$a;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;Lcom/ironsource/ge;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/jo;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/k8;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/af$a;)V
    .locals 5

    const-string v0, "cappingService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/jo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/s;

    invoke-virtual {v1}, Lcom/ironsource/s;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/s$d;

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/ironsource/jo;->b(Lcom/ironsource/af$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/s$d;)V

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/ironsource/jo;->a(Lcom/ironsource/af$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/s$d;)V

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/ironsource/jo;->c(Lcom/ironsource/af$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/s$d;)V

    goto :goto_0

    :cond_1
    return-void
.end method
