.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;
.super Ljava/lang/Object;
.source "OOMMonitorConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;",
        "",
        "()V",
        "DEFAULT_HEAP_THRESHOLD",
        "",
        "getDEFAULT_HEAP_THRESHOLD",
        "()F",
        "DEFAULT_HEAP_THRESHOLD$delegate",
        "Lkotlin/Lazy;",
        "DEFAULT_THREAD_THRESHOLD",
        "",
        "getDEFAULT_THREAD_THRESHOLD",
        "()I",
        "DEFAULT_THREAD_THRESHOLD$delegate",
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_HEAP_THRESHOLD(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;)F
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;->getDEFAULT_HEAP_THRESHOLD()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDEFAULT_THREAD_THRESHOLD(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;->getDEFAULT_THREAD_THRESHOLD()I

    move-result p0

    return p0
.end method

.method private final getDEFAULT_HEAP_THRESHOLD()F
    .locals 1

    .line 50
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->access$getDEFAULT_HEAP_THRESHOLD$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getDEFAULT_THREAD_THRESHOLD()I
    .locals 1

    .line 59
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->access$getDEFAULT_THREAD_THRESHOLD$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
