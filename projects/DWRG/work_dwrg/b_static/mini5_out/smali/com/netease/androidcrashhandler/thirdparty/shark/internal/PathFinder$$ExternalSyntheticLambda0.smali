.class public final synthetic Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/Pair;

    invoke-static {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->$r8$lambda$KOYDtoxpfJrlirCUR7DiWpdm3UA(Lkotlin/jvm/functions/Function1;Lkotlin/Pair;Lkotlin/Pair;)I

    move-result p1

    return p1
.end method
