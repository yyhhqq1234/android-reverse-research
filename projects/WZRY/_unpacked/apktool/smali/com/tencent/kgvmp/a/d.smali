.class public final enum Lcom/tencent/kgvmp/a/d;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/kgvmp/a/d;

.field public static final enum BLOOM_AREA:Lcom/tencent/kgvmp/a/d;

.field public static final enum BROADCAST_TYPE:Lcom/tencent/kgvmp/a/d;

.field public static final enum COMMOND_ID:Lcom/tencent/kgvmp/a/d;

.field public static final enum CPU_LEVEL:Lcom/tencent/kgvmp/a/d;

.field public static final enum EFFECT_LEVEL:Lcom/tencent/kgvmp/a/d;

.field public static final enum FPS:Lcom/tencent/kgvmp/a/d;

.field public static final enum FPS_TARGET:Lcom/tencent/kgvmp/a/d;

.field public static final enum FRAME_MISS:Lcom/tencent/kgvmp/a/d;

.field public static final enum GPU_LEVEL:Lcom/tencent/kgvmp/a/d;

.field public static final enum HD_MODEL:Lcom/tencent/kgvmp/a/d;

.field public static final enum LIGHT_THREAD_TID:Lcom/tencent/kgvmp/a/d;

.field public static final enum LOAD_CHUNK:Lcom/tencent/kgvmp/a/d;

.field public static final enum MAIN_VERCODE:Lcom/tencent/kgvmp/a/d;

.field public static final enum MODEL_LEVEL:Lcom/tencent/kgvmp/a/d;

.field public static final enum MTR:Lcom/tencent/kgvmp/a/d;

.field public static final enum NET_LATENCY:Lcom/tencent/kgvmp/a/d;

.field public static final enum OPEN_ID:Lcom/tencent/kgvmp/a/d;

.field public static final enum RECORDING:Lcom/tencent/kgvmp/a/d;

.field public static final enum ROLE_OUTLINE:Lcom/tencent/kgvmp/a/d;

.field public static final enum ROLE_STATUS:Lcom/tencent/kgvmp/a/d;

.field public static final enum SCENE:Lcom/tencent/kgvmp/a/d;

.field public static final enum SCENE_TYPE:Lcom/tencent/kgvmp/a/d;

.field public static final enum SERVER_IP:Lcom/tencent/kgvmp/a/d;

.field public static final enum SUB_VERCODE:Lcom/tencent/kgvmp/a/d;

.field public static final enum THREAD_TID:Lcom/tencent/kgvmp/a/d;

.field public static final enum TIME_STAMP:Lcom/tencent/kgvmp/a/d;

.field public static final enum URGENT_SIGNAL:Lcom/tencent/kgvmp/a/d;

.field public static final enum USERS_COUNT:Lcom/tencent/kgvmp/a/d;


# instance fields
.field private key:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "OPEN_ID"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->OPEN_ID:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "MAIN_VERCODE"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->MAIN_VERCODE:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "SUB_VERCODE"

    invoke-direct {v0, v1, v6, v6}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->SUB_VERCODE:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "TIME_STAMP"

    invoke-direct {v0, v1, v7, v7}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->TIME_STAMP:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "SCENE"

    invoke-direct {v0, v1, v8, v8}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->SCENE:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "FPS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "FRAME_MISS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->FRAME_MISS:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "FPS_TARGET"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->FPS_TARGET:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "MODEL_LEVEL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->MODEL_LEVEL:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "EFFECT_LEVEL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->EFFECT_LEVEL:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "HD_MODEL"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->HD_MODEL:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "USERS_COUNT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->USERS_COUNT:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "NET_LATENCY"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->NET_LATENCY:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "RECORDING"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->RECORDING:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "URGENT_SIGNAL"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->URGENT_SIGNAL:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "SERVER_IP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->SERVER_IP:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "ROLE_STATUS"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->ROLE_STATUS:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "CPU_LEVEL"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->CPU_LEVEL:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "GPU_LEVEL"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->GPU_LEVEL:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "COMMOND_ID"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->COMMOND_ID:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "SCENE_TYPE"

    const/16 v2, 0x14

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->SCENE_TYPE:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "LOAD_CHUNK"

    const/16 v2, 0x15

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->LOAD_CHUNK:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "BLOOM_AREA"

    const/16 v2, 0x16

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->BLOOM_AREA:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "MTR"

    const/16 v2, 0x17

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->MTR:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "BROADCAST_TYPE"

    const/16 v2, 0x18

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->BROADCAST_TYPE:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "LIGHT_THREAD_TID"

    const/16 v2, 0x19

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->LIGHT_THREAD_TID:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "THREAD_TID"

    const/16 v2, 0x1a

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->THREAD_TID:Lcom/tencent/kgvmp/a/d;

    new-instance v0, Lcom/tencent/kgvmp/a/d;

    const-string v1, "ROLE_OUTLINE"

    const/16 v2, 0x1b

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/d;->ROLE_OUTLINE:Lcom/tencent/kgvmp/a/d;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/tencent/kgvmp/a/d;

    sget-object v1, Lcom/tencent/kgvmp/a/d;->OPEN_ID:Lcom/tencent/kgvmp/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/kgvmp/a/d;->MAIN_VERCODE:Lcom/tencent/kgvmp/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/kgvmp/a/d;->SUB_VERCODE:Lcom/tencent/kgvmp/a/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/kgvmp/a/d;->TIME_STAMP:Lcom/tencent/kgvmp/a/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/kgvmp/a/d;->SCENE:Lcom/tencent/kgvmp/a/d;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/kgvmp/a/d;->FRAME_MISS:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/kgvmp/a/d;->FPS_TARGET:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/kgvmp/a/d;->MODEL_LEVEL:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/kgvmp/a/d;->EFFECT_LEVEL:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/kgvmp/a/d;->HD_MODEL:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/kgvmp/a/d;->USERS_COUNT:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/kgvmp/a/d;->NET_LATENCY:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/kgvmp/a/d;->RECORDING:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/kgvmp/a/d;->URGENT_SIGNAL:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tencent/kgvmp/a/d;->SERVER_IP:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tencent/kgvmp/a/d;->ROLE_STATUS:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tencent/kgvmp/a/d;->CPU_LEVEL:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tencent/kgvmp/a/d;->GPU_LEVEL:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tencent/kgvmp/a/d;->COMMOND_ID:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tencent/kgvmp/a/d;->SCENE_TYPE:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/tencent/kgvmp/a/d;->LOAD_CHUNK:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/tencent/kgvmp/a/d;->BLOOM_AREA:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/tencent/kgvmp/a/d;->MTR:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/tencent/kgvmp/a/d;->BROADCAST_TYPE:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/tencent/kgvmp/a/d;->LIGHT_THREAD_TID:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/tencent/kgvmp/a/d;->THREAD_TID:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/tencent/kgvmp/a/d;->ROLE_OUTLINE:Lcom/tencent/kgvmp/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/kgvmp/a/d;->$VALUES:[Lcom/tencent/kgvmp/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/kgvmp/a/d;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/kgvmp/a/d;
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/a/d;

    return-object v0
.end method

.method public static values()[Lcom/tencent/kgvmp/a/d;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/d;->$VALUES:[Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, [Lcom/tencent/kgvmp/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/kgvmp/a/d;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/a/d;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/a/d;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
