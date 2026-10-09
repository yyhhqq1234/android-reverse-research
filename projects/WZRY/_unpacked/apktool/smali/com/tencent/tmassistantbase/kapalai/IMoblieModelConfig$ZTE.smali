.class public final enum Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

.field public static final enum _ZTE_V889D:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    const-string v1, "_ZTE_V889D"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;->_ZTE_V889D:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;->_ZTE_V889D:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    invoke-virtual {v0}, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ZTE;

    return-object v0
.end method
