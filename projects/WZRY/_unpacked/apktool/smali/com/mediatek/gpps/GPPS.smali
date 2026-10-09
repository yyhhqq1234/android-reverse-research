.class public Lcom/mediatek/gpps/GPPS;
.super Ljava/lang/Object;
.source "GPPS.java"


# static fields
.field public static final CPURT_KEY_CAPACITY:Ljava/lang/String; = "cpu_cap_int"

.field public static final CPURT_KEY_LOADING:Ljava/lang/String; = "cpu_loding_ints"

.field public static final CPURT_KEY_SYS_TLP:Ljava/lang/String; = "sys_tlp_int"

.field public static final CPURT_KEY_THROTTLE:Ljava/lang/String; = "cpu_throttle_ints"

.field public static final CPU_KEY_CLUSTER_NUM:Ljava/lang/String; = "cluster_num_int"

.field public static final CPU_KEY_CPU_DMIPS:Ljava/lang/String; = "cpu_dmips_ints"

.field public static final CPU_KEY_CPU_NUM:Ljava/lang/String; = "cpu_num_ints"

.field public static final CPU_KEY_FREQ_MAX:Ljava/lang/String; = "freq_max_ints"

.field public static final CPU_KEY_FREQ_MIN:Ljava/lang/String; = "freq_min_ints"

.field public static final GET_CPU_CAPABILITY:I = 0x65

.field public static final GET_CPU_RUNTIME_INFO:I = 0x68

.field public static final GET_GPU_CAPABILITY:I = 0x66

.field public static final GET_GPU_RUNTIME_INFO:I = 0x67

.field public static final GPURT_KEY_ALU_URATE:Ljava/lang/String; = "alu_rate_int"

.field public static final GPURT_KEY_BW_URATE:Ljava/lang/String; = "bw_rate_int"

.field public static final GPURT_KEY_GPU_CAPACITY:Ljava/lang/String; = "gpu_cap_int"

.field public static final GPURT_KEY_PIXEL_URATE:Ljava/lang/String; = "pixel_rate_int"

.field public static final GPURT_KEY_TEX_URATE:Ljava/lang/String; = "tex_rate_int"

.field public static final GPURT_KEY_UTILIZATION:Ljava/lang/String; = "gpu_utl_int"

.field public static final GPURT_KEY_VERTEX_URATE:Ljava/lang/String; = "vertex_rate_int"

.field public static final GPU_KEY_ALU:Ljava/lang/String; = "alu_cap_int"

.field public static final GPU_KEY_NAME:Ljava/lang/String; = "name_str"

.field public static final GPU_KEY_TEX:Ljava/lang/String; = "tex_cap_int"

.field public static final GS_KEY_SCN:Ljava/lang/String; = "game_scn_int"

.field public static final LL_KEY_GRAPHICS:Ljava/lang/String; = "ll_graphics_int"

.field public static final LL_KEY_NETWORK:Ljava/lang/String; = "ll_network_int"

.field public static final LL_KEY_TOUCH:Ljava/lang/String; = "ll_touch_int"

.field public static final PHANTOM_KEY_PKT:Ljava/lang/String; = "phantom_pkt_str"

.field public static final RET_STATUS_OK:I = 0x0

.field public static final SET_GAME_SCENARIO:I = 0x1

.field public static final SET_LOW_LATENCY_MODE:I = 0x2

.field public static final SET_PHANTOM_PKT:I = 0x3

.field public static final VERSION:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native gameSDKControl(ILjava/util/HashMap;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method
