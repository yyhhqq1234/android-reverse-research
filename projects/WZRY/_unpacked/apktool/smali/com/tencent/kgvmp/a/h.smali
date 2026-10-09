.class public final enum Lcom/tencent/kgvmp/a/h;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/kgvmp/a/h;

.field public static final enum FPS:Lcom/tencent/kgvmp/a/h;

.field public static final enum FPSTARGET:Lcom/tencent/kgvmp/a/h;

.field public static final enum GAMERESULT:Lcom/tencent/kgvmp/a/h;

.field public static final enum GAMEVERSION:Lcom/tencent/kgvmp/a/h;

.field public static final enum MODELQUALITY:Lcom/tencent/kgvmp/a/h;

.field public static final enum NETDELAY:Lcom/tencent/kgvmp/a/h;

.field public static final enum PICQUALITY:Lcom/tencent/kgvmp/a/h;

.field public static final enum RESOLUTION:Lcom/tencent/kgvmp/a/h;

.field public static final enum SCENE:Lcom/tencent/kgvmp/a/h;

.field public static final enum SYSTEMINFO:Lcom/tencent/kgvmp/a/h;

.field public static final enum THREADID:Lcom/tencent/kgvmp/a/h;

.field public static final enum VISIBLEPLAYER:Lcom/tencent/kgvmp/a/h;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "GAMEVERSION"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->GAMEVERSION:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "SCENE"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->SCENE:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "FPS"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->FPS:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "MODELQUALITY"

    const-string v2, "5"

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->MODELQUALITY:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "PICQUALITY"

    const-string v2, "6"

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->PICQUALITY:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "VISIBLEPLAYER"

    const/4 v2, 0x5

    const-string v3, "7"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->VISIBLEPLAYER:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "NETDELAY"

    const/4 v2, 0x6

    const-string v3, "8"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->NETDELAY:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "GAMERESULT"

    const/4 v2, 0x7

    const-string v3, "9"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->GAMERESULT:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "SYSTEMINFO"

    const/16 v2, 0x8

    const-string v3, "10"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->SYSTEMINFO:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "FPSTARGET"

    const/16 v2, 0x9

    const-string v3, "11"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->FPSTARGET:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "RESOLUTION"

    const/16 v2, 0xa

    const-string v3, "12"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->RESOLUTION:Lcom/tencent/kgvmp/a/h;

    new-instance v0, Lcom/tencent/kgvmp/a/h;

    const-string v1, "THREADID"

    const/16 v2, 0xb

    const-string v3, "14"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/kgvmp/a/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/kgvmp/a/h;->THREADID:Lcom/tencent/kgvmp/a/h;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/tencent/kgvmp/a/h;

    sget-object v1, Lcom/tencent/kgvmp/a/h;->GAMEVERSION:Lcom/tencent/kgvmp/a/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/kgvmp/a/h;->SCENE:Lcom/tencent/kgvmp/a/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/kgvmp/a/h;->FPS:Lcom/tencent/kgvmp/a/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/kgvmp/a/h;->MODELQUALITY:Lcom/tencent/kgvmp/a/h;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/kgvmp/a/h;->PICQUALITY:Lcom/tencent/kgvmp/a/h;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/kgvmp/a/h;->VISIBLEPLAYER:Lcom/tencent/kgvmp/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/kgvmp/a/h;->NETDELAY:Lcom/tencent/kgvmp/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/kgvmp/a/h;->GAMERESULT:Lcom/tencent/kgvmp/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/kgvmp/a/h;->SYSTEMINFO:Lcom/tencent/kgvmp/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/kgvmp/a/h;->FPSTARGET:Lcom/tencent/kgvmp/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/kgvmp/a/h;->RESOLUTION:Lcom/tencent/kgvmp/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/kgvmp/a/h;->THREADID:Lcom/tencent/kgvmp/a/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/kgvmp/a/h;->$VALUES:[Lcom/tencent/kgvmp/a/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/kgvmp/a/h;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/kgvmp/a/h;
    .locals 1

    const-class v0, Lcom/tencent/kgvmp/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/a/h;

    return-object v0
.end method

.method public static values()[Lcom/tencent/kgvmp/a/h;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/h;->$VALUES:[Lcom/tencent/kgvmp/a/h;

    invoke-virtual {v0}, [Lcom/tencent/kgvmp/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/kgvmp/a/h;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/a/h;->key:Ljava/lang/String;

    return-object v0
.end method
