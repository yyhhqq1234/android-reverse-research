.class public final enum Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

.field public static final enum _2013022:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

.field public static final enum _HM_1SC:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

.field public static final enum _HM_NOTE_1TD:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

.field public static final enum _MI_1S:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    const-string v1, "_MI_1S"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_MI_1S:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    .line 134
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    const-string v1, "_2013022"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_2013022:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    .line 136
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    const-string v1, "_HM_1SC"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_HM_1SC:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    .line 138
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    const-string v1, "_HM_NOTE_1TD"

    invoke-direct {v0, v1, v5}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_HM_NOTE_1TD:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_MI_1S:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_2013022:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_HM_1SC:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->_HM_NOTE_1TD:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    invoke-virtual {v0}, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$XIAOMI;

    return-object v0
.end method
