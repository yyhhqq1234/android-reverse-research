.class public final enum Lcom/tencent/kgvmp/a/g;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/kgvmp/a/g;

.field public static final enum COMMOND_ID:Lcom/tencent/kgvmp/a/g;

.field public static final enum COMMOND_RESULT:Lcom/tencent/kgvmp/a/g;

.field public static final enum DEVICE_TEMP:Lcom/tencent/kgvmp/a/g;

.field public static final enum FPS_COUNT_TIME:Lcom/tencent/kgvmp/a/g;

.field public static final enum FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

.field public static final enum FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

.field public static final enum SCENE_SUPPORT:Lcom/tencent/kgvmp/a/g;

.field public static final enum STRATEGY_SUPPORT:Lcom/tencent/kgvmp/a/g;


# instance fields
.field private key:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "FREQUENCY_SIGNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "DEVICE_TEMP"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->DEVICE_TEMP:Lcom/tencent/kgvmp/a/g;

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "FPS_COUNT_TIME"

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->FPS_COUNT_TIME:Lcom/tencent/kgvmp/a/g;

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "FREQUENCY_LEVEL"

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "STRATEGY_SUPPORT"

    invoke-direct {v0, v1, v7, v8}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->STRATEGY_SUPPORT:Lcom/tencent/kgvmp/a/g;

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "SCENE_SUPPORT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->SCENE_SUPPORT:Lcom/tencent/kgvmp/a/g;

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "COMMOND_ID"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->COMMOND_ID:Lcom/tencent/kgvmp/a/g;

    new-instance v0, Lcom/tencent/kgvmp/a/g;

    const-string v1, "COMMOND_RESULT"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/kgvmp/a/g;->COMMOND_RESULT:Lcom/tencent/kgvmp/a/g;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tencent/kgvmp/a/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/kgvmp/a/g;->FREQUENCY_SIGNAL:Lcom/tencent/kgvmp/a/g;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/kgvmp/a/g;->DEVICE_TEMP:Lcom/tencent/kgvmp/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/kgvmp/a/g;->FPS_COUNT_TIME:Lcom/tencent/kgvmp/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/kgvmp/a/g;->FREQUENCY_LEVEL:Lcom/tencent/kgvmp/a/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/kgvmp/a/g;->STRATEGY_SUPPORT:Lcom/tencent/kgvmp/a/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/kgvmp/a/g;->SCENE_SUPPORT:Lcom/tencent/kgvmp/a/g;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/kgvmp/a/g;->COMMOND_ID:Lcom/tencent/kgvmp/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/kgvmp/a/g;->COMMOND_RESULT:Lcom/tencent/kgvmp/a/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/kgvmp/a/g;->$VALUES:[Lcom/tencent/kgvmp/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/kgvmp/a/g;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/kgvmp/a/g;
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/a/g;

    return-object v0
.end method

.method public static values()[Lcom/tencent/kgvmp/a/g;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/g;->$VALUES:[Lcom/tencent/kgvmp/a/g;

    invoke-virtual {v0}, [Lcom/tencent/kgvmp/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/kgvmp/a/g;

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/a/g;->key:I

    return v0
.end method

.method public getKeyStr()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/a/g;->key:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
