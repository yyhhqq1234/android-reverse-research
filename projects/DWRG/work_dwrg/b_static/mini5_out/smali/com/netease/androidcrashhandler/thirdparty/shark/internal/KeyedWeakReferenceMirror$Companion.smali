.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror$Companion;
.super Ljava/lang/Object;
.source "KeyedWeakReferenceMirror.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror$Companion;",
        "",
        "()V",
        "UNKNOWN_LEGACY",
        "",
        "fromInstance",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror;",
        "weakRef",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;",
        "heapDumpUptimeMillis",
        "",
        "(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;Ljava/lang/Long;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstance(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;Ljava/lang/Long;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror;
    .locals 9

    .line 32
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "watchUptimeMillis"

    invoke-virtual {p1, v0, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->getAsLong()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    if-eqz p2, :cond_2

    const-string v1, "retainedUptimeMillis"

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->getAsLong()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v1

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    move-object v8, v1

    const-string p2, "key"

    .line 47
    invoke-virtual {p1, v0, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->readAsJavaString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "description"

    .line 50
    invoke-virtual {p1, v0, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "name"

    .line 51
    invoke-virtual {p1, v0, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object p2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->readAsJavaString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "Unknown (legacy)"

    :goto_2
    move-object v6, p2

    const-string p2, "java.lang.ref.Reference"

    const-string v0, "referent"

    .line 55
    invoke-virtual {p1, p2, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->getHolder()Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.netease.androidcrashhandler.thirdparty.shark.ValueHolder.ReferenceHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ReferenceHolder;

    .line 52
    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/KeyedWeakReferenceMirror;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ReferenceHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object p1
.end method
