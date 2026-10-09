.class public final enum Lcom/tencent/kgvmp/f/c;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/kgvmp/f/c;

.field public static final enum PATTERN1:Lcom/tencent/kgvmp/f/c;

.field public static final enum PATTERN2:Lcom/tencent/kgvmp/f/c;


# instance fields
.field private format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/tencent/kgvmp/f/c;

    const-string v1, "PATTERN1"

    const-string/jumbo v2, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v0, v1, v3, v2}, Lcom/tencent/kgvmp/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/f/c;->PATTERN1:Lcom/tencent/kgvmp/f/c;

    new-instance v0, Lcom/tencent/kgvmp/f/c;

    const-string v1, "PATTERN2"

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/kgvmp/f/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/kgvmp/f/c;

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN1:Lcom/tencent/kgvmp/f/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/kgvmp/f/c;->$VALUES:[Lcom/tencent/kgvmp/f/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/kgvmp/f/c;->format:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/kgvmp/f/c;
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/f/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/kgvmp/f/c;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/f/c;->$VALUES:[Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v0}, [Lcom/tencent/kgvmp/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/kgvmp/f/c;

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/f/c;->format:Ljava/lang/String;

    return-object v0
.end method
