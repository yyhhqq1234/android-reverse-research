.class final enum Lcom/tencent/tdm/system/NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/tdm/system/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tdm/system/NetworkType;

.field public static final enum NETWORK_2G:Lcom/tencent/tdm/system/NetworkType;

.field public static final enum NETWORK_3G:Lcom/tencent/tdm/system/NetworkType;

.field public static final enum NETWORK_4G:Lcom/tencent/tdm/system/NetworkType;

.field public static final enum NETWORK_5G:Lcom/tencent/tdm/system/NetworkType;

.field public static final enum NETWORK_NONE:Lcom/tencent/tdm/system/NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/tencent/tdm/system/NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/tencent/tdm/system/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tencent/tdm/system/NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tencent/tdm/system/NetworkType;

    new-instance v0, Lcom/tencent/tdm/system/NetworkType;

    const-string v1, "NETWORK_NONE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_NONE:Lcom/tencent/tdm/system/NetworkType;

    new-instance v0, Lcom/tencent/tdm/system/NetworkType;

    const-string v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v5}, Lcom/tencent/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_WIFI:Lcom/tencent/tdm/system/NetworkType;

    new-instance v0, Lcom/tencent/tdm/system/NetworkType;

    const-string v1, "NETWORK_2G"

    invoke-direct {v0, v1, v6}, Lcom/tencent/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_2G:Lcom/tencent/tdm/system/NetworkType;

    new-instance v0, Lcom/tencent/tdm/system/NetworkType;

    const-string v1, "NETWORK_3G"

    invoke-direct {v0, v1, v7}, Lcom/tencent/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_3G:Lcom/tencent/tdm/system/NetworkType;

    new-instance v0, Lcom/tencent/tdm/system/NetworkType;

    const-string v1, "NETWORK_4G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_4G:Lcom/tencent/tdm/system/NetworkType;

    new-instance v0, Lcom/tencent/tdm/system/NetworkType;

    const-string v1, "NETWORK_5G"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tencent/tdm/system/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->NETWORK_5G:Lcom/tencent/tdm/system/NetworkType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/tencent/tdm/system/NetworkType;

    sget-object v1, Lcom/tencent/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tencent/tdm/system/NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tdm/system/NetworkType;->NETWORK_NONE:Lcom/tencent/tdm/system/NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tdm/system/NetworkType;->NETWORK_WIFI:Lcom/tencent/tdm/system/NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/tdm/system/NetworkType;->NETWORK_2G:Lcom/tencent/tdm/system/NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/tdm/system/NetworkType;->NETWORK_3G:Lcom/tencent/tdm/system/NetworkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/tdm/system/NetworkType;->NETWORK_4G:Lcom/tencent/tdm/system/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/tdm/system/NetworkType;->NETWORK_5G:Lcom/tencent/tdm/system/NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tdm/system/NetworkType;->$VALUES:[Lcom/tencent/tdm/system/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tdm/system/NetworkType;
    .locals 1

    const-class v0, Lcom/tencent/tdm/system/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tdm/system/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tdm/system/NetworkType;
    .locals 1

    sget-object v0, Lcom/tencent/tdm/system/NetworkType;->$VALUES:[Lcom/tencent/tdm/system/NetworkType;

    invoke-virtual {v0}, [Lcom/tencent/tdm/system/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tdm/system/NetworkType;

    return-object v0
.end method
