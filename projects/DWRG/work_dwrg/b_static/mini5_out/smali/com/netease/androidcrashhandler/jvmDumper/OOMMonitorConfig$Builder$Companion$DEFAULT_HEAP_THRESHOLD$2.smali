.class final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OOMMonitorConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 3

    .line 51
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/utils/SizeUnit$BYTE;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/utils/SizeUnit$BYTE;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/jvmDumper/utils/SizeUnit$BYTE;->toMB(J)F

    move-result v0

    const/high16 v1, 0x43fb0000    # 502.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43760000    # 246.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const v0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_1
    const v0, 0x3f666666    # 0.9f

    .line 55
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
