.class final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SortedBytesMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
        "+",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
        "keyIndex",
        "",
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
.field final synthetic this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->access$getBytesPerEntry$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;)I

    move-result v0

    mul-int v0, v0, p1

    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->access$getBytesPerKey$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v1, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v1

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-static {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->access$getSortedEntries$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-static {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->access$getBytesPerValue$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;)I

    move-result v4

    iget-object v5, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->access$getLongIdentifiers$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;)Z

    move-result v5

    invoke-direct {p1, v3, v0, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;-><init>([BIIZ)V

    invoke-static {v1, v2, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap$entrySequence$1;->invoke(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1
.end method
