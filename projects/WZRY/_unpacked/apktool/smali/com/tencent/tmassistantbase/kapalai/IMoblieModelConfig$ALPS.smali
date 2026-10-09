.class public final enum Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

.field public static final enum _R801:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

.field public static final enum _R811:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

.field public static final enum _U701:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    const-string v1, "_R811"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->_R811:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    .line 155
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    const-string v1, "_R801"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->_R801:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    .line 157
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    const-string v1, "_U701"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->_U701:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->_R811:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->_R801:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->_U701:Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;
    .locals 1

    .prologue
    .line 151
    const-class v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->$VALUES:[Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    invoke-virtual {v0}, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tmassistantbase/kapalai/IMoblieModelConfig$ALPS;

    return-object v0
.end method
