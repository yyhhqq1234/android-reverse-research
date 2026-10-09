.class public final Lcom/ironsource/ek$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/ironsource/ek$a;",
        "",
        "",
        "placementName",
        "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
        "adFormat",
        "",
        "a",
        "<init>",
        "()V",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/ek$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .locals 2

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/unity3d/mediation/a;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    sget-object v1, Lcom/ironsource/b2$b;->a:Lcom/ironsource/b2$b;

    invoke-static {v0, v1}, Lcom/ironsource/l1$a;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/b2$b;)Lcom/ironsource/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/l1;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object p2

    const-string v0, "SDK is not initialized"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/ironsource/k0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_0
    sget-object v1, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v1}, Lcom/ironsource/jl$b;->d()Lcom/ironsource/ye;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/ye;->x()Lcom/ironsource/af;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/ironsource/af;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/i8;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/i8;->d()Z

    move-result v1

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/i8;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, v1}, Lcom/ironsource/k0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method
