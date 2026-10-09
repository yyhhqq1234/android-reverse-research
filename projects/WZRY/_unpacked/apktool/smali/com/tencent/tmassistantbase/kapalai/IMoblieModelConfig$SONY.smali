.class public final enum Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

.field public static final enum _LT26I:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

.field public static final enum _LT26II:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

.field public static final enum _MT15I:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

.field public static final enum _S39H:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    const-string v1, "_S39H"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_S39H:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    .line 249
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    const-string v1, "_MT15I"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_MT15I:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    .line 250
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    const-string v1, "_LT26I"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_LT26I:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    .line 251
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    const-string v1, "_LT26II"

    invoke-direct {v0, v1, v5}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_LT26II:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    .line 246
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_S39H:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_MT15I:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_LT26I:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->_LT26II:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;
    .locals 1

    .prologue
    .line 246
    const-class v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    invoke-virtual {v0}, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$SONY;

    return-object v0
.end method
