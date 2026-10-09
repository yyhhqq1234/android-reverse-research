.class public final enum Lcom/tencent/kgvmp/a/e;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/kgvmp/a/e;

.field public static final enum APM_KEY:Lcom/tencent/kgvmp/a/e;

.field public static final enum BATTERY_TEMP:Lcom/tencent/kgvmp/a/e;

.field public static final enum CALLBACK_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum CPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum CPU_RATE:Lcom/tencent/kgvmp/a/e;

.field public static final enum DEVICE_CHECK_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum DYNAMIC_SETTING:Lcom/tencent/kgvmp/a/e;

.field public static final enum FPS_AVG:Lcom/tencent/kgvmp/a/e;

.field public static final enum FPS_LEVEL:Lcom/tencent/kgvmp/a/e;

.field public static final enum FPS_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum FPS_REPORT_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum FRAME_MISS_AVG:Lcom/tencent/kgvmp/a/e;

.field public static final enum GPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum HARDWARE_APPLY_TYPE:Lcom/tencent/kgvmp/a/e;

.field public static final enum HARDWARE_APPLY_VALUE:Lcom/tencent/kgvmp/a/e;

.field public static final enum LIGHT_THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum MAP_ID:Lcom/tencent/kgvmp/a/e;

.field public static final enum MATCH_MARK:Lcom/tencent/kgvmp/a/e;

.field public static final enum MATCH_STATE:Lcom/tencent/kgvmp/a/e;

.field public static final enum MOBILE_TYPE:Lcom/tencent/kgvmp/a/e;

.field public static final enum NET_LATENCY_AVG:Lcom/tencent/kgvmp/a/e;

.field public static final enum NET_LATENCY_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum OPEN_ID:Lcom/tencent/kgvmp/a/e;

.field public static final enum OPTCONFIG_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum SCENE_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SCENEID_SUPPORT:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPORT:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_CJ:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_CS:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_DH:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_GS:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_JP:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_TP:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_WL:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_SUPPROT_XH:Lcom/tencent/kgvmp/a/e;

.field public static final enum SDK_TYPE:Lcom/tencent/kgvmp/a/e;

.field public static final enum SOC_TEMP:Lcom/tencent/kgvmp/a/e;

.field public static final enum TEMP_LEVEL:Lcom/tencent/kgvmp/a/e;

.field public static final enum THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum TIME_INIT:Lcom/tencent/kgvmp/a/e;

.field public static final enum TIME_RELATIVE:Lcom/tencent/kgvmp/a/e;

.field public static final enum TIME_REPORT:Lcom/tencent/kgvmp/a/e;

.field public static final enum UNIQUE_ID:Lcom/tencent/kgvmp/a/e;

.field public static final enum UNIQUE_ID2:Lcom/tencent/kgvmp/a/e;

.field public static final enum USED_MEM:Lcom/tencent/kgvmp/a/e;

.field public static final enum USER_COUNT_OPEN:Lcom/tencent/kgvmp/a/e;

.field public static final enum VENDOR_LEVEL:Lcom/tencent/kgvmp/a/e;

.field public static final enum VMP_NUMBER:Lcom/tencent/kgvmp/a/e;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "UNIQUE_ID"

    const-string/jumbo v2, "unique_id"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->UNIQUE_ID:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "UNIQUE_ID2"

    const-string/jumbo v2, "unique_id2"

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->UNIQUE_ID2:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "OPEN_ID"

    const-string v2, "open_id"

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->OPEN_ID:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "VMP_NUMBER"

    const-string/jumbo v2, "vmp_number"

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->VMP_NUMBER:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "MOBILE_TYPE"

    const-string v2, "mobile_type"

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->MOBILE_TYPE:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_TYPE"

    const/4 v2, 0x5

    const-string v3, "sdk_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_TYPE:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "CPU_RATE"

    const/4 v2, 0x6

    const-string v3, "cpu_rate"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->CPU_RATE:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "USED_MEM"

    const/4 v2, 0x7

    const-string/jumbo v3, "used_mem"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->USED_MEM:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "BATTERY_TEMP"

    const/16 v2, 0x8

    const-string v3, "battery_temp"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->BATTERY_TEMP:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SOC_TEMP"

    const/16 v2, 0x9

    const-string v3, "soc_temp"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SOC_TEMP:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "FPS_AVG"

    const/16 v2, 0xa

    const-string v3, "avg_fps"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->FPS_AVG:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "FRAME_MISS_AVG"

    const/16 v2, 0xb

    const-string v3, "avg_frame_miss"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->FRAME_MISS_AVG:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "NET_LATENCY_AVG"

    const/16 v2, 0xc

    const-string v3, "avg_net_latency"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->NET_LATENCY_AVG:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "MAP_ID"

    const/16 v2, 0xd

    const-string v3, "map_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->MAP_ID:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "MATCH_STATE"

    const/16 v2, 0xe

    const-string v3, "match_state"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->MATCH_STATE:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "MATCH_MARK"

    const/16 v2, 0xf

    const-string v3, "match_mark"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->MATCH_MARK:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "VENDOR_LEVEL"

    const/16 v2, 0x10

    const-string/jumbo v3, "vendor_level"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->VENDOR_LEVEL:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "TEMP_LEVEL"

    const/16 v2, 0x11

    const-string/jumbo v3, "temp_level"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->TEMP_LEVEL:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "FPS_LEVEL"

    const/16 v2, 0x12

    const-string v3, "fps_level"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->FPS_LEVEL:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "DYNAMIC_SETTING"

    const/16 v2, 0x13

    const-string v3, "dynamic_setting"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->DYNAMIC_SETTING:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "APM_KEY"

    const/16 v2, 0x14

    const-string v3, "apm_key"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->APM_KEY:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "TIME_RELATIVE"

    const/16 v2, 0x15

    const-string v3, "relative_time"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->TIME_RELATIVE:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "TIME_INIT"

    const/16 v2, 0x16

    const-string v3, "init_time"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->TIME_INIT:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "TIME_REPORT"

    const/16 v2, 0x17

    const-string v3, "report_time"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->TIME_REPORT:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPORT"

    const/16 v2, 0x18

    const-string/jumbo v3, "support"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPORT:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_JP"

    const/16 v2, 0x19

    const-string/jumbo v3, "support1"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_JP:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_CJ"

    const/16 v2, 0x1a

    const-string/jumbo v3, "support2"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CJ:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_DH"

    const/16 v2, 0x1b

    const-string/jumbo v3, "support3"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_DH:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_XH"

    const/16 v2, 0x1c

    const-string/jumbo v3, "support4"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_XH:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_TP"

    const/16 v2, 0x1d

    const-string/jumbo v3, "support5"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_TP:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_WL"

    const/16 v2, 0x1e

    const-string/jumbo v3, "support6"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_WL:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_CS"

    const/16 v2, 0x1f

    const-string/jumbo v3, "support7"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CS:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SUPPROT_GS"

    const/16 v2, 0x20

    const-string/jumbo v3, "support8"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_GS:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SDK_SCENEID_SUPPORT"

    const/16 v2, 0x21

    const-string v3, "scene_support"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SCENEID_SUPPORT:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "SCENE_OPEN"

    const/16 v2, 0x22

    const-string v3, "open_scene"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->SCENE_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "CALLBACK_OPEN"

    const/16 v2, 0x23

    const-string v3, "open_callback"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->CALLBACK_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "THREAD_OPEN"

    const/16 v2, 0x24

    const-string v3, "open_thread"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "LIGHT_THREAD_OPEN"

    const/16 v2, 0x25

    const-string v3, "open_light_thread"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->LIGHT_THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "USER_COUNT_OPEN"

    const/16 v2, 0x26

    const-string v3, "open_user_count"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->USER_COUNT_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "NET_LATENCY_OPEN"

    const/16 v2, 0x27

    const-string v3, "open_net_latency"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->NET_LATENCY_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "CPU_APPLY_OPEN"

    const/16 v2, 0x28

    const-string v3, "open_cpu_apply"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->CPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "GPU_APPLY_OPEN"

    const/16 v2, 0x29

    const-string v3, "open_gpu_apply"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->GPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "FPS_OPEN"

    const/16 v2, 0x2a

    const-string v3, "open_fps"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->FPS_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "FPS_REPORT_OPEN"

    const/16 v2, 0x2b

    const-string v3, "open_fps_report"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->FPS_REPORT_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "DEVICE_CHECK_OPEN"

    const/16 v2, 0x2c

    const-string v3, "open_device_check"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->DEVICE_CHECK_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "OPTCONFIG_OPEN"

    const/16 v2, 0x2d

    const-string v3, "open_optcfg"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->OPTCONFIG_OPEN:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "HARDWARE_APPLY_TYPE"

    const/16 v2, 0x2e

    const-string v3, "apply_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->HARDWARE_APPLY_TYPE:Lcom/tencent/kgvmp/a/e;

    new-instance v0, Lcom/tencent/kgvmp/a/e;

    const-string v1, "HARDWARE_APPLY_VALUE"

    const/16 v2, 0x2f

    const-string v3, "apply_value"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/e;->HARDWARE_APPLY_VALUE:Lcom/tencent/kgvmp/a/e;

    const/16 v0, 0x30

    new-array v0, v0, [Lcom/tencent/kgvmp/a/e;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->UNIQUE_ID:Lcom/tencent/kgvmp/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/kgvmp/a/e;->UNIQUE_ID2:Lcom/tencent/kgvmp/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/kgvmp/a/e;->OPEN_ID:Lcom/tencent/kgvmp/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/kgvmp/a/e;->VMP_NUMBER:Lcom/tencent/kgvmp/a/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/kgvmp/a/e;->MOBILE_TYPE:Lcom/tencent/kgvmp/a/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_TYPE:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/kgvmp/a/e;->CPU_RATE:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/kgvmp/a/e;->USED_MEM:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/kgvmp/a/e;->BATTERY_TEMP:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SOC_TEMP:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/kgvmp/a/e;->FPS_AVG:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/kgvmp/a/e;->FRAME_MISS_AVG:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/kgvmp/a/e;->NET_LATENCY_AVG:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/kgvmp/a/e;->MAP_ID:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/kgvmp/a/e;->MATCH_STATE:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tencent/kgvmp/a/e;->MATCH_MARK:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tencent/kgvmp/a/e;->VENDOR_LEVEL:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tencent/kgvmp/a/e;->TEMP_LEVEL:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tencent/kgvmp/a/e;->FPS_LEVEL:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tencent/kgvmp/a/e;->DYNAMIC_SETTING:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tencent/kgvmp/a/e;->APM_KEY:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/tencent/kgvmp/a/e;->TIME_RELATIVE:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/tencent/kgvmp/a/e;->TIME_INIT:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/tencent/kgvmp/a/e;->TIME_REPORT:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPORT:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_JP:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CJ:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_DH:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_XH:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_TP:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_WL:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CS:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_GS:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SCENEID_SUPPORT:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SCENE_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/tencent/kgvmp/a/e;->CALLBACK_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/tencent/kgvmp/a/e;->THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/tencent/kgvmp/a/e;->LIGHT_THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/tencent/kgvmp/a/e;->USER_COUNT_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/tencent/kgvmp/a/e;->NET_LATENCY_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/tencent/kgvmp/a/e;->CPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/tencent/kgvmp/a/e;->GPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/tencent/kgvmp/a/e;->FPS_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/tencent/kgvmp/a/e;->FPS_REPORT_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/tencent/kgvmp/a/e;->DEVICE_CHECK_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/tencent/kgvmp/a/e;->OPTCONFIG_OPEN:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/tencent/kgvmp/a/e;->HARDWARE_APPLY_TYPE:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/tencent/kgvmp/a/e;->HARDWARE_APPLY_VALUE:Lcom/tencent/kgvmp/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/kgvmp/a/e;->$VALUES:[Lcom/tencent/kgvmp/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/kgvmp/a/e;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/kgvmp/a/e;
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/a/e;

    return-object v0
.end method

.method public static values()[Lcom/tencent/kgvmp/a/e;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/e;->$VALUES:[Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, [Lcom/tencent/kgvmp/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/kgvmp/a/e;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/a/e;->key:Ljava/lang/String;

    return-object v0
.end method
