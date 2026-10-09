.class final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HprofInMemoryIndex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->indexedInstanceSequence()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
        "+",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
        ">;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
        "+",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;",
        "it",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
            ">;)",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;->getFirst()J

    move-result-wide v0

    .line 128
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    .line 129
    new-instance v9, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;

    .line 130
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->access$getPositionSize$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 131
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readId()J

    move-result-wide v5

    .line 132
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->access$getBytesForInstanceSize$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    move-object v2, v9

    .line 129
    invoke-direct/range {v2 .. v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;-><init>(JJJ)V

    .line 134
    invoke-static {v0, v1, v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;->invoke(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1
.end method
