.class public final enum Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;

    invoke-virtual {v0}, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$MEIZU;

    return-object v0
.end method
