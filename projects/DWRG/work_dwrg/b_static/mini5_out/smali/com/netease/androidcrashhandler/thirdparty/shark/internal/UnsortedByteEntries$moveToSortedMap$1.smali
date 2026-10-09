.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1;
.super Ljava/lang/Object;
.source "UnsortedByteEntries.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/thirdparty/shark/internal/aosp/ByteArrayComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->moveToSortedMap()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/aosp/ByteArrayComparator;",
        "compare",
        "",
        "entrySize",
        "o1Array",
        "",
        "o1Index",
        "o2Array",
        "o2Index",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(I[BI[BI)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->access$getLongIdentifiers$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    mul-int p3, p3, p1

    invoke-static {v0, p2, p3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->access$readLong(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;[BI)J

    move-result-wide p2

    .line 64
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    mul-int p5, p5, p1

    invoke-static {v0, p4, p5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->access$readLong(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;[BI)J

    move-result-wide p4

    .line 63
    invoke-static {p2, p3, p4, p5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    mul-int p3, p3, p1

    invoke-static {v0, p2, p3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->access$readInt(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;[BI)I

    move-result p2

    .line 69
    iget-object p3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$moveToSortedMap$1;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    mul-int p5, p5, p1

    invoke-static {p3, p4, p5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->access$readInt(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;[BI)I

    move-result p1

    .line 68
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    :goto_0
    return p1
.end method
