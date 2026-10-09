.class final Lcom/ironsource/sc$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sc;-><init>(Lcom/ironsource/vc;Lcom/ironsource/l1;Lcom/ironsource/c1;Lcom/ironsource/hd$b;Lcom/ironsource/u1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/ironsource/t1;",
        "Lcom/ironsource/gd;",
        "Lcom/ironsource/ed;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/ironsource/t1;",
        "adUnitData",
        "Lcom/ironsource/gd;",
        "fullscreenAdUnitListener",
        "Lcom/ironsource/ed;",
        "a",
        "(Lcom/ironsource/t1;Lcom/ironsource/gd;)Lcom/ironsource/ed;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/l1;


# direct methods
.method constructor <init>(Lcom/ironsource/l1;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sc$a;->a:Lcom/ironsource/l1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/t1;Lcom/ironsource/gd;)Lcom/ironsource/ed;
    .locals 2

    const-string v0, "adUnitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/ed;

    iget-object v1, p0, Lcom/ironsource/sc$a;->a:Lcom/ironsource/l1;

    invoke-direct {v0, v1, p1, p2}, Lcom/ironsource/ed;-><init>(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/gd;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/ironsource/t1;

    check-cast p2, Lcom/ironsource/gd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sc$a;->a(Lcom/ironsource/t1;Lcom/ironsource/gd;)Lcom/ironsource/ed;

    move-result-object p1

    return-object p1
.end method
