.class Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil$KAUHolder;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final kauInstance:Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;-><init>(Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil$1;)V

    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil$KAUHolder;->kauInstance:Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
